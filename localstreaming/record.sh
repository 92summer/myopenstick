#!/bin/bash

while true
do
    ffmpeg -i "rtmp://10.147.20.196:1935/live/test" -c copy -f segment -segment_time 30 -segment_format mp4 -segment_wrap 120 "./record/out%01d.mp4"
done
