#!/bin/bash
dialog --sleep 1 --title "COLLECTIONS MENU" --msgbox"
------YOU WILL NEED A KEYBOARD------
---THIS MAKES COLLECTIONS FOR YOU---" 0 0

function collections-menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "COLLECTIONS MEMU" \
            --ok-label Select --cancel-label Back \
            --menu "COLLECTIONS MAKER MENU" 25 40 40 \
            1 "How To Use This ???" \
            2 "List Installed ES Themes " \
            3 "Pick Collections To Make " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) how-to ;;
            2) list-themes ;;
            3) pick-collections ;;
            *) break       ;;
        esac
    done
}

function how-to() {
dialog  --sleep 1 --title "COLLECTIONS HOW TO" --msgbox "
1. Click -List Installed ES Themes- To See Themes
2. Click -Select Collections To Make-
3. Type Theme You Want To Add Collections Too
4. Select Collection(s) You Want To Add To Theme
5. Let it run
6. ENJOY !!!

----------- Frequently Asked Questions--------
- What Art is Used? 
       Hurstys Chromey Wheels

- Why Make this?
       Too Make your life easier" 0 0
}

function list-themes() {
clear
cd "/home/pi/.emulationstation/themes/"
ls
read -n 1 -s -r -p "Above Is A List Of Installed Themes-----Press any key to Continue"
}

function pick-collections() { 
       local choice
   whiptail --clear --title "PICK COLLECTIONS MENU" --separate-output --checklist "Choose Collection(s) and click Download:" 0 0 0 \ 
      --ok-button Download --cancel-button Back \
               "+" "---Hurstys Chromey Wheel---" off \
               "1" "Battletoads Collection" off \
               "2" "Capcom Collection" off \
               "3" "Fighters  Collection" off \
               "4" "Shooters Collection" off |
                2>/tmp/results 
    while read -r choice
        do
        case $choice in
           +) none ;;
           1) hursty-logos "battletoads" ;;
           2) hursty-logos "capcom" ;;
           3) hursty-logos "fighters" ;; 
           4) hursty-logos "shooters" ;;
           *) ;;
        esac
        done < /tmp/results
}

function hursty-logos() {
cd "/home/pi/.emulationstation/themes/"
echo "Please type theme name and press Enter"
read theme
cd ~/$theme
mkdir ~/"${1}"
cd ~/"${1}"
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/Devil-Chromey/"${1}"/_inc/system.png -P /home/pi/.emulationstation/themes/$theme/"${1}"
cd 
read -n 1 -s -r -p "Thanks For Using-----Press any key to Continue"
cd
}
function devil-logos() {
cd "/home/pi/.emulationstation/themes/"
echo "Please type theme name and press Enter"
read theme
cd ~/$theme
mkdir ~/"${1}"
cd ~/"${1}"
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/NEON-IBAD/"${1}"/_inc/system.png -P /home/pi/.emulationstation/themes/$theme/"${1}"
cd 
read -n 1 -s -r -p "Thanks For Using-----Press any key to Continue"
cd
}

collections-menu