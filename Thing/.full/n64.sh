#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
wget --spider https://archive.org/download/thing-box/Retro-Devils-n64.7z
echo "Above Is File Size & Info"
echo "N64 Will Take A Looong Time"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Exiting Now";sudo reboot
fi
sudo rm -r /home/pi/RetroPie/roms/n64
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-n64.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-n64.7z
sudo mv n64 /home/pi/RetroPie/roms
sudo rm "Retro-Devils-n64.7z"
cd ..
sudo rm -R test
echo "Complete Rebooting Now"
sleep 5
sudo reboot


