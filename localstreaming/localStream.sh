#!/bin/bash

# Run the initial ffmpeg command for half a minute
#timeout 30 ffmpeg -thread_queue_size 512 -f v4l2 -video_size 640x480 -framerate 30 -i /dev/video2 -thread_queue_size 1024 -f alsa -ac 1 -ar 44100 -i hw:1,0 \
 #   -vcodec libx264 -preset ultrafast -tune zerolatency \
  #  -c:a aac -b:a 128k \
   # -async 1 \
    #-f flv "rtmp://10.147.20.196:1935/live/test"

# Enter the loop
while true
do
    ffmpeg -thread_queue_size 512 -f v4l2 -video_size 640x480 -framerate 30 -i /dev/video2 -thread_queue_size 1024 -f alsa -ac 1 -ar 44100 -i hw:1,0 \
    -vcodec libx264 -preset ultrafast -tune zerolatency \
    -c:a aac -b:a 128k \
    -async 1 \
    -f flv "rtmp://10.147.20.196:1935/live/test"
done
