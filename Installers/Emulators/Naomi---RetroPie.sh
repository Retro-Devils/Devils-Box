#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/install-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Install";
else
  echo "Exiting Now";sudo reboot
fi
echo "Installing Retroarch Cores Now"
sleep 2
sudo /home/pi/RetroPie-Setup/retropie_packages.sh lr-flycast
echo "Innstalling Standalone Emulators Now"
sleep 2
sudo /home/pi/RetroPie-Setup/retropie_packages.sh reicast
echo "Making Naomi Config"
sudo cp -r /opt/retropie/configs/dreamcast /opt/retropie/configs/naomi
echo "Complete Rebooting Now"
sleep 5
sudo reboot
