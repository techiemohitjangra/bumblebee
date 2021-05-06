from pydub import AudioSegment
from pydub.silence import split_on_silence
from os import listdir,rename, mkdir
from os.path import isfile,join,exists
import speech_recognition as sr
import subprocess


SONGS_VOCALS_ONLY = '../../assets/speaker/songs_vocals_only'
OUTPUT = "../../assets/speaker/song_chunks"
PHRASES = "../../assets/speaker/phrases"

def split_audio_file_on_silence():
    files = [f for f in listdir(SONGS_VOCALS_ONLY)]
    
    for f in files:
        sound_file = AudioSegment.from_mp3(join(SONGS_VOCALS_ONLY, f, 'vocals.wav'))
        audio_chunks = split_on_silence(sound_file, min_silence_len=1000, silence_thresh=-16)
        for i, chunk in enumerate(audio_chunks):
            out_file = join(OUTPUT, f, f"chunk{i}.mp3")
            print(f'exporting {out_file}')
            out_folder = join(OUTPUT,f)
            if not exists(out_folder):
                make_out_folder = subprocess.run(['mkdir', out_folder])
            chunk.export(out_file, format='mp3')
            # rename_chunk_with_phrase(out_file, f)


def rename_chunk_with_phrase(out_file, f):
    r = sr.Recognizer()
    audio_chunk = sr.AudioFile(out_file)
    with audio_chunk as source:
        audio_file = r.record(source)
    result = r.recognize_google(audio_file)
    rename(src=out_file,dst=join(PHRASES,f,result[0].replace(" ","_")))



if __name__ == "__main__":
    # split_audio_file_on_silence()
    recon('../../assets/speaker/songs/audio.wav')
