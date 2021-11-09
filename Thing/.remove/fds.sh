#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/remove-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Removal";
else
  echo "Exiting Now"; sudo reboot 
fi
cd
sudo rm +R /home/pi/RetroPie/roms/fds
sudo mkdir /home/pi/RetroPie/roms/fds
sudo reboot