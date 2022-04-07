#!/bin/bash
IFS=';'

echo
read -p "PLEASE ENTER CODE" useranswer

echo
echo "YOU ENTERED ${useranswer} ..PROCESSING.. "
sleep 5

if [ $useranswer = "420" ]; then
omxplayer "$HOME"/Devils-Box/files/videos/droids.mp4 
correct
fi

function correct() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "TESTERS & DEVILS MENU  " \
     --ok-button Download --cancel-button Main-Menu \
     --menu " PRESS SOMETHING " 30 70 50 \
      + "--FINISHED OR CLOSE TO IT--" \
      1 "Collections Helper " \
      2 "Loading Images " \
      3 "Loading Videos  " \
      4 "--------------- " \
      + "--UNFINISHED/NOT WORKING--" \
      5 "Pick & Choose Ports" \
      6 "Aimtrack Setup " \
      7 "--------------- " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) bash "$HOME"/Devils-Box/helpers/emulationstation/Collections.sh ;;
    2) bash "$HOME"/Devils-Box/scripts/Launch-Images.sh ;;
    3) bash "$HOME"/Devils-Box/scripts/Launch-Videos.sh ;;
    4) no ;;
    +) none ;;
    5) ports ;;
    6) aimtrack ;;
    7) no ;;
    *) break ;;
    esac
  done
}

function ports() {
        local choice
    whiptail --clear --title "PICK & CHOOSE PORTS" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
            "1" "Grand Theft Auto 3" off \
	    "2" "GTA Vice City" off \
	    "3" "Jedi Academy" off \
	    "4" "Jedi Outcast" off \
	    2>/tmp/results
    while read -r choice  
        do
        case $choice in
	     1) GTA3 ;;
	     2) GTA-VC ;;
	     3) jedi-academy ;;
	     4) jedi-outcast ;;
             *) ;;
        esac
        done < /tmp/results
}

function GTA3() {
bash /home/pi/Devils-Box/scripts/GTA3-Setup.sh
}
function GTA-VC(){
bash /home/pi/Devils-Box/scripts/GTA-VC-Setup.sh
}
function jedi-academy() {
bash /home/pi/Devils-Box/scripts/jedi-academy.sh
}
function jedi-outcast(){
bash /home/pi/Devils-Box/scripts/jedi-outcast.sh
}
function aimtrack(){
bash /home/pi/Devils-Box/scripts/Aimtrack.sh
}
