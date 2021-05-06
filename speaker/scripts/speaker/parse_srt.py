from os import listdir
from os.path import isfile, join
from termcolor import colored

SUBTITLE_PATH = "../../assets/speaker/subtitles"

def save_list_of_subs():
    with open("../../assets/speaker/subtitles/list_of_subs.txt", 'w') as f:
        f.write("\n".join(files))


def parse(file):
    ends_with_end_line = False
    new_list = []
    with open(file, 'r') as f:
        lines = [line for line in f]
        if lines[0][-1:] == "\n":
            ends_with_end_line = True

        # print(lines[0][-2].isnumeric())
        if lines[0][-2].isnumeric() and len(lines[0]) < 5:
            if int(lines[0][-2]) == 0:
                index = 0
                while index < len(lines):
                    if index == 0:
                        lines[index] = str(int(lines[index][-2]) + 1) + "\n"
                    else:
                        lines[index] = str(int(lines[index][:-1]) + 1) + "\n"
                    index += 4
        else:
            index = 0
            while index < len(lines):
                new_list.append(str(index+1) + "\n")
                new_list.append(lines.pop(0))
                while lines[0][0:2] != "00":
                    new_list.append(lines.pop(0))
                index += 1
        if len(new_list) > 0:
            lines = new_list

        for i in range(len(lines)-1):
            if lines[i][0].isalpha() and lines[i+1] != "\n":
                lines[i].replace("\n", " ")

    # print(colored(file, 'green'))
    # if ends_with_end_line:
    #     print("".join(lines))

    with open(file, 'w') as f:
        if ends_with_end_line:
            f.write("".join(lines))

        if not ends_with_end_line:
            f.write("\n".join(lines))


if __name__ == "__main__":
    # file = "Avicii_-_Wake_Me_Up.srt"
    # print(colored(file, "red"))
    # parse(file)

    files = [file for file in listdir(SUBTITLE_PATH) if isfile(join('../../assets/speaker/subtitles', file)) and file[-3:] == "srt"]
    for file in files:
        print(colored(file, "red"))
        parse(join(SUBTITLE_PATH, file))
    save_list_of_subs()