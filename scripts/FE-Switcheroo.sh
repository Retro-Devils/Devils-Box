#!/bin/bash
AUTOSTART="/opt/retropie/configs/all/autostart.sh"

if [ ! -d /opt/retropie/configs/all/pegasus-fe/ ]; then
dialog  --sleep 1 --title "PEGASUS NOT INSTALLED !! " --msgbox " 
Taking you to Retropie Setup
GO TO-- MANAGE PACKAGES/EXPERIMENTAL/PEGASUS-FE
PRESS A TO INSTALL PEGASUS 
Then Relaunch Switcheroo" 0 0
sudo "$HOME"/RetroPie-Setup/retropie_setup.sh;
else
   if [ ! -d /opt/retropie/configs/all/attractmode ]; then
    dialog  --sleep 1 --title "ATTRACT MODE NOT INSTALLED !! " --msgbox " 
    Taking you to Retropie Setup
    GO TO-- MANAGE PACKAGES/EXPERIMENTAL/ATTRACT MODE
    PRESS A TO INSTALL ATTRACT MODE 
    Then Relaunch Switcheroo" 0 0
    sudo "$HOME"/RetroPie-Setup/retropie_setup.sh;
   else
function fe_menu() {
    mode_check
    local choice

    while true; do
        choice=$(dialog --backtitle "Front End Switcheroo Currently using $fe" --title " FE SWITCHEROO MENU V 1.1" \
            --ok-label OK --cancel-label Back \
            --menu "Which Frontend or Helper Which You Like To Use?" 25 75 20 \
	    + "<--------->FRONTENDS<--------->" \
	    1 "Switch FE Attract Mode" \
            2 "Switch FE Desktop" \
            3 "Switch FE Emu Station" \
            4 "Switch FE Pegasus FE" \
	    + "<--------->HELPERS<---------->" \
	    5 "Attract Mode WORK IN PROGRESS" \
	    6 "Open Pegasus Helper" \
	    + "<--------->UPDATE<----------->" \
	    7 "Update FE Switcheroo" \
            2>&1 > /dev/tty)

        case "$choice" in
	    +) none ;;
            1) AT_FE ;;
            2) DE_FE ;;
            3) ES_FE ;;
            4) PE_FE ;;
	    5) attract_helper ;;
   	    6) pegasus_helper ;;
	    7) update-switcheroo ;;
            *)  break ;;
        esac
    done
}
function AT_FE() {
if grep -q 'emulationstation \#auto' "$AUTOSTART"; then
    sudo sed -i 's/emulationstation \#auto/attract \#auto/g' $AUTOSTART
    echo "Attract Mode Set"
    sleep 2
    pgrep -f emulationstation|xargs sudo kill -9 > /dev/null 2>&1 &
    attract 2>&1
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
    sudo sed -i 's/pegasus-fe \#auto/attract \#auto/g' $AUTOSTART
    echo "Attract Mode Set"
    sleep 2
    pgrep -f pegasus-fe|xargs sudo kill -9 > /dev/null 2>&1 &
    attract 2>&1
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    sudo sed -i 's/startx \#auto/attract \#auto/g' $AUTOSTART
    echo "Attract Mode Set"
    sleep 2
    pgrep -f startx|xargs sudo kill -9 > /dev/null 2>&1 &
    attract 2>&1
elif grep -q 'attract \#auto' "$AUTOSTART"; then
    echo "Attract Mode Already Set"
    sleep 2
fi
mode_check
}
function DE_FE() {
if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/startx \#auto/g' $AUTOSTART
    echo "Desktop Mode Set"
    sleep 2
    pgrep -f attract|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f startx 2>&1
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
    sudo sed -i 's/pegasus-fe \#auto/startx \#auto/g' $AUTOSTART
    echo "Desktop Mode Set"
    sleep 2
    pgrep -f pegasus-fe|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f startx 2>&1
elif grep -q 'emulationstation \#auto' "$AUTOSTART"; then
    sudo sed -i 's/emulationstation \#auto/startx \#auto/g' $AUTOSTART
    echo "Desktop Mode Set"
    sleep 2
    pgrep -f emulationstation|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f startx 2>&1
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    echo "Desktop Mode Already Set"
    sleep 2
fi
mode_check
}
function ES_FE() {
if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/emulationstation \#auto/g' $AUTOSTART
    echo "EmulationStation Mode Set"
    sleep 2
    pgrep -f attract|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f emulationstation 2>&1
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
    sudo sed -i 's/pegasus-fe \#auto/emulationstation \#auto/g' $AUTOSTART
    echo "EmulationStation Mode Set"
    sleep 2
    pgrep -f pegasus-fe|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f emulationstation 2>&1
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    sudo sed -i 's/startx \#auto/emulationstation \#auto/g' $AUTOSTART
    echo "EmulationStation Mode Set"
    sleep 2
    pgrep -f startx|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f emulationstation 2>&1
elif grep -q 'emulationstation \#auto' "$AUTOSTART"; then
    echo "EmulationStation Mode Already Set"
    sleep 2
fi
mode_check
}
function PE_FE() {
if grep -q 'attract \#auto' "$AUTOSTART"; then
    sudo sed -i 's/attract \#auto/pegasus-fe \#auto/g' $AUTOSTART
    echo "Pegasus Mode Set"
    sleep 2
    pgrep -f attract|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f pegasus-fe 2>&1
elif grep -q 'emulationstation \#auto' "$AUTOSTART"; then
    sudo sed -i 's/emulationstation \#auto/pegasus-fe \#auto/g' $AUTOSTART
    echo "Pegasus Mode Set"
    sleep 2
    pgrep -f emulationstation|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f pegasus-fe 2>&1
elif grep -q 'startx \#auto' "$AUTOSTART"; then
    sudo sed -i 's/pegasus-fe \#auto/pegasus-fe \#auto/g' $AUTOSTART
    echo "Pegasus Mode Set"
    sleep 2
    pgrep -f pegasus-fe|xargs sudo kill -9 > /dev/null 2>&1 &
    sudo openvt -c 1 -s -f emulationstation 2>&1
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
    echo "Pegasus Mode Already Set"
    sleep 2
fi
mode_check
}
function mode_check() {
if grep -q 'emulationstation \#auto' "$AUTOSTART"; then
	fe="Emulationstation Mode"
elif grep -q 'attract \#auto' "$AUTOSTART"; then
	fe="Attract Mode"
elif grep -q 'pegasus-fe \#auto' "$AUTOSTART"; then
	fe="Pegasus Mode"
elif grep -q 'startx \#auto' "$AUTOSTART"; then
	fe="Desktop Mode"
fi
}

function pegasus_helper() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PEGASUS HELPER " \
     --ok-button Select --cancel-button Exit \
     --menu "Version 0.9" 15 30 30 \
      1 "Theme Installer Menu" \
      2 "Theme Converter Menu" \
      3 "Help With Pegasus" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) peg-theme_menu ;;
    2) peg-convert_theme ;;
    3) peg-help       ;;
    +) none ;;
    *) break ;;
    esac
  done
}
function peg-theme_menu() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PEGASUS HELPER PI4" \
     --ok-button Install --cancel-button Back \
     --menu "Theme Installer Menu" 20 40 40 \
      1 "ES2---------------Nils Boneberger" \
      2 "Flixnet------------Mátyás Mustoha" \
      3 "NeoRetro Dark------Valentin MEZIN" \
      4 "SkylineOS-------------RbertoCases" \
      - "----------PREVIEWS---------------" \
      5 "--------WORK IN PROGRESS --------" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) es2      ;;
    2) flixnet  ;;
    3) neo_dark ;;
    4) skyline  ;;
    -) none ;;
    *) break ;;
    esac
  done
}
#--THEME INSTALLER--#
function es2() {
sudo wget https://archive.org/download/devils-themes/Pegasus-Themes/Pegasus_es2.zip -P /opt/retropie/configs/all/pegasus-fe/
sudo unzip -o /opt/retropie/configs/all/pegasus-fe/Pegasus_es2.zip -d /opt/retropie/configs/all/pegasus-fe/themes/ &&
sudo rm -R /opt/retropie/configs/all/pegasus-fe/themes/Pegasus_es2.zip
sudo chmod 755 /opt/retropie/configs/all/pegasus-fe/themes/es2
}
function skyline() {
sudo wget https://archive.org/download/devils-themes/Pegasus-Themes/Pegasus_skylineOS.zip -P /opt/retropie/configs/all/pegasus-fe/
sudo unzip -o /opt/retropie/configs/all/pegasus-fe/Pegasus_skylineOS.zip -d /opt/retropie/configs/all/pegasus-fe/themes/ &&
sudo rm -R /opt/retropie/configs/all/pegasus-fe/themes/Pegasus_skylineOS.zip
sudo chmod 755 /opt/retropie/configs/all/pegasus-fe/themes/skylineOS
}
function neo_dark() {
sudo wget https://archive.org/download/devils-themes/Pegasus-Themes/Pegasus_neoretro-dark.zip -P /opt/retropie/configs/all/pegasus-fe/
sudo unzip -o /opt/retropie/configs/all/pegasus-fe/Pegasus_neoretro-dark.zip -d /opt/retropie/configs/all/pegasus-fe/themes/ &&
sudo rm -R /opt/retropie/configs/all/pegasus-fe/themes/Pegasus_neoretro-dark.zip
sudo chmod 755 /opt/retropie/configs/all/pegasus-fe/themes/neoretro-dark
}
function flixnet() {
sudo wget https://archive.org/download/devils-themes/Pegasus-Themes/Pegasus_flixnet.zip -P /opt/retropie/configs/all/pegasus-fe/
sudo unzip -o /opt/retropie/configs/all/pegasus-fe/Pegasus_flixnet.zip -d /opt/retropie/configs/all/pegasus-fe/themes/ &&
sudo rm -R /opt/retropie/configs/all/pegasus-fe/themes/Pegasus_flixnet.zip
sudo chmod 755 /opt/retropie/configs/all/pegasus-fe/themes/flixnet
}
#-------PREVIEWS----#
#function view_neo() {
#dialog  --sleep 1 --title "PREVIEW THEME" --msgbox "
#This will play an30-45 second preview video.
#Press any button to continue " 0 0
#omxplayer "$HOME"/.helpers/Pegasus-Helper-PI4-main/previews/neoretro-preview.mp4
#}

function peg-help() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PEGASUS HELPER PI4" \
     --ok-button Select --cancel-button Back \
     --menu "Help Menu" 20 40 40 \
      1 "Offical " \
      2 "Unoffical " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) peg-help-of  ;;
    2) peg-help-un  ;;
    *) break ;;
    esac
  done
}
function peg-help-of() {
dialog  --sleep 1 --title "OFFICAL HELP " --msgbox " 
-*A cross platform, customizable graphical frontend for launching emulators and managing your game collection.*-
-*All your games, in one place*-
Pegasus is a graphical frontend for browsing your game library (especially retro games) and launching them from one place. It's focusing on customizability, cross platform support (including embedded devices) and high performance.
-*A modern retro-gaming setup*-
Instead of launching different games with different emulators one by one manually, you can add them to Pegasus and launch the games from a friendly graphical screen from your couch. You can add all kinds of artworks, metadata or video previews for each game to make it look even better!
-*Full control over the UI*-
With additional themes, you can completely change everything that is on the screen. Add or remove UI elements, menu screens, whatever. Want to make it look like Kodi? Steam? Any other launcher? No problem. You can add animations and effects, 3D scenes, or even run your custom shader code.
-*Open source, cross platform, compatible with others*-
Pegasus can run on Linux, Windows, Mac, Raspberry Pi, Odroid and Android devices. It's compatible with EmulationStation metadata and gamelist files, and instantly recognizes your Steam games!
More info Visit:
https://pegasus-frontend.org/" 0 0
}
function peg-help-un() {
dialog  --sleep 1 --title "UNOFFICAL HELP " --msgbox "
--TO RUN--
Open Terminal & Type 
pegasus-fe 
--AUTOSTART AT BOOT--
Open autostart.sh text editoy.  File located at
/opt/retropie/configs/all/autostart.sh
Change emulationstation to pegasus-fe
Save & reboot.
--TO SWITCH FRONTEND EASY--
Install Frontend Switcher to switch easy.
A few teams have fe-switcher. We Devils Building one now." 0 0
}

function peg-convert_theme() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " PEGASUS HELPER " \
            --ok-label Select --cancel-label Back \
            --menu "THEME CONVERTER MENU" 25 40 40 \
            1 "List Installed ES Themes " \
            2 "Select Theme To Convert   " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) peg-list-themes ;;
            2) peg-convert     ;;
            *) break       ;;
        esac
    done
}

function peg-list-themes() {
clear
cd "/home/pi/.emulationstation/themes/"
ls
read -n 1 -s -r -p "Above Is A List Of Installed Themes-----Press any key to Continue"
}

function peg-convert() {
echo "Please type theme name and press Enter"
read theme
cd "/home/pi/.emulationstation/themes/$theme"
"$HOME"/Devils-Box/helpers/pegasusfe/pegasus-converter/convert.py ..
read -n 1 -s -r -p "Above Is Converting Results-----Press any key to Continue"
}

function update-switcheroo() {
clear
echo "---UPDATING FE SWITCHEROO NOW---"
sleep 5
sudo rm -r "$HOME"/RetroPie/retropiemenu/icons/FE-Switcheroo.png
sudo rm -R "$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh
sudo rm -R /usr/local/bin/switcheroo
sudo rm -r "$HOME"/.attract/tools/FE-Switcheroo.sh
sudo rm -r "$HOME"/Devils-Box/scripts/FE-Switcheroo.sh
wget https://raw.githubusercontent.com/Retro-Devils/FE-Switcheroo/main/FE-Switcheroo.sh -P "$HOME"/Devils-Box/scripts/
sudo wget https://raw.githubusercontent.com/Retro-Devils/FE-Switcheroo/main/switcheroo -P /usr/local/bin
cp "$HOME"/Devils-Box/scripts/FE-Switcheroo.sh -P "$HOME"/.attract/tools/
chmod 755 "$HOME"/.attract/tools/FE-Switcheroo.sh
sudo chmod 755 /usr/local/bin/switcheroo
echo "UPDATE COMPLETE"
sleep 2 
}

fe_menu
  fi
fi
