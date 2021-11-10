#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/tools-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Tool";
else
  echo "Exiting Now";
fi
sudo rm /home/pi/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
sudo reboot now
