from youtube_transcript_api import YouTubeTranscriptApi
from os.path import join

def get_youtube_subtitle(video_id, file_name):
    file_name = join("subtitles", file_name)
    try:
        sub = YouTubeTranscriptApi.get_transcript(video_id)
        print(sub)
        subtitle = []
        count = 1
        for i in sub:
            while "♪" in i["text"]:
                i["text"] = i["text"].replace("♪", "").strip().lower()

            i["text"] = i["text"].replace("  ", " ")
            i["text"] = i["text"].replace('\n', " ")
            if "(" in i['text']:
                open_bracket_index = i["text"].index("(")
                close_bracket_index = i["text"].index(")")
                i["text"] = i["text"][:open_bracket_index] + i["text"][close_bracket_index+1:]
                i["text"] = i["text"].strip()

            start_min = int(i["start"] / 60)
            start_sec = int(i["start"] % 60)
            start_milli_sec = int((i["start"] % 1) * 1000)
            end_min = int((i["start"] + i["duration"]) / 60)
            end_sec = int((i["start"] + i["duration"]) % 60)
            end_milli_sec = int(1000*((i["start"] + i["duration"]) % 1))
            if len(i["text"]) > 0:
                subtitle.append(f"{count}")
                subtitle.append(f"00:00:{start_min:02d}:{start_sec:02d},{start_milli_sec:03d} --> 00:00:{end_min:02d}:{end_sec:02d},{end_milli_sec:03d}")
                subtitle.append(f"{i['text'].strip()}")
                subtitle.append("")
                count += 1

        result = '\n'.join(subtitle)
        with open(file_name, 'w') as f:
            f.write(result)

    except Exception as e:
        print("subtitle not available")


if __name__ == "__main__":
    get_youtube_subtitle("tt2k8PGm-TI", "ZAYN_-_Dusk_Till_Dawn.mp3"[:-4] + ".srt")