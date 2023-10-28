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
LG_HOST1="https://archive.org/download/RPI-Lightgun-Games"
LG_HOST2="https://archive.org/download/sinden_barebones_rompack"
LG_HOST3="https://archive.org/download/RPI-Lightgun-Games/zips/"

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
      1 "3D0                             3.1GB         9 GAMES" \
      2 "Arcade                          5.9GB      100+ GAMES" \
      3 "Atari2600                        16KB         2 GAMES" \
      4 "Commadore64                     900KB        22 GAMES" \
      5 "Dreamcast                       1.5GB         5 GAMES" \
      6 "Daphne Actionmax                3.4GB         7 GAMES" \
      7 "Daphne Hypseus                 10.5GB         9 GAMES" \
      8 "Daphne Hypseus HD              11.8GB         7 GAMES" \
      9 "Mastersystem                    1.2MB        13 GAMES" \
      10 "Megadrive                      4.5MB         8 GAMES" \
      11 "NES                             10MB        15 GAMES" \
      12 "NES Hacks                      400KB        16 GAMES" \
      13 "Playstation 1                    6GB        28 GAMES" \
      14 "Plug N Play                     10MB         3 GAMES" \
      15 "SNES                             20MB        18 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) lg-pack "3d0" "3d0" ;;
    2) lg-pack "arcade" "arcade" ;;
    3) lg-pack "atari2600" "atari2600" ;;
    4) lg-pack "c64" "c64" ;;
    5) lg-pack "dreamcast" "dreamcast" ;;
    6) lg-pack "daphne-actionmax" "daphne" ;;
    7) lg-pack "daphne-hypseus" "daphne" ;;
    8) lg-pack "daphne-hypseusHD" "daphne" ;;
    9) lg-pack "mastersystem" "mastersystem" ;;
    10) lg-pack "megadrive" "megadrive" ;;
    11) lg-pack "nes" "nes" ;;
    12) lg-pack "nes_hacks" "nes" ;;
    13) lg-pack "psx" "psx" ;;
    14) lg-pack "pnp" "pnp" ;; 
    15) lg-pack "snes" "snes" ;;
    -) none ;;
    *) break ;;
    esac
  done
fi
}

function lg-pack() {
wget -m -r -np -nH -nd -R "index.html" "${LG_HOST2}"/"${1}".rar -P "$HOME"/RetroPie/roms/"${2}"/Lightgun_Games/ -erobots=off
cd "$HOME"/RetroPie/roms/"${2}"/Lightgun_Games/
unzip "$HOME"/RetroPie/roms/"${2}"/Lightgun_Games/"${1}".rar
sudo rm "$HOME"/RetroPie/roms/"${2}"/Lightgun_Games/"${1}".rar
chmod 777 -R "$HOME"/RetroPie/roms/"${2}"/Lightgun_Games/
}

lightgun_menu
