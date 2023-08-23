from pytube import YouTube, Playlist
from moviepy.editor import *
import os, platform, shutil, signal

####################################### GLOBALS #######################################
EXIT_STR            = "Quit"
MUSIC_PATH_WINDOWS  = os.path.expanduser('~\Music')
MUSIC_PATH_LINUX    = os.path.expanduser('~/Music')
YT_VIDEO            = None
MAX_ABR = 192
MIN_ABR = 128
ABR_QUALITY_TO_EXPORT = '192k'


####################################### FUNCTIONS #######################################
def move_to_music_folder(file):

    if(platform.system() == 'Linux'):
        splitted_path = file.split('/')
        # /{splitted_path.pop()}
        shutil.move(f"{file}", f"{MUSIC_PATH_LINUX}")
    else:
        shutil.move(f"{file}", f"{MUSIC_PATH_WINDOWS}")

def is_best_abr(best_stream, stream):

    comparing_stream_abr = int(stream.abr.replace('kbps',''))
    comparing_best_stream_abr = int(best_stream.abr.replace('kbps',''))

    if (comparing_stream_abr < MIN_ABR or comparing_stream_abr > MAX_ABR or comparing_stream_abr < comparing_best_stream_abr):
        return False
    return True
    


def mp3_video_download(url):
    """ 
    Download one video in mp3 format and moves it to defaul Music folder
    """
    try:

        YT_VIDEO = YouTube(url)
        print(f'Downloading: {YT_VIDEO.title}')
        
        #Choose better quality audio stream
        streams = YT_VIDEO.streams.filter(type="audio")
        best_stream = streams[0]
        
        for stream in streams:
            if (stream.mime_type == 'audio/mp4' and is_best_abr(best_stream, stream)):
                best_stream = stream
        
        default_filename = best_stream.default_filename

    
            
        video = best_stream.download()
        mp3_filename = default_filename.replace(best_stream.subtype, 'mp3')
        
        # base = os.path.splitext(video)
        # video_in_mp3 = base[0] + '.mp3'
        # os.rename(video, video_in_mp3)

        audio_file = AudioFileClip(default_filename)
        audio_file.write_audiofile(mp3_filename,bitrate= ABR_QUALITY_TO_EXPORT)

        move_to_music_folder(mp3_filename)
        os.remove(video)
        
    except FileExistsError:
        print(f'File already exists')
    except Exception as error:
        print("Exception: ", error)
        
    
    
def mp3_playlist_download(url):
    
    playList = Playlist(url)
    try:
        for video in playList.videos:
            mp3_video_download(video.embed_url)
    except KeyError:
        print(f'URL is not a playlist')    
    
def exitHandler(signum, frame):
    print('\nGood Bye!!')
    exit(0)


####################################### MAIN #######################################

print(f'Paste URL or {EXIT_STR} to exit program')
print(f'Select (1) for individual videos or (2) for playlist')
signal.signal(signal.SIGINT, exitHandler)
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

