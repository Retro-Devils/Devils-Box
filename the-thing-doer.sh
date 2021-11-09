#!/bin/bash
sudo apt-get install p7zip-full 
cd /home/pi/RetroPie/retropiemenu 
git clone https://github.com/Retro-Devils/Devils-Box
sudo mv /home/pi/RetroPie/retropiemenu/Devils-Box/setup/files/es_systems.cfg /home/pi/.emulationstation/
sudo rm -r /home/pi/RetroPie/retropiemenu/Devils-Box/.git
sudo rm -r /home/pi/RetroPie/retropiemenu/Devils-Box/README.md
sleep 15 
rm /home/pi/the-thing-doer.sh
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/Install-complete.txt
sleep 10
rm /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/Install-complete.txt
sudo reboot
