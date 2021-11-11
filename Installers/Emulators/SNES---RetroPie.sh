#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/install-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Install";
else
  echo "Exiting Now";sudo reboot
fi
sudo ./retropie_packages lr-snes9x2002
sudo ./retropie_packages lr-snesx9x
sudo reboot