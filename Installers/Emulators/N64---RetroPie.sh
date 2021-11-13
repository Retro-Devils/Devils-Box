#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/install-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Install";
else
  echo "Exiting Now";sudo reboot
fi
echo "Installing RetroArch Cores"
sleep 2
sudo /home/pi/RetroPie-Setup/retropie_packages.sh lr-mupen64plus-next
sudo /home/pi/RetroPie-Setup/retropie_packages.sh lr-parellel-64
echo "Installing Standalone Emulators"
sudo /home/pi/RetroPie-Setup/retropie_packages.sh mupen64plus
echo "Complete Rebooting Now"
sleep 5
sudo reboot
