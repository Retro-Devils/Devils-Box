#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
wget --spider https://archive.org/download/thing-box/Retro-Devils-amiga.7z
echo "Above Is File Info & Size"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Rebooting Now";sudo reboot
fi
10sudo rm -r /home/pi/RetroPie/roms/amiga
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-amiga.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-amiga.7z
sudo mv amiga /home/pi/RetroPie/roms
sudo rm "Retro-Devils-amiga.7z"
cd ..
sudo rm -R test
echo "Complete Rebooting Now"
sleep 5
sudo reboot
