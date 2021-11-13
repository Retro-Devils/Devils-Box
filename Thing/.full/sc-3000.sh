#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
sleep 2
wget --spider https://archive.org/download/thing-box/Retro-Devils-sc-3000.7z
echo "Above Is File Info & Size"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Exiting Now";sudo reboot
fi
sudo rm -r /home/pi/RetroPie/roms/sc-3000
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-sc-3000.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-sc-3000.7z
sudo mv sc-3000 /home/pi/RetroPie/roms
sudo rm "Retro-Devils-sc-3000.7z"
cd ..
sudo rm -R test
echo "Complete Rebooting Now"
sleep 5
sudo reboot


