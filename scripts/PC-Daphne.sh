#!/bin/bash
##-------------------------##
##       HOST SITES        ##
##-------------------------##
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine"
HOST5="https://archive.org/download/devils-dos"
#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0" 
#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"
D_HOST="https://ia801007.us.archive.org/view_archive.php?archive=/6/items/daphneforretropiepart1of2/Daphne%20for%20Retropie%20-%20Part%201%20of%202.rar"



omxplayer "$HOME"/Devils-Box/files/videos/pickchoose.mp4 > /dev/null 2>&1
if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function daphne_menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
local choice
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "DAPHNE PICK & CHOOSE MENU" \
      --ok-label Select --cancel-label Main-Menu \
      --menu "PICK & DOWNLOAD A GAME " 20 50 30 \
      1 "Astron" \
      2 "Cliff" \
      3 "HOLD" \
      4 "HOLD" \
      5 "HOLD" \
      6 "HOLD" \
      7 "HOLD" \
      8 "HOLD" \
      9 "HOLD" \
      10 "HOLD" \
      11 "HOLD" \
      12 "HOLD" \
      13 "HOLD" \
      14 "HOLD" \
      15 "HOLD" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) actionmax ;;
    2) altered-carbon ;;
    3) hold ;;
    4) hold ;;
    5) hold ;;
    6) hold ;;
    7) hold ;;
    8) hold ;;
    9) hold ;;
    10) hold ;;
    11) hold ;;
    12) hold ;;
    13) hold ;;
    14) hold ;;
    15) hold ;;
    *) break ;;
    esac
  done
fi
}

function astron() {
if [ ! -d "$HOME/RetroPie/roms/daphne/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/daphneforretropiepart1of2/Daphne%20for%20Retropie%20-%20Part%201%20of%202.rar/Part%201%2FROMs%2Froms%2Fastron.zip -P "$HOME"/RetroPie/roms/daphne/roms -erobots=off
  wget -m -r -np -nH -nd -R "index.html" txt -P "$HOME"/RetroPie/roms/daphne/framefile -erobots=off
  wget -m -r -np -nH -nd -R "index.html" ogg -P "$HOME"/RetroPie/roms/daphne/roms -erobots=off
  wget -m -r -np -nH -nd -R "index.html" m2v -P "$HOME"/RetroPie/roms/daphne/roms -erobots=off
  wget -m -r -np -nH -nd -R "index.html" dat -P "$HOME"/RetroPie/roms/daphne/roms -erobots=off
  # some of above paths are incorrect
fi

# or 
# wget game.zip 
# unzip
# move stuff around
}


daphne_menu
