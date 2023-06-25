#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
clear

if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
	omxplayer "$HOME"/Devils-Box/files/videos/game-packs.mp4 > /dev/null 2>&1
fi
if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function Game-Packs() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " GAME PACKS MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PICK WHICH KIND OF GAME PACK" 30 70 50 \
      1 "Console Game Packs" \
      2 "Hacked Game Packs" \
      3 "Homebrew Game Packs" \
      4 "Lightgun Game Packs" \
      5 "Translations Game Packs" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) consoles ;;
    2) hacked ;;
    3) homebrew ;;
    4) lightgun ;;
    5) translations ;;
     +) none  ;;
     *) break ;;
    esac
   done
fi
}


#-----------Consoles-----------#
function consoles() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Packs.sh
fi
}

#-----------Hacks-----------#
function hacked() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/Hacks.sh
fi
}


#-----------Homebrews-----------#
function homebrew() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Homebrews.sh
fi
}

#-----------Lightguns-----------#
function lightgun() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Lightgun-Packs.sh
fi
}

#-----------Translations-----------#
function translations() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Translations.sh
fi
}

Game-Packs
