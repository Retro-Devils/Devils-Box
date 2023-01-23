#!/bin/bash
clear
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine_20221218"
HOST5="https://archive.org/download/devils-dos"
HOST8="https://archive.org/download/the-devils-box-alt/model3"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"

#--------LIGHTGUN HOSTS--------#
LG_HOST1 ="https://archive.org/download/RPI-Lightgun-Games"
LG_HOST2 ="https://archive.org/download/sinden_barebones_rompack"

if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
	omxplayer "$HOME"/Devils-Box/files/videos/lightguns.mp4 > /dev/null 2>&1
fi
if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function lightgun_menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "LIGHTGUN PACKS" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT CONSOLE TO DOWNLOAD " 30 70 50 \
      + "<->CONSOLE NAME<---------------->SIZE<----># OF GAMES" \
      1 "NES                              10MB        15 GAMES" \
      2 "SNES                             20MB        18 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) nes-pack ;;
    2) snes-pack ;;
    -) none ;;
    *) break ;;
    esac
  done
fi
}

function nes-pack() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/sinden_barebones_rompack/nes.rar -P "$HOME"/RetroPie/roms/nes/Lightgun_Games/ -erobots=off
cd "$HOME"/RetroPie/roms/nes/Lightgun_Games/
unzip "$HOME"/RetroPie/roms/nes/Lightgun_Games/nes.rar
sudo rm "$HOME"/RetroPie/roms/nes/Lightgun_Games/nes.rar
chmod 777 -R "$HOME"/RetroPie/roms/nes/Lightgun_Games/
}

function snes-pack() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/sinden_barebones_rompack/snes.rar -P "$HOME"/RetroPie/roms/snes/ -erobots=off
cd "$HOME"/RetroPie/roms/snes/Lightgun_Games/
unzip "$HOME"/RetroPie/roms/snes/Lightgun_Games/snes.rar
sudo rm "$HOME"/RetroPie/roms/snes/Lightgun_Games/snes.rar
chmod 777 -R "$HOME"/RetroPie/roms/snes/Lightgun_Games/
}

lightgun_menu
