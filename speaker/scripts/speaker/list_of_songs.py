import os
from os import listdir
from os.path import isfile, join, exists


def all_songs() -> list:
    if exists(SONGS_PATH):
        list_of_songs_files = [f for f in listdir(SONGS_PATH) if isfile(join(SONGS_PATH, f)) and f[-3:] == "mp3"]
        for song in list_of_songs_files:
            song_attributes = song[:-4].split('_-_')
            artist, title = song_attributes

            song_ele = {"artist": artist.strip(), "title": title.strip().split('.')[0]}
            LIST_OF_SONGS.append(song_ele)
    else:
        return LIST_OF_SONGS
    return LIST_OF_SONGS


def save_list_of_songs(destination=""):
    global LIST_OF_SONGS
    with open(destination, "w") as f:
        for ele in LIST_OF_SONGS:
            title = ele["title"].replace('_' , ' ')
            artist = ele["artist"].replace('_' , ' ')
            f.write(title + "--" + artist + "\n")


if __name__ == "__main__":
    SONGS_PATH = "../../assets/speaker/songs"
    if os.path.exists(SONGS_PATH):
        LIST_OF_SONGS = []
        LIST_OF_SONGS = all_songs()
        save_list_of_songs('list_of_songs.txt')