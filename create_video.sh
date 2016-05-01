#!/bin/bash

# Execute from your machine

# Copy pictures fro rPI to your machine. You can copy the files in many other ways as well.
# Change rPI IP address, source directory in rPI, destination directory in your machine
rsync -rPa pi@192.168.178.15:/home/pi/dev/Timelapse/public/images/ /home/user/Pictures/Timelapse/Test/

# Move to the folder where the  pictures where copied
cd /home/user/Pictures/Timelapse/Test

# Create a txt file with the list of names of all pictures
ls *.jpg > stills.txt

# Create the video
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o timelapse.mp4 -mf type=jpeg:fps=24 mf://@stills.txt

# Add music
mencoder timelapse.mp4 -o timelapseMusic.mp4 -ovc copy -oac copy -audiofile flyBumblebee.mp3
