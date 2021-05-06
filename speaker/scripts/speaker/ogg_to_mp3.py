from os.path import exists, isfile, join
from os import listdir, system, rename


SONGS_PATH = "../../assets/speaker/songs"

# [rename(join(SONGS_PATH, f), join(SONGS_PATH, f).replace(' ', '_')) for f in listdir(SONGS_PATH) if isfile(join(SONGS_PATH, f)) and f[-3:] == "ogg"]
if exists(SONGS_PATH):
    list_of_songs = [i for i in listdir(SONGS_PATH) if isfile(join(SONGS_PATH, i)) and i[-3:] == 'ogg']
    print(list_of_songs)


for song in list_of_songs:
    system(f"ffmpeg -i {join(SONGS_PATH,song)} -acodec libmp3lame {join(SONGS_PATH,song[:-3] + 'mp3')}")

