#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
clear
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine_20221218"
HOST5="https://archive.org/download/devils-dos"
HOST8="https://archive.org/download/the-devils-box-alt/model3"
HOST9="https://archive.org/download/rpi-homebrews"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"

if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
omxplayer "$HOME"/Devils-Box/files/videos/translations-packs.mp4 > /dev/null 2>&1
sleep 1
dialog  --sleep 1 --title "HOMEBREW PACKS INFO" --msgbox " 
<-------------WELCOME--------------->
WHATS A HOMEBREW?
A HOMEBREW IS A GAME MADE BY SOMEONE NOT A COMPANY.
 
CAN I STOP DOWNLOAD MIDWAY THRU?
--SURE PRESS CONTROL+C
WILL IT KEEP MY PROGRESS?
--YES TO LAST DOWNLOADED GAME" 0 0
fi

if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function Homebrew-Menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " HOMEBREWS DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER TO DOWNLOAD PACK" 30 70 50 \
      + "<->CONSOLE NAME<-----------------># OF GAMES" \
      1 "Atari2600 HOMEBREWS                425 GAMES" \
      2 "Colecovision HOMEBREWS              61 GAMES" \
      3 "Gameboy Advance HOMEBREWS            1 GAMES" \
      4 "Gameboy Color HOMEBREWS             41 GAMES" \
      5 "Gameboy HOMEBREWS                  47 GAMES" \
      6 "Genesis HOMEBREWS                   9 GAMES" \
      7 "Gamegear HOMEBREWS                  2 GAMES" \
      8 "NES HOMEBREWS                     143 GAMES" \
      9 "SNES HOMEBREWS                    33 GAMES" \
       + "<--------->LAST UPDATED 9/30/22<---------->" \
       + "<->Credits to Official Rom Hack Database<->" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) homebrew-packs "atari2600" "Atari-2600-Homebrews" ;;
    2) homebrew-packs "coleco" "Colecovision-2600-Homebrews" ;;
    3) homebrew-packs "gba" "Gameboy-Advance-Homebrews" ;;
    4) homebrew-packs "gbc" "Gameboy-Color-Homebrews" ;;
    5) homebrew-packs "gb" "Gameboy-Homebrews" ;;
    6) homebrew-packs "genesis" "Gamegear-Homebrews" ;;
    7) homebrew-packs "gamegear" "Genesis-Homebrews" ;;
    8) homebrew-packs "nes" "NES-Homebrews" ;;
    9) homebrew-packs "snes" "SNES-Homebrews" ;;
     +) none  ;;
     *) break ;;
    esac
   done
fi
}

function homebrew-packs() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL "${3}"?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" ;;
      2) Homebrew-Menu ;;
      *) return ;;
    esac
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST9}"/"${2}"/ -P "$HOME"/RetroPie/roms/"${1}"/Homebrews -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/Homebrews/index.html.tmp
fi
}

Homebrew-Menu
