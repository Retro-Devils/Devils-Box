#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
clear
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine"
HOST5="https://archive.org/download/devils-dos"
HOST8="https://archive.org/download/the-devils-box-alt/model3"
HOST9="https://archive.org/download/rpi-homebrews"
HOST10="https://archive.org/download/rpi-translations"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"

if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function Translations-Menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " TRANSLATIONS DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER TO DOWNLOAD PACK" 30 70 50 \
      + "<->CONSOLE NAME<-------------------># OF GAMES" \
      1 "Atari2600 TRANSLATIONS               425 GAMES" \
      2 "Colecovision TRANSLATIONS             61 GAMES" \
      3 "Gameboy Advance TRANSLATIONS           1 GAMES" \
      4 "Gameboy Color TRANSLATIONS            41 GAMES" \
      5 "Gameboy TRANSLATIONS                 47 GAMES" \
      6 "Genesis TRANSLATIONS                  9 GAMES" \
      7 "Gamegear TRANSLATIONS                 2 GAMES" \
      8 "NES TRANSLATIONS                    143 GAMES" \
      9 "PSP TRANSLATIONS                     23 GAMES" \
      10 "SNES TRANSLATIONS                   33 GAMES" \
      + "<---------->LAST UPDATED 9/30/22<----------->" \
      + "<-->Credits to Official Rom Hack Database<-->" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) translation-packs "atari2600" "Atari-2600-Translations" ;;
    2) translation-packs "coleco" "Colecovision-2600-Translations" ;;
    3) translation-packs "gba" "Gameboy-Advance-Translations" ;;
    4) translation-packs "gbc" "Gameboy-Color-Translations" ;;
    5) translation-packs "gb" "Atari-2600-Translations" ;;
    6) translation-packs "gamegear" "Gamegear-Translations" ;;
    7) translation-packs "genesis" "Genesis-Translations" ;;
    8) translation-packs "nes" "NES-Translations" ;;
    9) translation-packs "psp" "PSP-Translations" ;;
    10) translation-packs "snes" "SNES-Translations" ;;
     +) none  ;;
     *) break ;;
    esac
   done
fi
}

function translation-packs() {
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
wget -m -r -np -nH -nd -R "index.html" "${HOST10}"/"${2}"/ -P "$HOME"/RetroPie/roms/"${1}"/Translations -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
}

Translations-Menu
