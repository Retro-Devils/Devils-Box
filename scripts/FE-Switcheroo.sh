#!/bin/bash
AUTOSTART="/opt/retropie/configs/all/autostart.sh"

function fe_menu() {
    mode_check
    local choice

    while true; do
        choice=$(dialog --backtitle "Front End Switcheroo Currently using $fe" --title " FE SWITCHEROO MENU V 2.5" \
            --ok-label OK --cancel-label Back \
            --menu "Please Select A Option Below" 25 75 20 \
	    + "<--------->FRONTENDS<--------->" \
	    1 "use ATTRACT MODE as FRONTEND" \
            2 "use PIXEL DESKTOP as FRONTEND" \
            3 "use EMU STATION as FRONTEND" \
            4 "use PEGASUS FE as FRONTEND" \
	    + "<--------->HELPERS<---------->" \
	    5 "Attract Mode WORK IN PROGRESS" \
	    6 "Emulation Station Helper" \
	    7 "Pegasus FE Helper" \
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
	    6) es_helper ;;
   	    7) pegasus_helper ;;
	    8) update-switcheroo ;;
            *)  break ;;
        esac
    done
}
function AT_FE() {
if [ ! -d /opt/retropie/configs/all/attractmode ]; then
dialog  --sleep 1 --title "ATTRACT MODE NOT INSTALLED !! " --msgbox " 
INSTALLING NOW" 0 0
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh attractmode
AT_FE;
else
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
fi
mode_check
}
function DE_FE() {
if [ ! -f /usr/bin/startx ]; then
dialog  --sleep 1 --title "PIXEL DESKTOP NOT INSTALLED !! " --msgbox " 
INSTALLING NOW" 0 0
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh raspbiantools lxde
DE_FE;
else
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
if [ ! -d /opt/retropie/configs/all/pegasus-fe/ ]; then
dialog  --sleep 1 --title "PEGASUS NOT INSTALLED !! " --msgbox "
INSTALLING NOW" 0 0
cd "$HOME"/RetroPie-Setup
sudo ./retropie_packages.sh pegasus-fe
PE_FE;
else
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

function es_helper() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "ES HELPER " \
     --ok-button Select --cancel-button Exit \
     --menu "Version 0.9" 15 30 30 \
      1 "Collections Maker" \
      2 "Devils Themes" \
      3 "ES Theme Menu" \
      4 "Hurstys Themes" \
       2>&1 >/dev/tty)
    
    case "$choice" in
    1) collections ;;
    2) devils-themes ;;
    3) es-themes  ;;
    4) hursty-themes ;;
    *) break ;;
    esac
  done
}
function collections() {
bash "$HOME"/Devils-Box/helpers/Collections.sh
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
     --ok-button Select --cancel-button Exit \
     --menu "Theme Installer Menu" 20 40 40 \
      1 "ES2---------------Nils Boneberger" \
      2 "Flixnet------------Mátyás Mustoha" \
      3 "NeoRetro Dark------Valentin MEZIN" \
      4 "SkylineOS-------------RbertoCases" \
      - "----------PREVIEWS---------------" \
      5 "NeoRetro Preview-----------------" \
      6 "SwitchOS Preview-----------------" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) es2      ;;
    2) flixnet  ;;
    3) neo_dark ;;
    4) skyline  ;;
    -) none ;;
    5) view_neo ;;
    6) view_switchos ;;
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
#function preview_pegasus() {
#dialog  --sleep 1 --title "PREVIEW FRONTEND" --msgbox "
#This will play a 30-45 second preview video.
#Press any button to continue " 0 0
#omxplayer "$HOME"/Devils-Box/helpers/pegasusfe/previews/pegasus-fe.mp4
#}
#function preview_attractmode() {
#dialog  --sleep 1 --title "PREVIEW FRONTEND" --msgbox "
#This will play a 30-45 second preview video.
#Press any button to continue " 0 0
#omxplayer "$HOME"/Devils-Box/helpers/attractmode/previews/attractmode.mp4
#}
#-PEGASUS PREVIEWS-#
function view_neo() {
dialog  --sleep 1 --title "PREVIEW PEGASUS THEME" --msgbox "
This will play a 30-45 second preview video.
Press any button to continue " 0 0
omxplayer "$HOME"/Devils-Box/helpers/pegasusfe/previews/neoretro-preview.mp4
}

function view_switchos() {
dialog  --sleep 1 --title "PREVIEW PEGASUS THEME" --msgbox "
This will play a 30-45 second preview video.
Press any button to continue " 0 0
omxplayer "$HOME"/Devils-Box/helpers/pegasusfe/previews/switchOS-preview.mp4
}

#------------ATTRACT MODE PREVIEWS--------------#
#function view_devilspin() {
#dialog  --sleep 1 --title "PREVIEW ATTRACTMODE THEME" --msgbox "
#This will play a 30-45 second preview video.
#Press any button to continue " 0 0
#omxplayer "$HOME"/Devils-Box/helpers/attractmode/previews/devilspin.mp4
#}

function peg-help() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PEGASUS HELPER PI4" \
     --ok-button Select --cancel-button Exit \
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
Open autostart.sh text edit to say.  File located at
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
            1) list-themes ;;
            2) convert     ;;
            *) break       ;;
        esac
    done
}

function list-themes() {
clear
cd "/home/pi/.emulationstation/themes/"
ls
read -n 1 -s -r -p "Above Is A List Of Installed Themes-----Press any key to Continue"
}

function convert() {
if [ ! -d /home/pi/es-pegasus-theme-converter ]; then
    echo -e "$(tput setaf 2)ES Pegasus Theme Converter Missing Will Download Now! $(tput sgr0)"
    sleep 3

        if [ $NETCONNECTED  = 1 ]; then
        dialog  --sleep 1 --title "OFFLINE?" --msgbox " 
        Your Offline. Please Connect To The Internet And Try Again! Now Backing Out To Main Menu!" 0 0 
	quit
	else
        git clone -b master "https://github.com/mmatyas/es-pegasus-theme-converter.git"
        clear
	cd
    fi

fi
    cd "/home/pi/.emulationstation/themes/"
    echo "Please type theme name and press Enter"
    read theme
    /home/pi/es-pegasus-theme-converter/convert.py /etc/emulationstation/themes/$theme /opt/retropie/configs/all/pegasus-fe/theme/$theme
    read -n 1 -s -r -p "Above Is Converting Results-----Press any key to Continue"
    cd
}

function update-switcheroo() {
if [ -f "$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh ]; then
echo "---UPDATING FE SWITCHEROO NOW---"
sleep 5
sudo rm -r "$HOME"/RetroPie/retropiemenu/icons/FE-Switcheroo.png
sudo rm -R "$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh
sudo rm -R /usr/local/bin/switcheroo
sudo rm -r "$HOME"/.attract/tools/FE-Switcheroo.sh
wget https://raw.githubusercontent.com/Retro-Devils/FE-Switcheroo/main/FE-Switcheroo.sh -P "$HOME"/RetroPie/retropiemenu/
wget https://github.com/Retro-Devils/FE-Switcheroo/blob/main/FE-Switcheroo.png -P "$HOME"/RetroPie/retropiemenu/icons/
sudo wget https://raw.githubusercontent.com/Retro-Devils/FE-Switcheroo/main/switcheroo -P /usr/local/bin
chmod 755 "$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh
chmod 755 "$HOME"/.attract/tools/FE-Switcheroo.sh
sudo chmod 755 /usr/local/bin/switcheroo
cp "$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh -P "$HOME"/.attract/tools/
echo "UPDATE COMPLETE LAUNCHING SWITCHEROO"
"$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh
sleep 2 
else
echo "---INSTALLING FE SWITCHEROO NOW---"
sleep 5
wget https://raw.githubusercontent.com/Retro-Devils/FE-Switcheroo/main/FE-Switcheroo.sh -P "$HOME"/RetroPie/retropiemenu/
sudo wget https://raw.githubusercontent.com/Retro-Devils/FE-Switcheroo/main/switcheroo -P /usr/local/bin
wget https://github.com/Retro-Devils/FE-Switcheroo/blob/main/FE-Switcheroo.png -P "$HOME"/RetroPie/retropiemenu/icons/
chmod 755 "$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh
sudo chmod 755 /usr/local/bin/switcheroo
mkdir "$HOME"/.attract/tools/
cp "$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh -P "$HOME"/.attract/tools/
cp "$HOME"/RetroPie/retropiemenu/Devils-Box.sh -P "$HOME"/.attract/tools/
chmod 755 "$HOME"/.attract/tools/
echo "INSTALL COMPLETE LAUNCHING SWITCHEROO"
sleep 2
"$HOME"/RetroPie/retropiemenu/FE-Switcheroo.sh
fi
}
fe_menu
