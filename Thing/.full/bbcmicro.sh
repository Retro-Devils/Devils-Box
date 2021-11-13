#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
sleep 2
wget --spider https://archive.org/download/thing-box/Retro-Devils-bbcmicro.7z
echo "Above Is File Info & Size"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Exiting Now";sudo reboot
fi
sudo rm -r /home/pi/RetroPie/roms/bbcmicro
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-bbcmicro.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-bbcmicro.7z
sudo mv bbcmicro /home/pi/RetroPie/roms
sudo rm "Retro-Devils-bbcmicro.7z"
cd ..
sudo rm -R test
echo "Complete Rebooting Now"
sleep 5
sudo reboot

