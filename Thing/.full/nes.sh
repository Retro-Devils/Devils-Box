#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
wget --spider https://archive.org/download/thing-box/Retro-Devils-NES.7z
echo "This Will Install Emulator and Roms"
echo "Above Is File Size & Info"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Exiting Now";sudo reboot
fi
sudo bash /home/pi/RetroPie-Setup/retropie_packages.sh lr-nestopia
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-NES.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-NES.7
sudo rm -r /home/pi/RetroPie/roms/nes
sudo mv nes /home/pi/RetroPie/roms
sudo rm "Retro-Devils-NES.7"
cd ..
sudo rm -R test
sudo reboot


