#!/bin/bash

clear

local choice 

while true; do 
  choice=$(dialog --backtitle "$BACKTITLE" --title "LAUNCHING IMAGES MENU" \ 
  --ok-button Download --cancel-button Back \ 
  --menu " PRESS A/ENTER TO DOWNLOAD & APPLY IMAGES" 30 70 50 \
     1 "Back To The Future----------MBM" \
     2 "Grid Blue---------------Dmmarti" \
     3 "Hursty Blue--------------Hursty" \
     4 "Motion Blue-------------Dmmarti" \
     5 "Devil Laughing-----Retro Devils" \
     6 "Retro TV-----------Retro Devils" \ 
     7 "Simple Grey-------------Dmmarti" \
     2>&1 >/dev/tty) 
     
     case "$choice" in 
     1) bttf ;; 
     2) grid-blue ;; 
     3) hursty-blue ;;
     4) motion-blue ;;
     5) retro-devils ;;
     6) retro-tv ;;
     7) simple-grey ;;
     *) break ;; 
     esac 
   done
fi
}
function bttf() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget 
unzip 
move-image "" "all"
sudo rm -R /home/pi/temp/images
}

function grid-blue() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-gridblue/archive/refs/heads/master.zip
unzip launchingscreens-gridblue-master.zip
move-image "launchingscreens-gridblue-master" "all"
sudo rm -R /home/pi/temp/images
}

function hursty-blue() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-hurstyblue/archive/refs/heads/master.zip
unzip launchingscreens-hurstyblue-master.zip
move-image "launchingscreens-hurstyblue-master" "all"
sudo rm -R /home/pi/temp/images
}

function motion-blue() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-motionblue/archive/refs/heads/master.zip
unzip launchingscreens-motionblue-master.zip
move-image "launchingscreens-motionblue-master" "all"
sudo rm -R /home/pi/temp/images
}

function retro-tv() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget 
unzip 
move-image "" "all"
sudo rm -R /home/pi/temp/images
}

function simple-grey() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-simplegrey/archive/refs/heads/master.zip
unzip 
move-image "" "all"
sudo rm -R /home/pi/temp/images
}


function retro-devils() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images
wget devils images 
unzip 
move-image "all"
move-image "amiga"
move-image "amstradcpc"
move-image "arcade"
move-image "atari2600"
move-image "atari5200"
move-image "atari7800"
move-image "atarilynx"
move-image "c64"
move-image "coleco"
move-image "daphne"
move-image "dreamcast"
move-image "famicom"
move-image "fba"
move-image "fds"
move-image "gameandwatch"
move-image "gamegear"
move-image "gb"
move-image "gba"
move-image "gbc"
move-image "intellivision"
move-image "mame-advmame"
move-image "mame-libretro"
move-image "mame-mame4all"
move-image "mastersystem"
move-image "megadrive"
move-image "msx"
move-image "n64"
move-image "neogeo"
move-image "nes"
move-image "ngp"
move-iamge "ngpc"
move-image "pcengine"
move-image "pcenginecd"
mv /home/pi/temp/images/psp/launching.png /opt/retropie/configs/psp/
move-image "pspminis"
mv /home/pi/temp/images/psx/launching.png /opt/retropie/configs/psx/
mv /home/pi/temp/images/sega32x/launching.png /opt/retropie/configs/sega32x/
mv /home/pi/temp/images/segacd/launching.png /opt/retropie/configs/segacd/
mv /home/pi/temp/images/sfc/launching.png /opt/retropie/configs/sfc/
mv /home/pi/temp/images/sg-1000/launching.png /opt/retropie/configs/sg-1000/
mv /home/pi/temp/images/sgfx/launching.png /opt/retropie/configs/sgfx/
mv /home/pi/temp/images/snes/launching.png /opt/retropie/configs/snes/
mv /home/pi/temp/images/tg16/launching.png //
mv /home/pi/temp/images/tg16cd/launching.png /opt/retropie/configs/tg16cd/
mv /home/pi/temp/images/vectrex/launching.png /opt/retropie/configs/vectrex/
mv /home/pi/temp/images/videopac/launching.png /opt/retropie/configs/videopac/
move-image "virtualboy"
move-image "wonderswan"
mv /home/pi/temp/images/wonderswancolor/launching.png //
mv /home/pi/temp/images/zmachine/launching.png //
mv /home/pi/temp/images/zxspectrum/launching.png //
sudo rm -R /home/pi/temp/images

function move-image(){
mv /home/pi/temp/images/${theme}/${1}/launching.png -f opt/retropie/config/${1}/launching.png
}
