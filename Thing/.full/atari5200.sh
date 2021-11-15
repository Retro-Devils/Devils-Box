#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
sleep 2
wget --spider https://archive.org/download/Devils-Box2/Retro-Devils-Atari5200/atari5200/
echo "Above Is File Info & Size"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Rebooting Now";sudo reboot
fi
wget -m -recursive -noparent https://archive.org/download/Devils-Box2/Retro-Devils-Atari5200/atari5200/ ~/Retropie/roms
echo "Complete Rebooting Now"
sleep 2
sudo reboot
