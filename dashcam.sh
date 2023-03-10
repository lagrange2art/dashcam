#!/bin/bash

echo dashcam_is_it_finally_working
# set variable form the date when=$(date)

# make sure dashcam.log is present 
touch dashcam.log

# mv the current video to the same name but with the date added  
mv dashcam.flv $(date +%F-%H:%M).dashcam.flv

# log to dashcam.log every time the service is started 
echo "Started at: $(date)" >> dashcam.log

# record at 1024x760 with a Desktop preview window of 640x480, pipe to ffmpeg and output dashcam.flv 
raspivid -t 0 -w 1024 -h 760 -fps 25 -b 5000000 -p 0,0.640,480 -vf -o - | ffmpeg -i - -vcodec copy -an -f flv -r 25 -pix_fmt yuv420p dashcam.flv -y

