# ffmpeg

## Add music-layer to existing video

```ffmpeg -i input_video.mp4 -i input_audio.m4a -map 0:v -map 1:a -c:v copy -shortest output.mp4```
