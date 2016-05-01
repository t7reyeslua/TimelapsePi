#!/bin/bash

# Parameter explanation:
# 1.-  Size: 1920*1080
# 2.-  Horizontal flip
# 3.-  Sharpness 40%
# 4.-  AWB mode: auto
# 5.-  Metering: average
# 6.-  Verbose
# 7.-  Quality: 100%
# 8.-  Replace frame number in file name with DateTime
# 9.-  Output file
# 10.- Time: 10800000ms = 3h
# 11.- Timelapse: Every 20000ms = 20s
raspistill -w 1920 -h 1080 -hf -sh 40 -awb auto -mm average -v -q 100 -dt -o /home/pi/dev/Timelapse/public/images/a%04d.jpg -t 10800000 -tl 20000
