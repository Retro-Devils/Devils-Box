#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
sleep 2
wget --spider https://archive.org/download/thing-box/Retro-Devils-gb.7z
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Exiting Now";sudo reboot
fi
sudo rm -r /home/pi/RetroPie/roms/gb
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-gb.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-gb.7z
sudo mv gb /home/pi/RetroPie/roms
sudo rm "Retro-Devils-gb.7z"
cd ..
sudo rm -R test
echo "Complete Rebooting Now"
sleep 5
sudo reboot


