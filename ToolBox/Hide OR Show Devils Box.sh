#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/tools-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Tool";
else
  echo "Exiting Now";
fi
if [ -d "/home/pi/RetroPie/retropiemenu/Devils-Box/kiosk" ] 
then
sudo rm -R "/home/pi/RetroPie/retropiemenu/Devils-Box/kiosk"
mv /home/pi/RetroPie/retropiemenu/Devils-Box/Full Packs /home/pi/RetroPie/retropiemenu/Devils-Box/Thing/.full
mv /home/pi/RetroPie/retropiemenu/Devils-Box/Hacks Packs /home/pi/RetroPie/retropiemenu/Devils-Box/Thing/.hacks
mv /home/pi/RetroPie/retropiemenu/Devils-Box/Remove Packs /home/pi/RetroPie/retropiemenu/Devils-Box/Thing/.remove
else
mkdir /home/pi/RetroPie/retropiemenu/Devils-Box/kiosk
mv /home/pi/RetroPie/retropiemenu/Devils-Box/Thing/.full /home/pi/RetroPie/retropiemenu/Devils-Box/Full Packs
mv /home/pi/RetroPie/retropiemenu/Devils-Box/Thing/.hacks /home/pi/RetroPie/retropiemenu/Devils-Box/Hacks Packs
mv /home/pi/RetroPie/retropiemenu/Devils-Box/Thing/.remove /home/pi/RetroPie/retropiemenu/Devils-Box/Remove Packs
fi
touch /tmp/es-restart
sudo reboot
