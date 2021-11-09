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
wget -c https://archive.org/download/thing-box/Retro-Devils-Amstradcpc.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-Amstradcpc.7z
sudo mv amstradcpc /home/pi/RetroPie/roms
sudo rm "Retro-Devils-Amstradcpc.7z"
cd ..
sudo rm -R test
sudo reboot
kill -15 $(pidof emulationstation)


