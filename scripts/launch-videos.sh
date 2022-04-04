#!/bin/bash
local choice 
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED PACKS DOWNLOAD MENU " \
      --ok-button Download --cancel-button Back \
      --menu " PRESS A/ENTER TO DOWNLOAD & APPLY VIDEOS" 30 70 50 \
       1 "Devils Videos"/
       2 "Retro TV" /

function devils() {
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO START LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF55 > "/home/pi/etc/emulationstation/runcommand-onstart.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4
EOF55
sleep 2
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF45 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4
EOF45
}
function retrotv() {
if [ -! /home/pi/etc/emulationstation/videos/end.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/end.mp4
wget INSERT VIDEO retrotv END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF25 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4
EOF25
sleep 3
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO retrotv start LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF35 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4
EOF35
}

function heroes() {
if [ -! /home/pi/etc/emulationstation/videos/end.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/end.mp4
wget INSERT VIDEO heroes END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF75 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4
EOF75
sleep 3
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO heroes start LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF65 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4
EOF65
}

