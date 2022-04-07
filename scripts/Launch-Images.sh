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
 bttf() {
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
wget https://github.com/dmmarti/launchingscreens-simple_gray/archive/refs/heads/master.zip
unzip launchingscreens-simple_gray-master.zip
move-image "launchingscreens-simple_gray-master" "all"
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
mv /home/pi/temp/images/nes/launching.png /opt/retropie/configs/nes/
mv /home/pi/temp/images/ngp/launching.png /opt/retropie/configs/ngp/
mv /home/pi/temp/images/ngpc/launching.png /opt/retropie/configs/ngpc/
mv /home/pi/temp/images/pcengine/launching.png /opt/retropie/configs/pcengine/
mv /home/pi/temp/images/pcenginecd/launching.png /opt/retropie/configs/pcenginecd/
mv /home/pi/temp/images/psp/launching.png /opt/retropie/configs/psp/
mv /home/pi/temp/images/pspminis/launching.png /opt/retropie/configs/pspminis/
mv /home/pi/temp/images/psx/launching.png /opt/retropie/configs/psx/
mv /home/pi/temp/images/sega32x/launching.png /opt/retropie/configs/sega32x/
mv /home/pi/temp/images/segacd/launching.png /opt/retropie/configs/segacd/
mv /home/pi/temp/images/sfc/launching.png /opt/retropie/configs/sfc/
mv /home/pi/temp/images/sg-1000/launching.png /opt/retropie/configs/sg-1000/
mv /home/pi/temp/images/sgfx/launching.png /opt/retropie/configs/sgfx/
mv /home/pi/temp/images/snes/launching.png /opt/retropie/configs/snes/
mv /home/pi/temp/images/tg16/launching.png /opt/retropie/configs/tg16/
mv /home/pi/temp/images/tg16cd/launching.png /opt/retropie/configs/tg16cd/
mv /home/pi/temp/images/vectrex/launching.png /opt/retropie/configs/vectrex/
mv /home/pi/temp/images/videopac/launching.png /opt/retropie/configs/videopac/
mv /home/pi/temp/images/virtualboy/launching.png /opt/retropie/configs/virtualboy/
mv /home/pi/temp/images/wonderswan/launching.png /opt/retropie/configs/wonderswan/
mv /home/pi/temp/images/wonderswancolor/launching.png /opt/retropie/configs/wonderswancolor/
mv /home/pi/temp/images/zmachine/launching.png /opt/retropie/configs/zmachine/
mv /home/pi/temp/images/zxspectrum/launching.png /opt/retropie/configs/zxspectrum/
mv /home/pi/temp/images/arcadeclassics/launching.png /opt/retropie/configs/arcadeclassics/
mv /home/pi/temp/images/atariclassics/launching.png /opt/retropie/configs/atariclassics/
mv /home/pi/temp/images/batmancollection/launching.png /opt/retropie/configs/batmancollection/
mv /home/pi/temp/images/beatemupcollection/launching.png /opt/retropie/configs/beatemupcollection/
mv /home/pi/temp/images/capcomclassics/launching.png /opt/retropie/configs/capcomclassics/
mv /home/pi/temp/images/castlevaniacollection/launching.png /opt/retropie/configs/castlevaniacollection/
mv /home/pi/temp/images/cps1/launching.png /opt/retropie/configs/cps1/disable_launching.png
mv /home/pi/temp/images/cps2/launching.png /opt/retropie/configs/cps2/disable_launching.png
mv /home/pi/temp/images/cps3/launching.png /opt/retropie/configs/cps3/disable_launching.png
mv /home/pi/temp/images/dariuscollection/launching.png /opt/retropie/configs/dariuscollection/
mv /home/pi/temp/images/dataeastclassics/launching.png /opt/retropie/configs/dataeastclassics/
mv /home/pi/temp/images/disneycollection/launching.png /opt/retropie/configs/disneycollection/
mv /home/pi/temp/images/donkeykongcollection/launching.png /opt/retropie/configs/donkeykongcollection/
mv /home/pi/temp/images/doubledragoncollection/launching.png /opt/retropie/configs/doubledragoncollection/
mv /home/pi/temp/images/fatalfurycollection/launching.png /opt/retropie/configs/fatalfurycollection/
mv /home/pi/temp/images/fightercollection/launching.png /opt/retropie/configs/fightercollection/
mv /home/pi/temp/images/finalfantasycollection/launching.png /opt/retropie/configs/finalfantasycollection/
mv /home/pi/temp/imagesfroggercollection/launching.png /opt/retropie/configs/froggercollection/
mv /home/pi/temp/images/ghoulsghostscollection/launching.png /opt/retropie/configs/ghoulsghostscollection/
mv /home/pi/temp/images/iremclassics/launching.png /opt/retropie/configs/iremclassics/
mv /home/pi/temp/images/kingoffighterscollection/launching.png /opt/retropie/configs/kingoffighterscollection/
mv /home/pi/temp/images/konamiclassics/launching.png /opt/retropie/configs/konamiclassics/
mv /home/pi/temp/images/lemmingscollection/launching.png /opt/retropie/configs/lemmingscollection/
mv /home/pi/temp/images/mariocollection/launching.png /opt/retropie/configs/mariocollection/
mv /home/pi/temp/images/megamancollection/launching.png /opt/retropie/configs/megamancollection/
mv /home/pi/temp/images/metalslugcollection/launching.png /opt/retropie/configs/metalslugcollection/
mv /home/pi/temp/images/midwayclassics/launching.png /opt/retropie/configs/midwayclassics/
mv /home/pi/temp/images/mortalkombatcollection/launching.png /opt/retropie/configs/mortalkombatcollection/
mv /home/pi/temp/images//namcoclassics/launching.png /opt/retropie/configs/namcoclassics/
mv /home/pi/temp/images/nintendoclassics/launching.png /opt/retropie/configs/nintendoclassics/
mv /home/pi/temp/images/outruncollection/launching.png /opt/retropie/configs/outruncollection/
mv /home/pi/temp/images/pacmancollection/launching.png /opt/retropie/configs/pacmancollection/
mv /home/pi/temp/images/pinballcollection/launching.png /opt/retropie/configs/pinballcollection/
mv /home/pi/temp/images/pitfallcollection/launching.png /opt/retropie/configs/pitfallcollection/
mv /home/pi/temp/images/pokemoncollection/launching.png /opt/retropie/configs/pokemoncollection/
mv /home/pi/temp/images/puzzlecollection/launching.png /opt/retropie/configs/puzzlecollection/
mv /home/pi/temp/images/segaclassics/launching.png /opt/retropie/configs/segaclassics/
mv /home/pi/temp/images/shmupscollection/launching.png /opt/retropie/configs/shmupscollection/
mv /home/pi/temp/images/shootemupcollection/launching.png /opt/retropie/configs/shootemupcollection/
mv /home/pi/temp/images/simpsonscollection/launching.png /opt/retropie/configs/simpsonscollection/
mv /home/pi/temp/images/snkclassics/launching.png /opt/retropie/configs/snkclassics/
mv /home/pi/temp/images/soniccollection/launching.png /opt/retropie/configs/soniccollection/
mv /home/pi/temp/images/spidermancollection/launching.png /opt/retropie/configs/spidermancollection/
mv /home/pi/temp/images/sportscollection/launching.png /opt/retropie/configs/sportscollection/
mv /home/pi/temp/images/starwarscollection/launching.png /opt/retropie/configs/starwarscollection/
mv /home/pi/temp/images/streetfightercollection/launching.png /opt/retropie/configs/streetfightercollection/
mv /home/pi/temp/images/superheroescollection/launching.png /opt/retropie/configs/superheroescollection/
mv /home/pi/temp/images/taitoclassics/launching.png /opt/retropie/configs/taitoclassics/
mv /home/pi/temp/images/tmntcollection/launching.png /opt/retropie/configs/tmntcollection/
mv /home/pi/temp/images/tokicollection/launching.png /opt/retropie/configs/tokicollection/
mv /home/pi/temp/images/trackballclassics/launching.png /opt/retropie/configs/trackballclassics/
move-image "vectorclassics"
move-image "williamsclassics"
move-image "zeldacollection"
sudo rm -R /home/pi/temp/images

function move-image(){
mv /home/pi/temp/images/${theme}/${1}/launching.png -f opt/retropie/config/${1}/launching.png
}
