from django.shortcuts import render
from django.http import HttpResponse, FileResponse
import os
from os.path import join, abspath
from .models import Songs, Phrases, Contact
from django.db.models import Max
from .scripts.speaker import add_songs_to_database, add_phrases_to_database
from pydub import AudioSegment
from django.conf import settings


ASSETS = abspath("speaker/assets/speaker")
MAX_PHRASE_LENGTH = int(Phrases.objects.all().aggregate(Max('words'))['words__max'])
TEMP = abspath(join("speaker/assets/speaker", "temp"))


# Create your views here.
def index(request):
    query_set_songs = Songs.objects.all()
    query_set_phrases = Phrases.objects.all()
    if len(query_set_songs) == 0 or query_set_songs is None:
        add_songs_to_database.save_list_of_songs(add_songs_to_database.all_songs())
        add_songs_to_database.add_songs_to_database()

    if len(query_set_phrases) == 0 or query_set_phrases is None:
        add_phrases_to_database.add_all_phrase_to_database()

    return render(request, "speaker/index.html")


def join_mp3(*args):
    output = None
    for song, chunk in args[0]:
        if output is None:
            output = AudioSegment.from_mp3(abspath(join(ASSETS, f"song_chunks/{song}/{chunk}")))
        else:
            output += AudioSegment.from_mp3(abspath(join(ASSETS, f"song_chunks/{song}/{chunk}")))

    if os.path.exists(join(ASSETS, "temp/output.mp3")):
        os.remove(join(ASSETS, "temp/output.mp3"))
    output_file = output.export(join(TEMP, "output.mp3"))
    return output_file.name


def text_input(request):
    if request.method == "POST":
        user_input = request.POST["user-input"].strip().lower()
        phrases = []
        words = user_input.split()
        mp3s = []

        while len(words) > 0:
            if len(words) >= MAX_PHRASE_LENGTH:
                max_substring_length = int(MAX_PHRASE_LENGTH)
            else:
                max_substring_length = len(words)

            for i in range(int(max_substring_length)):
                sub_string = " ".join(words[:max_substring_length - i]).strip()
                query = Phrases.objects.filter(phrase=sub_string)
                if query is not None and len(query) != 0:
                    phrases.append(query[0])
                    words = words[len(query[0].phrase.strip().split()):]
                    break
        
        for p in phrases:
            q = Songs.objects.filter(title=p.song)
            if len(q) > 0:
                file_name = q[0].file_name

            mp3s.append((file_name, p.audio))
        
        output = join_mp3(mp3s)

    return render(request, "speaker/output.html", context={
        "output": join(settings.MEDIA_URL, "temp/output.mp3"),
        "phrases": phrases
    })



def contact_email(request):
    if request.method == "POST":
        message = request.POST['message-box']
        email_id = request.POST.get("email-address", False)
        full_name = request.POST["full-name"]
        obj = Contact(email=email_id, full_name=full_name, message=message)
        obj.save()
    return render(request, "speaker/index.html")
