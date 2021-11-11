#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
wget --spider https://archive.org/download/thing-box/Retro-Devils-AmigaCD.7z
echo "Above Is File Info & Size"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Rebooting Now";sudo reboot
fi
sudo rm -r /home/pi/RetroPie/roms/amigacd32
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-AmigaCD.7z -q --show-progress
7z x -y -aoa /home/pi/test/amigacd32_unified_rompack.7z
sudo mv amigacd32 /home/pi/RetroPie/roms
sudo rm "Retro-Devils-AmigaCD.7z"
cd ..
sudo rm -R test
echos"Complete Rebooting Now"
sleep 5
sudo reboot


