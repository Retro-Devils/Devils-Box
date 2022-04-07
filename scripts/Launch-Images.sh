#!/bin/bash

clear

local choice 

while true; do 
  choice=$(dialog --backtitle "$BACKTITLE" --title "LAUNCHING IMAGES MENU" \ 
  --ok-button Download --cancel-button Back \ 
  --menu " PRESS A/ENTER TO DOWNLOAD & APPLY IMAGES" 30 70 50 \ 
     1 "Retro Devils"/ 
     2 "Back To The Future" 
     3 "Retro TV" / 
     2>&1 >/dev/tty) 
     
     case "$choice" in 
     1) devils ;; 
     2) bttf ;; 
     3) retrotv ;; 
     *) break ;; 
     esac 
   done
fi
}

function devils() {
mkdir /home/pi/temp/images
cd /home/pi/temp/images
wget devils images 
unzip 
mv /home/pi/temp/images//all/launching.png -f /opt/retropie/configs/all/
mv /home/pi/temp/images/amiga/launching.png -f /opt/retropie/configs/amiga/
mv /home/pi/temp/images/amstradcpc/launching.png -f /opt/retropie/configs/amstradcpc/
mv /home/pi/temp/images/arcade/launching.png -f /opt/retropie/configs/arcade/
mv /home/pi/temp/images/atari2600/launching.png - f /opt/retropie/configs/atari2600/
mv /home/pi/temp/images/atari5200/launching.png -f /opt/retropie/configs/atari5200/
mv /home/pi/temp/images/atari7800/launching.png -f /opt/retropie/configs/atari7800/
mv /home/pi/temp/images//atarilynx/launching.png -f /opt/retropie/configs/atarilynx/
mv /home/pi/temp/images/c64/launching.png -f /opt/retropie/configs/c64/
mv /home/pi/temp/images/coleco/launching.png -f /opt/retropie/configs/coleco/
mv /home/pi/temp/images/daphne/launching.png -f /opt/retropie/configs/daphne/
mv /home/pi/temp/images/dreamcast/launching.png -f /opt/retropie/configs/dreamcast/
mv /home/pi/temp/images/famicom/launching.png -f /opt/retropie/configs/famicom/
mv /home/pi/temp/images/fba/launching.png -f /opt/retropie/configs/fba/
mv /home/pi/temp/images/fds/launching.png -f /opt/retropie/configs/fds/
mv /home/pi/temp/images/gameandwatch/launching.png -f /opt/retropie/configs/gameandwatch/
mv /home/pi/temp/images/gamegear/launching.png -f /opt/retropie/configs/gamegear/
mv /home/pi/temp/images/gb/launching.png /opt/retropie/configs/gb/
mv /home/pi/temp/images/gba/launching.png /opt/retropie/configs/gba/
mv /home/pi/temp/images/gbc/launching.png /opt/retropie/configs/gbc
mv /home/pi/temp/images/intellivision/launching.png /opt/retropie/configs/intellivision/
mv /home/pi/temp/images/mame-advmame/launching.png /opt/retropie/configs/mame-advmame/
mv /home/pi/temp/images/mame-libretro/launching.png /opt/retropie/configs/mame-libretro/
mv /home/pi/temp/images/mame-mame4all/launching.png /opt/retropie/configs/mame-mame4all/
mv /home/pi/temp/images/mastersystem/launching.png /opt/retropie/configs/mastersystem/
mv /home/pi/temp/images/megadrive/launching.png /opt/retropie/configs/megadrive/
mv /home/pi/temp/images/msx/launching.png /opt/retropie/configs/msx/
mv /home/pi/temp/images/n64/launching.png /opt/retropie/configs/n64/
mv /home/pi/temp/images/neogeo/launching.png /opt/retropie/configs/neogeo/
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
mv /home/pi/temp/images/vectorclassics/launching.png /opt/retropie/configs/vectorclassics/
mv /home/pi/temp/images/williamsclassics/launching.png /opt/retropie/configs/williamsclassics/disable_launching.png
mv /home/pi/temp/images/zeldacollection/launching.png /opt/retropie/config/zeldacollection/launching.png /opt/retropie/configs/zeldacollection/disable_launching.png
sudo rm -R /home/pi/temp/images 
}



