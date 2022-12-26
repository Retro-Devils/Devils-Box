#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
##-------------------------##
##       HOST SITES        ##
##-------------------------##
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
LG_PICK="https://archive.org/download/RPI-Lightgun-Games"


if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
	omxplayer "$HOME"/Devils-Box/files/videos/lightguns.mp4 > /dev/null 2>&1
fi
if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function lightgun_pick() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
local choice
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PICK & CHOOSE MENU" \
      --ok-label Select --cancel-label Main-Menu \
      --menu "PICK CONSOLE & CHOOSE GAME(S) " 20 50 30 \
       1 "NES" \
       2 "SNES" \
       3 "Wine" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) nes ;;
    2) snes ;;
    3) wine ;;
    *) break ;;
    esac
  done
fi
}

function nes() {
          whiptail --clear --title "PICK & CHOOSE NES" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Baby Boomer" off \
                "2" "Barker Bill's Trick Shooting" off \
                "3" "Chiller" off \
                "4" "Duck Hunt" off \
                "5" "Freedom Force" off \
                "6" "Gotcha! The Sport" off \
                "7" "Gunshoe" off \
                "8" "Hogans Alley" off \
                "9" "Laser Invansion" off \
                "10" "Lone Ranger" off \
                "11" "Mechanized Attack" off \
                "12" "Operation Wolf" off \
                "13" "Shooting Range" off \
                "14" "To The Earth" off \
                "15" "Wild Gunman" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "nes" "Baby Boomer (USA) (Unl).zip" ;;
            2) download-game "nes" "Barker Bill's Trick Shooting (Europe).zip" ;;
            3) download-game "nes" "Chiller (USA) (Unl).zip" ;;
            4) download-game "nes" "Duck Hunt (World).zip" ;;
            5) download-game "nes" "Freedom Force (USA).zip" ;;
            6) download-game "nes" "Gotcha! - The Sport! (USA).zip" ;;
            7) download-game "nes" "Gumshoe (USA, Europe).zip" ;;
            8) download-game "nes" "Hogan's Alley (World).zip" ;;
            9) download-game "nes" "Laser Invasion (USA).zip" ;;
            10) download-game "nes" "Lone Ranger, The (USA).zip" ;;
            11) download-game "nes" "Mechanized Attack (USA).zip" ;;
            12) download-game "nes" "Operation Wolf (Europe).zip" ;;
            13) download-game "nes" "Shooting Range (USA).zip" ;;
            14) download-game "nes" "To the Earth (USA).zip" ;;
            15) download-game "nes" "Wild Gunman (World) (Rev A).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}

function snes() {
          whiptail --clear --title "PICK & CHOOSE SNES" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Battle Clash" off \
                "2" "Bazooka Blitzkreig" off \
                "3" "Lethal Enforcers" off \
                "4" "Metal Combat" off \
                "5" "Lethal Enforcers" off \
                "6" "Operation Thunderbolt" off \
                "7" "Revolution X" off \
                "8" "Super Scope 6" off \
                "9" "Terminator 2" off \
                "10" "Tin Star" off \
                "11" "X Zone" off \
                "12" "Yoshi's Safari (USA).zip" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "snes" "Battle Clash.zip" ;;
            2) download-game "snes" "Bazooka Blitzkrieg.zip" ;;
            3) download-game "snes" "Lethal Enforcers.zip" ;;
            4) download-game "snes" "Faceball 2000 (USA).zip" ;;
            5) download-game "snes" "Lethal Enforcers.zip" ;;
            6) download-game "snes" "Operation Thunderbolt.zip" ;;
            7) download-game "snes" "Revolution X.zip " ;;
            8) download-game "snes" "Super Scope 6.zip" ;;
            9) download-game "snes" "Terminator 2.zip" ;;
            10) download-game "snes" "Tin Star (USA).zip" ;;
            11) download-game "snes" "X Zone.zip" ;;
            12) download-game "snes" "Yoshi's Safari (USA).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}

function download-game() {
  for type in "$@"; do
    if [ "${type}" != "${1}" ]; then
      if [ ! -d "$HOME/RetroPie/roms/"${1}"/gun-games" ]; then mkdir $HOME/RetroPie/roms/"${1}"/gun-games ; fi
      if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
      else
      clear
      wget -m -r -np -nH -nd -R "index.html" ${LG_PICK}/"${1}"/gun-games/"${type}" -P "$HOME"/RetroPie/roms/"${1}"/gun-games/ -erobots=off
      rm -f "$HOME"/RetroPie/roms/"${1}"/gun-games/index.html.tmp
fi
fi
done
}

lightgun_pick
