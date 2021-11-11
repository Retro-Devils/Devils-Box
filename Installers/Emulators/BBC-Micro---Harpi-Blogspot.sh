#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/install-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Install";
else
echo "Exiting Now";sudo reboot
fi
wget http://beebem-unix.bbcmicro.com/download/beebem-0.0.13.tar.gz 
sleep 1
wget http://beebem-unix.bbcmicro.com/download/beebem-0.0.13_64bit.patch
sleep 1
wget http://beebem-unix.bbcmicro.com/download/beebem-0.0.13-keys.patch
sleep 1
wget http://beebem-unix.bbcmicro.com/download/beebem-0.0.13_menu_crash.patch
sleep 1
sudo tar -zxvf beebem-0.0.13.tar.gz
sleep 1
patch -p0 < beebem-0.0.13_64bit.patch
sleep 1
patch -p0 < beebem-0.0.13-keys.patch
sleep 1
patch -p0 < beebem-0.0.13_menu_crash.patch
sleep 1
sudo apt-get install libgtk2.0-dev libsdl1.2-dev
sleep 1
cd beebem-0.0.13
sleep 1
./configure
sleep 1
sudo make install
echo "Complete Rebooting Now"
sleep 5
sudo reboot
