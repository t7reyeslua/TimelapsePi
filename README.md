# TimelapsePi
Setup for creating a timelapse camera out of a Raspberry PI

---

## Material

- Raspberry PI
- Raspberry PI camera module

## Prerequisites

- Install latest Raspbian on your rPI
- Execute `sudo raspi-config` to:
  - Enable Raspberry PI camera module
  - Expand the filesystem in the rPI so you can make use of all its storage
- Enable internet connection for your rPI

## Steps

- Clone this repository into the raspberry PI. The scripts assume it is under `/home/pi/dev/`
- Install mencoder: `sudo apt-get install mencoder`
- Install apache: `sudo apt-get install apache2`
- Enable timelapse virtual host:
  - `cp /home/pi/dev/Timelapse/timelapse.conf /etc/apache2/sites-available/timelapse.conf`
  - `sudo a2ensite timelapse.conf`
  - `sudo service apache2 restart`
- Start your timelapse: `./do_timelapse.sh`
- You can follow the progess from any browser. Just go to `http://<your rPI IP>`
- After the timelapse finishes execute from your computer `./create_video.sh`

## Notes

- You can check the content of the scripts for further explanations and to edit some harcoded parameters and paths.
- You can also create a cron task to start the `do_timelapse.sh` on bootup.
- [This] (https://www.raspberrypi.org/learning/timelapse-setup/worksheet/) is another guide with a very similar approach.
