## Install

```sh
sudo apt-get install python3 python3-pip ffmpeg atomicparsley
```
```sh
pip3 install --upgrade yt-dlp
```

## Way of Download File using yt-dlp

```sh
yt-dlp VIDEO_URL
```
```sh
yt-dlp -x --audio-format mp3 VIDEO_URL
```
```sh
yt-dlp -x --audio-format mp3 --yes-playlist PLAYLIST_URL
```
```sh
yt-dlp -f best -i --yes-playlist PLAYLIST_URL
```
