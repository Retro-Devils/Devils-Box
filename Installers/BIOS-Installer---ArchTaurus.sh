#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/tools-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Tool";
else
  echo "Exiting Now";sudo reboot
fi
cd
rm -r /home/pi/RetroPie/BIOS
mkdir test
cd test
wget -c https://archive.org/download/thing-box/RetroPie-BIOS.7z -q --show-progress
7z x -y -aoa /home/pi/test/RetroPie-BIOS.7z
sudo mv BIOS /home/pi/RetroPie/
sudo rm "RetroPie-BIOS.7z"
cd ..
sudo rm -R test
sudo reboot