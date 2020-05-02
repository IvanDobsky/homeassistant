#!/bin/bash
# start mjpg-streamer

echo "...Starting mjpg-streamer..."
#change directory
cd /home/pi/mjpg-streamer/mjpg-streamer-experimental/
#start streamer as daemon resolution 1280x720 fps 30
/usr/local/bin/mjpg_streamer -b -i "input_uvc.so -r 1280x720 -d /dev/video0 -f 30" -o "output_http.so -p 8080 -w /usr/local/share/mjpg-streamer/www"
