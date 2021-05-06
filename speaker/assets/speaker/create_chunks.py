import psycopg2
import os
from os.path import join, isfile, exists

def create_chunk(id, phrase, words,song, start, end, chunk):
    SONG_CHUNKS = "song_chunks"
    songs = [f for f in os.listdir("songs") if isfile(join("songs", f)) and f[-3:] == "mp3"]
    song_no_space = song.replace(" ", "_")
    for i in songs:
        if song_no_space in i:
            if not exists(join(SONG_CHUNKS,i)):
                os.mkdir(join(SONG_CHUNKS,i))
            os.system(f"ffmpeg -ss {start[-12:]} -to {end[-12:]} -i {'songs/'+ i} {join(SONG_CHUNKS,i,chunk)}")


if __name__ == "__main__":
    conn = psycopg2.connect(database="bumblebee", user='mohit', password="Hidden@mj123")
    conn.autocommit = True

    cursor = conn.cursor()

    query = "SELECT * FROM speaker_phrases"
    cursor.execute(query)

    x = cursor.fetchall()
    for i in x:
        create_chunk(*i)

    if conn:
        cursor.close()
        conn.close()


