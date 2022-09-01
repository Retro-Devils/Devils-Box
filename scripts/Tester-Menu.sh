#!/bin/bash
IFS=';'

function correct() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "TESTERS & DEVILS MENU  " \
     --ok-button Select --cancel-button Back \
     --menu " TEST SOMETHING " 30 70 50 \
      + "--FINISHED OR CLOSE TO IT--" \
      1 "Collections Helper " \
      2 "Icon Helper " \
      + "--UNFINISHED/NOT WORKING--" \
      3 "Pick & Choose Ports" \
      + "--------------- " \
      4 "Update Testers Menu" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) bash "$HOME"/Devils-Box/helpers/emulationstation/Collections.sh ;;
    2) bash "$HOME"/Devils-Box/helpers/emulationstation/Icon-Helper.sh ;;
    +) none ;;
    3) ports ;;
    +) no ;;
    4) update-test ;;
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
bash "$HOME"/Devils-Box/scripts/GTA3-Setup.sh
}
function GTA-VC(){
bash "$HOME"/Devils-Box/scripts/GTA-VC-Setup.sh
}
function jedi-academy() {
bash "$HOME"/Devils-Box/scripts/jedi-academy.sh
}
function jedi-outcast(){
bash "$HOME"/Devils-Box/scripts/jedi-outcast.sh
}

function update-test() {
sudo rm "$HOME"/Devils-Box/scripts/Tester-Menu.sh
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Box/main/scripts/Tester-Menu.sh -P "$HOME"/Devils-Box/scripts/
}

echo
read -p "PLEASE ENTER CODE  " useranswer
echo
echo "YOU ENTERED ${useranswer} ..PROCESSING.. "
sleep 2
if [ $useranswer = "420" ]; then correct; else omxplayer "$HOME"/Devils-Box/files/videos/droids.mp4; fi
