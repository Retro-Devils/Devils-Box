#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Rebooting Now";sudo reboot
fi
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-Atari2600.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-Atari2600.7z
sudo mv atari2600 /home/pi/RetroPie/roms
sudo rm "Retro-Devils-Atari2600.7z"
cd ..
sudo rm -R test
sudo reboot



