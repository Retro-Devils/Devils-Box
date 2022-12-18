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
HOST10="https://archive.org/download/rpi-translations"

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
WHATS ARE TRANSLATIONS?
THESE GAME PACKS ARE TRANSLATED FROM LANGUAGE TO ENGLISH.
THIS IS DONE BY THE COMMUNITY/INDIVUALS.
 
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
      1 "3DO TRANSLATIONS                       2 GAMES" \
      2 "Dreamcast TRANSLATIONS                 5 GAMES" \
      3 "Gameboy Color TRANSLATIONS            20 GAMES" \
      4 "Gameboy TRANSLATIONS                  59 GAMES" \
      5 "Gamegear TRANSLATIONS                 15 GAMES" \
      6 "NDS TRANSLATIONS                       1 GAMES" \
      7 "Playstation TRNASLATIONS               7 GAMES" \
      8 "Saturn TRANSLATIONS                    1 GAMES" \
      9 "Super Famicon TRANSLATIONS           232 GAMES" \
      + "<---------->LAST UPDATED 9/30/22<----------->" \
      + "<-->Credits to Official Rom Hack Database<-->" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) translation-packs "3do" "3DO-Translations" ;;
    2) translation-packs "dreamcast" "Dreamcast-Translations" ;;
    3) translation-packs "gbc" "Gameboy-Color-Translations" ;;
    4) translation-packs "gb" "Gameboy-Translations" ;;
    5) translation-packs "gamegear" "Gamegear-Translations" ;;
    6) translation-packs "nds" "NDS-Translations" ;;
    7) translation-packs "psx" "Playstation-Translations" ;;
    8) translation-packs "saturn" "Saturn-Translations" ;;
    9) translation-packs "sfc" "Super-Famicon-Translations" ;;
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
