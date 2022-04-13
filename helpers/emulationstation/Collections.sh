#!/bin/bash
clear
dialog --sleep 1 --title "COLLECTIONS MENU" --msgbox"
------YOU WILL NEED A KEYBOARD------
---THIS MAKES COLLECTIONS FOR YOU---" 0 0

function collections_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "COLLECTIONS HELPER V1.0" \
            --ok-label Select --cancel-label Back \
            --menu "COLLECTIONS HELPER MENU" 25 40 40 \
            1 "How To Use Helper ???" \
            2 "List Installed ES Themes " \
            3 "Pick Collections To Make " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) how-to ;;
            2) list-themes ;;
            3) pick-collections ;;
            *) break ;;
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

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "COLLECTIONS HELPER V1.0" \
            --ok-label Select --cancel-label Back \
            --menu "COLLECTIONS HELPER MENU" 25 40 40 \
            + "----Hurstys Collections----" \
            1 "BeatEmUps Collection " \
            2 "Fighters Collection " \
            2>&1 > /dev/tty)

        case "$choice" in
            +) none  ;;
            1) hursty-logos "beatemups" ;;
            2) hursty-logos "fighters" ;;
            *) break ;;
        esac
    done
}
function hursty-logos() {
cd "/home/pi/.emulationstation/themes/"
echo "Please type theme name and press Enter"
read theme
cd ~/$theme
if [ -d "$HOME"/.emulationstation/themes/$theme/$1 ] 
then
mkdir ~/"${1}"
cd ~/"${1}"
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/Devil-Chromey/"${1}"/_inc/system.png -P /home/pi/.emulationstation/themes/$theme/"${1}"
cd
dialog --sleep 1 --title "COLLECTIONS EXIT MESSAGE" --msgbox"
-------THANKS FOR USING--------
TO SEE COLLECTIONS IN ES PLEASE
-GO TO RETROPIE
-PRESS START
-GOT TO UI SETTINGS
-COLLECTIONS
-GENERATE COLLECTION FROM THEME
YOU SHOULD SEE ADDED COLLECTIONS THIER" 0 0
else
dialog --sleep 1 --title "COLLECTIONS ALREADY EXSIST" --msgbox"
COLLECTION ALREADY EXSIST
- CANT GENERATE A COLLECTION THAT EXSIST" 0 0
fi
}

function ibad-logos() {
cd "/home/pi/.emulationstation/themes/"
echo "Please type theme name and press Enter"
read theme
cd ~/$theme
if [ -d "$HOME"/.emulationstation/themes/$theme/$1 ] 
then
mkdir ~/"${1}"
cd ~/"${1}"
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/NEON-IBAD/"${1}"/_inc/system.png -P /home/pi/.emulationstation/themes/$theme/"${1}"
cd
read -n 1 -s -r -p "Thanks For Using-----Press any key to Continue"
cd
dialog --sleep 1 --title "COLLECTIONS EXIT MESSAGE" --msgbox"
-------THANKS FOR USING--------
TO SEE COLLECTION IN ES PLEASE
-GO TO RETROPIE
-PRESS START
-GOT TO UI SETTINGS
-COLLECTIONS 
-GENERATE COLLECTION FROM THEME
YOU SHOULD SEE ADDED COLLECTIONS THIER" 0 0
else
dialog --sleep 1 --title "COLLECTIONS ALREADY EXSIST" --msgbox"
COLLECTION ALREADY EXSIST
- CANT GENERATE A COLLECTION THAT EXSIST" 0 0
fi
}

collections_menu
