from pytube import YouTube
import os, platform, shutil

### VARIABLES
MUSIC_PATH              = os.path.expanduser('~\Music')

### FUNCTIONS
def video_download(url):
    """ 
    Download the video and move it to music folder 
    Arguments:
        url:        youtube video url
        sys_os:     OS running script
    """
    yt = YouTube(url)
    video = yt.streams.filter(only_audio=True).first()
    downloaded_file = video.download()
    base, ext = os.path.splitext(downloaded_file)
    new_file = base + '.mp3'
    # print(f"{MUSIC_PATH}")
    os.rename(downloaded_file, new_file)
    shutil.move(f"{new_file}", f"{MUSIC_PATH}")
    


############# MAIN #############
print("To STOP the program: Ctrl+C or exit")

while True:
    url = str(input('url: '))
    if url == "exit":
        break;
    video_download(url)

print("Done")



