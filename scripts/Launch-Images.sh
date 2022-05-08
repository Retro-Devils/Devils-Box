#!/bin/bash

clear

function tester-menu() {
local choice 

while true; do 
  choice=$(dialog --backtitle "$BACKTITLE" --title "LAUNCHING IMAGES MENU" \ 
  --ok-button Download --cancel-button Back \ 
  --menu " PRESS A/ENTER TO DOWNLOAD & APPLY IMAGES" 30 70 50 \
     1 "Back To The Future----------MBM" \
     2 "Grid Blue---------------Dmmarti" \
     3 "Hursty Blue--------------Hursty" \
     4 "Motion Blue-------------Dmmarti" \
     5 "Devil Laughing-----UNFINISHED--" \
     6 "Retro TV-----------UNFINISHED--" \ 
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
}
function bttf() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://archive.org/download/devils-themes/bttf--------MBM.zip
unzip bttf--------MBM.zip
move-image "bttf" "all"
move-image "bttf" "amiga"
move-image "bttf" "amstradcpc"
move-image "bttf" "arcade"
move-image "bttf" "atari2600"
move-image "bttf" "atari5200"
move-image "bttf" "atari7800"
move-image "bttf" "atarilynx"
move-image "bttf" "c64"
move-image "bttf" "coleco"
move-image "bttf" "daphne"
move-image "bttf" "dreamcast"
move-image "bttf" "famicom"
move-image "bttf" "fba"
move-image "bttf" "fds"
move-image "bttf" "gameandwatch"
move-image "bttf" "gamegear"
move-image "bttf" "gb"
move-image "bttf" "gba"
move-image "bttf" "gbc"
move-image "bttf" "intellivision"
move-image "bttf" "mame-advmame"
move-image "bttf" "mame-libretro"
move-image "bttf" "mame-mame4all"
move-image "bttf" "mastersystem"
move-image "bttf" "megadrive"
move-image "bttf" "msx"
move-image "bttf" "n64"
move-image "bttf" "neogeo"
move-image "bttf" "nes"
move-image "bttf" "ngp"
move-iamge "bttf" "ngpc"
move-image "bttf" "pcengine"
move-image "bttf" "pcenginecd"
move-image "bttf" "psp"
sudo rm -R /home/pi/temp/images
}

function grid-blue() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-gridblue/archive/refs/heads/master.zip
unzip launchingscreens-gridblue-master.zip
move-image "launchingscreens-motionblue-master" "all"
move-image "launchingscreens-gridblue-master" "amiga"
move-image "launchingscreens-gridblue-master" "amstradcpc"
move-image "launchingscreens-gridblue-master" "arcade"
move-image "launchingscreens-gridblue-master" "atari2600"
move-image "launchingscreens-gridblue-master" "atari5200"
move-image "launchingscreens-gridblue-master" "atari7800"
move-image "launchingscreens-gridblue-master" "atarilynx"
move-image "launchingscreens-gridblue-master" "c64"
move-image "launchingscreens-gridblue-master" "coleco"
move-image "launchingscreens-gridblue-master" "daphne"
move-image "launchingscreens-gridblue-master" "dreamcast"
move-image "launchingscreens-gridblue-master" "famicom"
move-image "launchingscreens-gridblue-master" "fba"
move-image "launchingscreens-gridblue-master" "fds"
move-image "launchingscreens-gridblue-master" "gameandwatch"
move-image "launchingscreens-gridblue-master" "gamegear"
move-image "launchingscreens-gridblue-master" "gb"
move-image "launchingscreens-gridblue-master" "gba"
move-image "launchingscreens-gridblue-master" "gbc"
move-image "launchingscreens-gridblue-master" "intellivision"
move-image "launchingscreens-gridblue-master" "mame-advmame"
move-image "launchingscreens-gridblue-master" "mame-libretro"
move-image "launchingscreens-gridblue-master" "mame-mame4all"
move-image "launchingscreens-gridblue-master" "mastersystem"
move-image "launchingscreens-gridblue-master" "megadrive"
move-image "launchingscreens-gridblue-master" "msx"
move-image "launchingscreens-gridblue-master" "n64"
move-image "launchingscreens-gridblue-master" "neogeo"
move-image "launchingscreens-gridblue-master" "nes"
move-image "launchingscreens-gridblue-master" "ngp"
move-iamge "launchingscreens-gridblue-master" "ngpc"
move-image "launchingscreens-gridblue-master" "pcengine"
move-image "launchingscreens-gridblue-master" "pcenginecd"
move-image "launchingscreens-gridblue-master" "psp"
sudo rm -R /home/pi/temp/images
}

function hursty-blue() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-hurstyblue/archive/refs/heads/master.zip
unzip launchingscreens-hurstyblue-master.zip
move-image "launchingscreens-hurstyblue-master" "all"
move-image "launchingscreens-hurstyblue-master" "amiga"
move-image "launchingscreens-hurstyblue-master" "amstradcpc"
move-image "launchingscreens-hurstyblue-master" "arcade"
move-image "launchingscreens-hurstyblue-master" "atari2600"
move-image "launchingscreens-hurstyblue-master" "atari5200"
move-image "launchingscreens-hurstyblue-master" "atari7800"
move-image "launchingscreens-hurstyblue-master" "atarilynx"
move-image "launchingscreens-hurstyblue-master" "c64"
move-image "launchingscreens-hurstyblue-master" "coleco"
move-image "launchingscreens-hurstyblue-master" "daphne"
move-image "launchingscreens-motionblue-master" "dreamcast"
move-image "launchingscreens-hurstyblue-master" "famicom"
move-image "launchingscreens-hurstyblue-master" "fba"
move-image "launchingscreens-hurstyblue-master" "fds"
move-image "launchingscreens-hurstyblue-master" "gameandwatch"
move-image "launchingscreens-hurstyblue-master" "gamegear"
move-image "launchingscreens-hurstyblue-master" "gb"
move-image "launchingscreens-hurstyblue-master" "gba"
move-image "launchingscreens-hurstyblue-master" "gbc"
move-image "launchingscreens-motionblue-master" "intellivision"
move-image "launchingscreens-hurstyblue-master" "mame-advmame"
move-image "launchingscreens-hurstyblue-master" "mame-libretro"
move-image "launchingscreens-hurstyblue-master" "mame-mame4all"
move-image "launchingscreens-hurstyblue-master" "mastersystem"
move-image "launchingscreens-hurstyblue-master" "megadrive"
move-image "launchingscreens-hurstyblue-master" "msx"
move-image "launchingscreens-hurstyblue-master" "n64"
move-image "launchingscreens-hurstyblue-master" "neogeo"
move-image "launchingscreens-hurstyblue-master" "nes"
move-image "launchingscreens-hurstyblue-master" "ngp"
move-iamge "launchingscreens-hurstyblue-master" "ngpc"
move-image "launchingscreens-hurstyblue-master" "pcengine"
move-image "launchingscreens-hurstyblue-master" "pcenginecd"
move-image "launchingscreens-hurstyblue-master" "psp"
sudo rm -R /home/pi/temp/images
}

function motion-blue() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-motionblue/archive/refs/heads/master.zip
unzip launchingscreens-motionblue-master.zip
move-image "launchingscreens-motionblue-master" "all"
move-image "launchingscreens-motionblue-master" "amiga"
move-image "launchingscreens-motionblue-master" "amstradcpc"
move-image "launchingscreens-motionblue-master" "arcade"
move-image "launchingscreens-motionblue-master" "atari2600"
move-image "launchingscreens-motionblue-master" "atari5200"
move-image "launchingscreens-motionblue-master" "atari7800"
move-image "launchingscreens-motionblue-master" "atarilynx"
move-image "launchingscreens-motionblue-master" "c64"
move-image "launchingscreens-motionblue-master" "coleco"
move-image "launchingscreens-motionblue-master" "daphne"
move-image "launchingscreens-motionblue-master" "dreamcast"
move-image "launchingscreens-motionblue-master" "famicom"
move-image "launchingscreens-motionblue-master" "fba"
move-image "launchingscreens-motionblue-master" "fds"
move-image "launchingscreens-motionblue-master" "gameandwatch"
move-image "launchingscreens-motionblue-master" "gamegear"
move-image "launchingscreens-motionblue-master" "gb"
move-image "launchingscreens-motionblue-master" "gba"
move-image "launchingscreens-motionblue-master" "gbc"
move-image "launchingscreens-motionblue-master" "intellivision"
move-image "launchingscreens-motionblue-master" "mame-advmame"
move-image "launchingscreens-motionblue-master" "mame-libretro"
move-image "launchingscreens-motionblue-master" "mame-mame4all"
move-image "launchingscreens-motionblue-master" "mastersystem"
move-image "launchingscreens-motionblue-master" "megadrive"
move-image "launchingscreens-motionblue-master" "msx"
move-image "launchingscreens-motionblue-master" "n64"
move-image "launchingscreens-motionblue-master" "neogeo"
move-image "launchingscreens-motionblue-master" "nes"
move-image "launchingscreens-motionblue-master" "ngp"
move-iamge "launchingscreens-motionblue-master" "ngpc"
move-image "launchingscreens-motionblue-master" "pcengine"
move-image "launchingscreens-motionblue-master" "pcenginecd"
move-image "launchingscreens-motionblue-master" "psp"
move-image "launchingscreens-motionblue-master" "pspminis"
move-image "launchingscreens-motionblue-master" "psx"
move-image "launchingscreens-motionblue-master" "sega32x"
move-image "launchingscreens-motionblue-master" "segacd"
move-image "launchingscreens-motionblue-master" "sfc"
move-image "launchingscreens-motionblue-master" "sg-1000"
move-image "launchingscreens-motionblue-master" "sgfx"
move-image "launchingscreens-motionblue-master" "snes"
move-image "launchingscreens-motionblue-master" "tg16"
move-image "launchingscreens-motionblue-master" "tg16cd"
move-image "launchingscreens-motionblue-master" "vectrex"
move-image "launchingscreens-motionblue-master" "videopac"
move-image "launchingscreens-motionblue-master" "virtualboy"
move-image "launchingscreens-motionblue-master" "wonderswan"
move-image "launchingscreens-motionblue-master" "wonderswancolor"
sudo rm -R /home/pi/temp/images
}

function retro-tv() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget 
unzip 
move-image "retro-tv" "all"
move-image "retro-tv" "amiga"
move-image "retro-tv" "amstradcpc"
move-image "retro-tv" "arcade"
move-image "retro-tv" "atari2600"
move-image "retro-tv" "atari5200"
move-image "retro-tv" "atari7800"
move-image "retro-tv" "atarilynx"
move-image "retro-tv" "c64"
move-image "retro-tv" "coleco"
move-image "retro-tv" "daphne"
move-image "retro-tv" "dreamcast"
move-image "retro-tv" "famicom"
move-image "retro-tv" "fba"
move-image "retro-tv" "fds"
move-image "retro-tv" "gameandwatch"
move-image "retro-tv" "gamegear"
move-image "retro-tv" "gb"
move-image "retro-tv" "gba"
move-image "retro-tv" "gbc"
move-image "retro-tv" "intellivision"
move-image "retro-tv" "mame-advmame"
move-image "retro-tv" "mame-libretro"
move-image "retro-tv" "mame-mame4all"
move-image "retro-tv" "mastersystem"
move-image "retro-tv" "megadrive"
move-image "retro-tv" "msx"
move-image "retro-tv" "n64"
move-image "retro-tv" "neogeo"
move-image "retro-tv" "nes"
move-image "retro-tv" "ngp"
move-iamge "retro-tv" "ngpc"
move-image "retro-tv" "pcengine"
move-image "retro-tv" "pcenginecd"
move-image "retro-tv" "psp"
move-image "retro-tv" "pspminis"
move-image "retro-tv" "psx"
move-image "retro-tv" "sega32x"
move-image "retro-tv" "segacd"
move-image "retro-tv" "sfc"
move-image "retro-tv" "sg-1000"
move-image "retro-tv" "sgfx"
move-image "retro-tv" "snes"
move-image "retro-tv" "tg16"
move-image "retro-tv" "tg16cd"
move-image "retro-tv" "vectrex"
move-image "retro-tv" "videopac"
move-image "retro-tv" "virtualboy"
move-image "retro-tv" "wonderswan"
move-image "retro-tv" "wonderswancolor"
sudo rm -R /home/pi/temp/images
}

function simple-grey() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images/
wget https://github.com/dmmarti/launchingscreens-simple_gray/archive/refs/heads/master.zip
unzip launchingscreens-simple_gray-main.zip
move-image "launchingscreens-simple_gray" "all"
move-image "launchingscreens-simple_gray" "amstradcpc"
move-image "launchingscreens-simple_gray" "arcade"
move-image "launchingscreens-simple_gray" "atari2600"
move-image "launchingscreens-simple_gray" "atari5200"
move-image "launchingscreens-simple_gray" "atari7800"
move-image "launchingscreens-simple_gray" "atarilynx"
move-image "launchingscreens-simple_gray" "c64"
move-image "launchingscreens-simple_gray" "coleco"
move-image "launchingscreens-simple_gray" "daphne"
move-image "launchingscreens-simple_gray" "dreamcast"
move-image "launchingscreens-simple_gray" "famicom"
move-image "launchingscreens-simple_gray" "fba"
move-image "launchingscreens-simple_gray" "fds"
move-image "launchingscreens-simple_gray" "gameandwatch"
move-image "launchingscreens-simple_gray" "gamegear"
move-image "launchingscreens-simple_gray" "gb"
move-image "launchingscreens-simple_gray" "gba"
move-image "launchingscreens-simple_gray" "gbc"
move-image "launchingscreens-simple_gray" "intellivision"
move-image "launchingscreens-simple_gray" "mame-advmame"
move-image "launchingscreens-simple_gray" "mame-libretro"
move-image "launchingscreens-simple_gray" "mame-mame4all"
move-image "launchingscreens-simple_gray" "mastersystem"
move-image "launchingscreens-simple_gray" "megadrive"
move-image "launchingscreens-simple_gray" "msx"
move-image "launchingscreens-simple_gray" "n64"
move-image "launchingscreens-simple_gray" "neogeo"
move-image "launchingscreens-simple_gray" "nes"
move-image "launchingscreens-simple_gray" "ngp"
move-iamge "launchingscreens-simple_gray" "ngpc"
move-image "launchingscreens-simple_gray" "pcengine"
move-image "launchingscreens-simple_gray" "pcenginecd"
move-image "launchingscreens-simple_gray" "psp"
move-image "launchingscreens-simple_gray" "pspminis"
move-image "launchingscreens-simple_gray" "psx"
move-image "launchingscreens-simple_gray" "sega32x"
move-image "launchingscreens-simple_gray" "segacd"
move-image "launchingscreens-simple_gray" "sfc"
move-image "launchingscreens-simple_gray" "sg-1000"
move-image "launchingscreens-simple_gray" "sgfx"
move-image "launchingscreens-simple_gray" "snes"
move-image "launchingscreens-simple_gray" "tg16"
move-image "launchingscreens-simple_gray" "tg16cd"
sudo rm -R /home/pi/temp/images
}


function retro-devils() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images
wget devils images 
unzip 
move-image "retro-devils"  "amiga"
move-image "retro-devils"  "amstradcpc"
move-image "retro-devils"  "arcade"
move-image "retro-devils"  "atari2600"
move-image "retro-devils"  "atari5200"
move-image "retro-devils"  "atari7800"
move-image "retro-devils"  "atarilynx"
move-image "retro-devils"  "c64"
move-image "retro-devils"  "coleco"
move-image "retro-devils"  "daphne"
move-image "retro-devils"  "dreamcast"
move-image "retro-devils"  "famicom"
move-image "retro-devils"  "fba"
move-image "retro-devils"  "fds"
move-image "retro-devils"  "gameandwatch"
move-image "retro-devils"  "gamegear"
move-image "retro-devils"  "gb"
move-image "retro-devils"  "gba"
move-image "retro-devils"  "gbc"
move-image "retro-devils"  "intellivision"
move-image "retro-devils"  "mame-advmame"
move-image "retro-devils"  "mame-libretro"
move-image "retro-devils"  "mame-mame4all"
move-image "retro-devils"  "mastersystem"
move-image "retro-devils"  "megadrive"
move-image "retro-devils"  "msx"
move-image "retro-devils"  "n64"
move-image "retro-devils"  "neogeo"
move-image "retro-devils"  "nes"
move-image "retro-devils"  "ngp"
move-iamge "retro-devils"  "ngpc"
move-image "retro-devils"  "pcengine"
move-image "retro-devils"  "pcenginecd"
move-image "retro-devils"  "psp"
move-image "retro-devils"  "pspminis"
move-image "retro-devils"  "psx"
move-image "retro-devils"  "sega32x"
move-image "retro-devils"  "segacd"
move-image "retro-devils"  "sfc"
move-image "retro-devils"  "sg-1000"
move-image "retro-devils"  "sgfx"
move-image "retro-devils"  "snes"
move-image "retro-devils"  "tg16"
move-image "retro-devils"  "tg16cd"
move-image "retro-devils"  "vectrex"
move-image "retro-devils"  "videopac"
move-image "retro-devils"  "virtualboy"
move-image "retro-devils"  "wonderswan"
move-image "retro-devils"  "wonderswancolor"
move-image "retro-devils"  "zmachine"
move-image "retro-devils"  "zxspectrum"
sudo rm -R /home/pi/temp/images

function move-image(){
mv /home/pi/temp/images/${theme}/${1}/launching.png -f opt/retropie/config/${1}/launching.png
}
