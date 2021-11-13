#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/install-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Install";
else
  echo "Exiting Now";sudo reboot
fi
sudo /home/pi/RetroPie-Setup/retropie_packages.sh lr-nestopia
echo "Complete Rebooting Now"
sleep 5
sudo reboot
