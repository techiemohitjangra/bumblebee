from django.shortcuts import render
from django.http import HttpResponse, FileResponse
import os
from os.path import join, abspath
from .models import Songs, Phrases, Contact
from django.db.models import Max
from .scripts.speaker import add_songs_to_database, add_phrases_to_database
from pydub import AudioSegment
from django.conf import settings
import subprocess

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


    if os.path.exists(join(TEMP, "output.mp3")):
        os.remove(join(TEMP, "output.mp3"))

    return render(request, "speaker/index.html")


def join_mp3(*args):
    if len(args) == 0:
        return "0"
    output = None
    for song, chunk, action in args[0]:
        if song is None and chunk is None:
            if output is None:
                if "silence" in action or action == "silence":
                    output = AudioSegment.silent(1000)
            else:
                if "silence" in action or action == "silence":
                    output += AudioSegment.silent(1000)
        else:
            if output is None:
                output = AudioSegment.from_mp3(abspath(join(ASSETS, f"song_chunks/{song}/{chunk}")))
            else:
                output += AudioSegment.from_mp3(abspath(join(ASSETS, f"song_chunks/{song}/{chunk}")))

    if os.path.exists(join(TEMP, "output.mp3")):
        subprocess.Popen(f"rm -rf {abspath(join(TEMP,'output.mp3'))}")

    if os.path.exists(join(TEMP, "output.mp3")):
        os.remove(join(TEMP, "output.mp3"))

    if output:
        output_file = output.export(join(TEMP, f"output.mp3"))
        return output_file.name
    else:
        return None


def text_input(request):
    if request.method == "POST":
        user_input = request.POST["user-input"].strip().lower()
        if user_input == "":
            return render(request, "speaker/index.html")
        action = str(request.POST["action-not-found"]).strip()
        phrases = []
        words = user_input.split()
        mp3s = []
        not_found = []
        found_all = bool()

        while len(words) > 0:
            if len(words) >= MAX_PHRASE_LENGTH:
                max_substring_length = int(MAX_PHRASE_LENGTH)
            else:
                max_substring_length = len(words)

            for i in range(int(max_substring_length)):
                w = max_substring_length - i
                sub_string = " ".join(words[:w]).strip()
                # if len(sub_string.split()) != 1:
                query = Phrases.objects.filter(phrase=sub_string)
                if query is not None and len(query) != 0 :
                    phrases.append((query[0], True, action))
                    words = words[len(query[0].phrase.strip().split()):]
                    break
                if query is None or len(query) == 0 and w == 1:
                    word = sub_string.strip().split()[0]
                    not_found.append(word)
                    phrases.append((Phrases(phrase=word.strip()), False, action))
                    words = words[1:]
                    break

        for p, found, action in phrases:
            if found:
                q = Songs.objects.filter(title=p.song)
                if len(q) > 0:
                    file_name = q[0].file_name

                mp3s.append((file_name, p.audio, action))
            else:
                mp3s.append((None, None, action))

        if os.path.exists(join(TEMP, "output.mp3")):
            os.remove(join(TEMP, "output.mp3"))

        output = join_mp3(mp3s)

        if output is None or len(not_found) == len(phrases):
            result = None
        else:
            result = join(settings.MEDIA_URL, "temp/output.mp3")


        if len(not_found) != 0:
            found_all = False
        else:
            found_all = True


    return render(request, "speaker/output.html", context={
        "output": result,
        "phrases": phrases,
        "found_all" : found_all,
        "not_found": not_found,
    })



def contact_email(request):
    if request.method == "POST":
        message = request.POST['message-box']
        email_id = request.POST.get("email-address", False)
        full_name = request.POST["full-name"]
        obj = Contact(email=email_id, full_name=full_name, message=message)
        obj.save()
    return render(request, "speaker/index.html")
