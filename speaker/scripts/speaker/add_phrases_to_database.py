import psycopg2
from os import listdir
from os.path import isfile, join, abspath
from itertools import groupby
from collections import namedtuple

ASSETS = abspath("../../assets/speaker")
SUBTITLE_PATH = join(ASSETS, "subtitles")


def add_phrase_to_database(file):
    try:
        conn = psycopg2.connect(database="bumblebee", user='mohit', password="Hidden@mj123")
    except Exception as e:
        return "Could not establish connection with database" + str(e)

    cursor = conn.cursor()

    try:
        with open(file) as f:
            res = [list(g) for b, g in groupby(f, lambda x: bool(x.strip())) if b]
            Subtitle = namedtuple('Subtitle', 'number start end content song')
            subs = []
            for sub in res:
                if len(sub) >= 3:  # not strictly necessary, but better safe than sorry
                    sub = [x.strip() for x in sub]
                    number, start_end, *content = sub  # py3 syntax
                    start, end = start_end.split(' --> ')
                    subs.append(Subtitle(number, start.replace(',', "."), end.replace(",", '.'), content[0].lower(), file.split('/')[-1][:-4]))
            for i in subs:
                number, start, end, content, song = i
                words = len(content.strip().split())
                audio = str(number) + '.mp3'
                print(number, start, end, content, song, words, audio)
    
                query = f"""INSERT INTO speaker_phrases (phrase, song, start_time, end_time, audio, words) VALUES (%s,%s,%s,%s,%s,%s)"""

                vals = (content, song.split("_-_")[1].replace("_", " "), start[-12:], end[-12:], audio, words)
                cursor.execute(query, vals)

        conn.commit()
    finally:
        if conn:
            cursor.close()
            conn.close()


def add_all_phrase_to_database():
    LIST_OF_SUBTITLE_FILES = [f for f in listdir(SUBTITLE_PATH) if isfile(join(SUBTITLE_PATH, f)) and f[-3:] == 'srt']

    for file in LIST_OF_SUBTITLE_FILES:
        add_phrase_to_database(join(SUBTITLE_PATH, file))


if __name__ == "__main__":
    add_all_phrase_to_database()