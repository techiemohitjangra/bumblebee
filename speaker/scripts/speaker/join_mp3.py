from pydub import AudioSegment


def join_mp3(output_destination, *args):
    output = None
    for i in args:
        if output is None:
            output = AudioSegment.from_mp3(i)
        else:
            output += AudioSegment.from_mp3(i)

    output.export(output_destination)


