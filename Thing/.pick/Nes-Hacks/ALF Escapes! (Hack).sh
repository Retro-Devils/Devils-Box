#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/pick&choose.txt
wget --spider https://archive.org/download/thing-box2/nesh/ALF%20Escapes%21%20%28Hack%29.zip
echo "Above Is File Size & Info"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Install";
else
  echo "Exiting Now";emulationstation
fi
cd /home/pi/RetroPie/roms/nes/
wget https://archive.org/download/thing-box2/nesh/ALF%20Escapes%21%20%28Hack%29.zip -q --show-progress
7z x -y -aoa "/home/pi/test/ALF Escapes! (Hack).zip"
sudo rm "ALF Escapes! (Hack).zip"
echo "Complete Returning To Emulation Station Now"
sleep 5
emulationstation
