import psycopg2
from os import listdir
from os.path import isfile, join, exists, abspath

SONGS_PATH = abspath("../../assets/speaker/songs")
ASSETS = abspath("../../assets/speaker")
LIST_OF_SONGS = []


def all_songs() -> list:
    if exists(SONGS_PATH):
        list_of_songs_files = [f for f in listdir(SONGS_PATH) if isfile(join(SONGS_PATH, f)) and f[-3:] == "mp3"]
        for song in list_of_songs_files:
            song_attributes = song[:-4].split('_-_')
            artist, title = song_attributes

            song_ele = {"artist": artist.strip(), "title": title.strip().split('.')[0], "file_name": song}
            LIST_OF_SONGS.append(song_ele)
    else:
        return LIST_OF_SONGS
    return LIST_OF_SONGS


def save_list_of_songs(song_list):
    with open(join(ASSETS, "list_of_songs.txt"), "w") as f:
        for ele in song_list:
            title = ele["title"].replace('_', ' ')
            artist = ele["artist"].replace('_', ' ')
            location = ele["file_name"]
            f.write(title + "--" + artist + "--" + location + "\n")


def add_songs_to_database():
    conn = psycopg2.connect(database="bumblebee", user='mohit', password="Hidden@mj123")
    cursor = conn.cursor()
    try:

        with open(join(ASSETS, "list_of_songs.txt"), 'r') as f:
            for i in f:
                title, artist, file_name = i.strip().split('--')
                recs = None
                if recs is None:
                    query = f"""INSERT INTO speaker_songs (title, artist, file_name) VALUES (%s,%s,%s)"""
                    vals = (title, artist, file_name)
                    cursor.execute(query, vals)
                    conn.commit()

    finally:
        if conn:
            cursor.close()
            conn.close()


if __name__ == "__main__":
    add_songs_to_database()
