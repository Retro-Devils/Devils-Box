#!/bin/bash

function es-helper() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "ES HELPER " \
     --ok-button Select --cancel-button Exit \
     --menu "Version 0.9" 15 30 30 \
      1 "Collections" \
      2 "Themes " \
      3 "Info " \
       2>&1 >/dev/tty)
    
    case "$choice" in
    1) collections ;;
    2) es-themes ;;
    3) info  ;;
    *) break ;;
    esac
  done
}

function collections() {
bash "$HOME"/Devils-Box/helpers/emulationstation/Collections.sh
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
   whiptail --clear --title "PICK & CHOOSE ATOMISWAVE" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \ 
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
           -) nono ;;
           5) devil-logos "battletoads" ;;
           6) devil-logos "capcom" ;;
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

function es-themes() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "ES HELPER " \
     --ok-button Select --cancel-button Exit \
     --menu "Version 0.9" 15 30 30 \
      1 "Community Themes" \
      2 "Devils Themes" \
      3 "ES Theme Menu" \
      4 "Hurstys Themes" \
       2>&1 >/dev/tty)
    
    case "$choice" in
    1) community-themes ;;
    2) devils-themes ;;
    3) es-themes  ;;
    4) hursty-themes ;;
    *) break ;;
    esac
  done
}

function es-themes () {
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch /home/pi/RetroPie/retropiemenu/esthemes.rp
}

function hursty-themes () {
if [ -f "/home/pi/RetroPie/retropiemenu/hurstythemes.sh" ]; then
/home/pi/RetroPie/retropiemenu/hurstythemes.sh
else
wget https://raw.githubusercontent.com/RetroHursty69/HurstyThemes/master/install.sh
chmod +x "install.sh"
./install.sh
fi
}

function devil-themes() {
local choice 

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS THEMES MENU " \ 
    --ok-label Select --cancel-label Main-Menu \ 
    --menu "SELECT THEME AND PRESS A " 20 50 30 \ 
     1 "Devil Chromey " \ 
     2 "Neon I.B.A.D " \ 
     2>&1 >/dev/tty) 
     
   case "$choice" in 
   1) devil-chromey ;; 
   2) neon-ibad ;; 
   *) break ;; 
   esac 
 done
 }
 
function devil-chromey() {
wget https://archive.org/download/devils-themes/devil-chromey.zip -P ${HOME}/
unzip -o "$HOME"/devil-chromey.zip -d /home/pi/.emulationstation/themes/
sudo rm -R "$HOME"/devil-chromey.zip
} 
 
function neon-ibad() {
wget https://archive.org/download/devils-themes/NEON-IBAD.zip -P ${HOME}/
unzip -o "$HOME"/NEON-IBAD.zip -d /home/pi/.emulationstation/themes/
sudo rm -R "$HOME"/NEON-IBAD.zip
}

function info() { 


es-helper
