#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
wget --spider https://archive.org/download/thing-box/Retro-Devils-Sufami.7z
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Rebooting Now";sudo reboot
fi
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-Sufami.7z -q --show-progress
sudo rm -r /home/pi/RetroPie/roms/sufami
7z x -y -aoa /home/pi/test/Retro-Devils-Sufami.7z
sudo mv sufami /home/pi/RetroPie/roms
sudo rm "Retro-Devils-Sufami.7z"
cd ..
sudo rm -R test
sudo reboot


