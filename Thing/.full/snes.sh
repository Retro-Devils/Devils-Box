#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
wget --spider https://archive.org/download/thing-box/Retro-Devils-SNES.7z
echo "This Will Also Install Emulator(s)"
echo "Above Is File Size & Info"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Rebooting Now";sudo reboot
fi
echo "Installing Emulator(s) Now"
sudo bash /home/pi/RetroPie-Setup/retropie_packages.sh lr-snes9x
sudo bash /home/pi/RetroPie-Setup/retropie_packages.sh lr-snes9x
echo "Installing & Cleaning Everything Else Now"
sudo rm -r /home/pi/RetroPie/roms/snes
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-SNES.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-SNES.7z
sudo mv snes /home/pi/RetroPie/roms
sudo rm "Retro-Devils-SNES.7z"
cd ..
sudo rm -R test
echo "Complet Rebooting Now"
sudo reboot



