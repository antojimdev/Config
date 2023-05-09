from pytube import YouTube, Playlist
import os, platform, shutil, signal

####################################### VARIABLES #######################################
EXIT_STR            = "Quit"
MUSIC_PATH_WINDOWS  = os.path.expanduser('~\Music')
MUSIC_PATH_LINUX    = os.path.expanduser('~/Music')
YT_VIDEO            = None


####################################### FUNCTIONS #######################################
def move_to_music_folder(file):

    if(platform.system() == 'Linux'):
        splitted_path = file.split('/')
        # /{splitted_path.pop()}
        shutil.move(f"{file}", f"{MUSIC_PATH_LINUX}")
    else:
        shutil.move(f"{file}", f"{MUSIC_PATH_WINDOWS}")

def mp3_video_download(url):
    """ 
    Download one video in mp3 format and moves it to defaul Music folder
    """
    
    YT_VIDEO = YouTube(url)
    print(f'Downloading: {YT_VIDEO.title}')
    
    #Choose better quality audio stream
    audio_streams = YT_VIDEO.streams.filter(type="audio")
    max_abr = "0"
    better_stream = None
    for stream in audio_streams:
        if stream.abr > max_abr:
            better_stream = stream
    print(f'{better_stream}')
            
    video = better_stream.download()
    base= os.path.splitext(video)
    video_in_mp3 = base[0] + '.mp3'
    
    try:
        os.rename(video, video_in_mp3)
        move_to_music_folder(video_in_mp3)
    except FileExistsError:
        print(f'File already exists')
    except Exception:
        os.remove(video_in_mp3)
        
    
    
def mp3_playlist_download(url):
    
    playList = Playlist(url)
    try:
        for video in playList.videos:
            mp3_video_download(video.embed_url)
    except KeyError:
        print(f'URL is not a playlist')    
    
def handler(signum, frame):
    print('\nGood Bye!!')
    exit(0)


####################################### MAIN #######################################

print(f'Paste URL or {EXIT_STR} to exit program')
print(f'Select (1) for individual videos or (2) for playlist')
signal.signal(signal.SIGINT, handler)
selection = input()
match selection:
    case "1":
        while True:
            url = str(input('URL: '))
            if url.casefold() == EXIT_STR.casefold():
                break;
            mp3_video_download(url)
            
    case "2":
        while True:
            url = str(input('URL: '))
            if url.casefold() == EXIT_STR.casefold():
                break;
            mp3_playlist_download(url)
    case _:
        print(f'Input not valid')


print("Done")

