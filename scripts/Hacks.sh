#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine_20221218"
HOST5="https://archive.org/download/devils-dos"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"

if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
omxplayer "$HOME"/Devils-Box/files/videos/hack-packs.mp4 > /dev/null 2>&1
sleep 1
dialog  --sleep 1 --title "HACKS PACKS INFO" --msgbox " 
<-------------WELCOME--------------->
WHATS THIS DO?
-DOWNLOADS GAME PACKS TO CORRECT FOLDERS

F.A.Q
WILL THIS OVERWRITE MY GAMES?
--NOPE 
 
CAN I STOP MIDWAY THRU?
--SURE PRESS CONTROL+C
WILL IT KEEP MY PROGRESS?
--YES TO LAST DOWNLOADED GAME" 0 0
fi

if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function hacks-menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED PACKS DOWNLOAD MENU " \
     --ok-button Download --cancel-button Main-Menu \
     --menu " PRESS A/ENTER TO DOWNLOAD PACK" 30 70 50 \
      + "<->CONSOLE NAME<--------------------->SIZE<---># OF GAMES " \
      1 "Gameboy Advance Hacks                  195MB     26 GAMES " \
      2 "Gameboy Hacks                            4MB     19 GAMES " \
      3 "Genesis Hacks                          197MB    191 GAMES " \
      4 "Gamegear Hacks                           1MB      4 GAMES " \
      5 "NES Hacks                              962KB      6 GAMES " \
      6 "SNES Hacks                              40MB     37 GAMES " \
      + "<->ALL IN ONE CLICK <------------------------------------>" \
      7 "Apply Configs & Download All Hack Packs  " \
      + "<->TOOLS------------------------------------------------- " \
      8 "Apply/Update Hacks Configs                      6 Configs " \
      9 "GET ES-SYSTEMS CONFIG                              1 File " \
     10 "PRESS HERE FOR HELP WITH HACKS DOWNLOADER" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) download-hacks "gbah" ;;
    2) download-hacks "gbh" ;;
    3) download-hacks "genh" ;;
    4) download-hacks "ggh" ;;
    5) download-hacks "nesh" ;;
    6) download-hacks "snesh" ;;
    7) all ;;
    8) hacks-config ;;
    9) get-config ;;
   10) help-me ;;
    *) break ;;
    esac
  done
fi
}

function all() {
hacks-config
download hacks "gba"
download hacks "gbah"
download hacks "snesh"
download hacks "genh"
download-hacks "ggh" 
}

function hacks-config() {
clear
sleep 2 
echo ${bld}$(tput setaf 1)"Copying Your/Default Configs"
sleep 2
cp -r /opt/retropie/configs/gba /opt/retropie/configs/gbah
cp -r /opt/retropie/configs/gb /opt/retropie/configs/gbh
cp -r /opt/retropie/configs/megadrive /opt/retropie/configs/genh
cp -r /opt/retropie/configs/gamegear /opt/retropie/configs/ggh
cp -r /opt/retropie/configs/nes /opt/retropie/configs/nesh
cp -r /opt/retropie/configs/snes /opt/retropie/configs/snesh
sleep 2
echo "Making Directories For Hacks"
sleep 2
mkdir "$HOME"/RetroPie/roms/gbah
mkdir "$HOME"/RetroPie/roms/gbh
mkdir "$HOME"/RetroPie/roms/genh
mkdir "$HOME"/RetroPie/roms/ggh
mkdir "$HOME"/RetroPie/roms/nesh
mkdir "$HOME"/RetroPie/roms/snesh
}

function help-me() {
dialog  --sleep 1 --title "HACKS HELP MESSAGE" --msgbox " 
<-------------FAQ & HELP----------------->
GAMES DONT SHOW?
YOUR ES SYSTEMS PROBABLY DOESNT HAVE HACKS.

WHAT CAN I DO?
YOU CAN GO BACK AND PRESS GET ES-SYSTEMS CONFIG
OR
YOU CAN MAUNAULLY ADD HACKS. HOW ?
GO TO /home/pi/.emulationstation/es_systems.cfg
EDIT THIS FILE WITH TEXT EDITOR
COPY GB AND ADD HACKS AT THE END" 0 0
}

function download-hacks() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Apply Hacks Config" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
}

function get-config() {
dialog --sleep 1 --title "GET ES SYSTEMS INFO" --msgbox "
<----> ATTENTION <---->
THIS WILL OVERWRITE OR ES-SYSTEMS.CFG
THIS WILL ALSO BACKUP ES-SYSTEMS TO .../.emulationstation/backups/b4hacks.cfg" 0 0
mv "$HOME"/.emulationstation/es_systems.cfg -f "$HOME"/.emulationstation/backups/b4hacks.cfg
wget https://archive.org/download/devils-updates/es_systems.cfg -P "$HOME"/.emulationstation/
}

hacks-menu
