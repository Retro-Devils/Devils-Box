#!/bin/bash
echo "This Will System Artwork and a Gamelist.xml"
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Install";
else
  echo "Exiting Now";emulationstation
fi
cd /home/pi/RetroPie/roms/nesh
wget https://archive.org/download/thing-box2/nesh/snap -q --show-progress
wget https://archive.org/download/thing-box2/nesh/snap -q --show-progress
wget https://github.com/Retro-Devils/Devils-Box/blob/main/Thing/.pick/Nes-Hacks/gamelist.xml
echo "Complete Returning To Emulation Station Now"
sleep 5
emulationstation
