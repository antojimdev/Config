from pytube import YouTube
import os, platform, shutil

### VARIABLES
MUSIC_PATH_WINDOWS  = os.path.expanduser('~\Music')
MUSIC_PATH_LINUX    = os.path.expanduser('~/Music')
YT_VIDEO            = None

### FUNCTIONS
def mp3_format_video_download(url):
    """ 
    Download the video and move it to music folder 
    Arguments:
        url:        youtube video url
        sys_os:     OS running script
    """
    YT_VIDEO = YouTube(url)
    # video = YT_VIDEO.streams.filter(only_audio=True).first()
    video = YT_VIDEO.title
    # downloaded_file = video.download()
    # base= os.path.splitext(downloaded_file)
    # new_file = base + '.mp3'
    # os.rename(downloaded_file, new_file)
    # print(f"{new_file}")
    print(f"{video}")
    
    
def move_to_music_folder(file):
    if(platform.system() == 'Linux'):
        splitted_path = file.split('/')
        # /{splitted_path.pop()}
        shutil.move(f"{file}", f"{MUSIC_PATH_LINUX}")
    else:
        shutil.move(f"{file}", f"{MUSIC_PATH_WINDOWS}")


############# MAIN #############
print("To STOP the program type exit")

while True:
    url = str(input('url: '))
    if url == "exit":
        break;
    mp3_format_video_download(url)

print("Done")



