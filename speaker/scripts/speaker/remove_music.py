from django.conf  import settings
import os 
from os import listdir
from os.path import isfile, join
import subprocess


SOURCE_PATH = "../../assets/speaker/songs"
OUTPUT_PATH = "../../assets/speaker/songs_vocals_only"

if os.path.exists(SOURCE_PATH):

    print(SOURCE_PATH)
    try:
        songs_list = [f for f in listdir(SOURCE_PATH) if isfile(join(SOURCE_PATH, f)) and f[-3:] == "mp3"]
        for i in songs_list:
            split = subprocess.run(['sudo', 'spleeter', 'separate', join(SOURCE_PATH, i), '-o', OUTPUT_PATH])
        
    except Exception as e:
        print(e)