#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine"
HOST5="https://archive.org/download/devils-dos"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"
HOST8="https://raw.githubusercontent.com/Retro-Devils/Devils-Extra/main/files/emu.cfg/" 

if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
sleep 1
dialog  --sleep 1 --title "LIGHTGUNS PACKS INFO" --msgbox " 
<-------------WELCOME--------------->
WHATS THIS DO?
- CHECKS FOR CORRECT EMU FOR PACK.
- DOWNLOAD/INSTALLS EMU IF NECESSARY.
- DOWNLOADS LIGHTGUN GAME PACKS TO /home/pi/RetroPie/roms/gun-games/system-name
- EDITS ES_SYSTEMS.CFG TO ADD GUN SYSTEMS.
F.A.Q
WILL THIS OVERWRITE MY GAMES?
--NOPE 
 
CAN I STOP MIDWAY THRU?
--SURE PRESS CONTROL+C
WILL IT KEEP MY PROGRESS?
--YES TO LAST DOWNLOADED GAME" 0 0


if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function guns-menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "LIGHTGUN PACKS DOWNLOAD MENU " \
     --ok-button Download --cancel-button Main-Menu \
     --menu " PRESS A/ENTER TO DOWNLOAD PACK" 30 70 50 \
      + "<->CONSOLE NAME<--------------------->SIZE<---># OF GAMES " \
      1 "Gameboy Advance Hacks                  195MB     26 GAMES " \
      2 "Gameboy Hacks                            4MB     19 GAMES " \
      3 "Genesis Hacks                          197MB    191 GAMES " \
      4 "Gamegear Hacks                           1MB      4 GAMES " \
      5 "NES Hacks                              962KB      6 GAMES " \
      6 "SNES Hacks                              40MB     37 GAMES " \
      + "SNES Hacks                              40MB     37 GAMES " \
      7 "SNES Hacks                              40MB     37 GAMES " \
      + "SNES Hacks                              40MB     37 GAMES " \
      8 "SNES Hacks                              40MB     37 GAMES " \
      9 "SNES Hacks                              40MB     37 GAMES " \
     10 "SNES Hacks                              40MB     37 GAMES " \
     11 "DOWNLOAD ALL LIGHTGUN PACKS             ??MB    ??? GAMES " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) gun-pack "gbah" ;;
    2) gun-pack "gbh" ;;
    3) gun-pack "genh" ;;
    4) gun-pack "ggh" ;;
    5) gun-pack "nes" "lr-nestopia" ;;
    6) gun-pack "snes" ;;
    7) gun-pack ;;
    8) gun-pack ;;
    9) gun-pack ;;
   10) gun-pack ;;
   11) all-gun-packs ;;
    *) break ;;
    esac
  done
fi
}

function all-gun-packs() {
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
gun-pack "gba"
}


function gun-pack() {
if [ ! -d "/opt/retropie/configs/"${1}"/" ]; 
then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "DEVILS BOX WILL NOW INSTALL "${2}" "   6 40
cd "$HOME"/RetroPie-Setup && ./retropie-packages.sh ${2} ;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/gun-games/"${1}"/ -erobots=off
rm -f "$HOME"/RetroPie/roms/gun-games/"${1}"/index.html.tmp
sudo rm /opt/retropie/configs/"${1}"/emulators.cfg
sudo wget -m -r -np -nH -nd -R "index.html" "${HOST8}"/"${1}"/emulators.cfg -P /opt/retropie/configs/"${1}"/ -erobots=off
### WGET CONFIG??? CURRENT LIGHTGUN PACK HAS ONE. 
dialog  --sleep 1 --title "LIGHTGUNS PACKS EXIT INFO" --msgbox " 
" 0 0

fi
}

guns-menu
