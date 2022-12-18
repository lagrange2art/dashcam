#!/bin/bash

echo start_dashcam

# remove files older than 3 days
#find /home/pi/Desktop -type f -iname '*.flv' -mtime +3 -exec rm {} \;

# run delete protocol
./removeold.sh

# start dashcam service
#sudo systemctl start dashcam
./dashcam.sh
