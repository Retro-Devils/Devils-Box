wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  NETCHECK=0
else
  NETCHECK=1
fi

if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR !! " --msgbox " 
Offline...Connect Internet To Use Pegasus Helper!" 0 0
else
   if [ ! -d /opt/retropie/configs/all/pegasus-fe/themes ]; then
    dialog  --sleep 1 --title "PEGASUS NOT INSTALLED !! " --msgbox " 
    Taking you to Retropie Setup
    GO TO-- MANAGE PACKAGES/EXPERIMENTAL/PEGASUS-FE
    PRESS A TO INSTALL PEGASUS
    Then Relaunch Pegasus Helper" 0 0
    sudo "$HOME"/RetroPie-Setup/retropie_setup.sh;
   else
function main_menu() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PEGASUS HELPER " \
     --ok-button Select --cancel-button Exit \
     --menu "Version 0.9" 15 30 30 \
      1 "Theme Installer Menu" \
      2 "Theme Converter Menu" \
      3 "Help With Pegasus" \
      + "----------------------------" \
      4 "Update This Helper" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) theme_menu ;;
    2) convert_theme ;;
    3) help       ;;
    +) none ;;
    4) update     ;;
    *) break ;;
    esac
  done
}
function theme_menu() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PEGASUS HELPER PI4" \
     --ok-button Select --cancel-button Exit \
     --menu "Theme Installer Menu" 20 40 40 \
      1 "ES2---------------Nils Boneberger" \
      2 "Flixnet------------Mátyás Mustoha" \
      3 "NeoRetro Dark------Valentin MEZIN" \
      4 "SkylineOS-------------RbertoCases" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) es2      ;;
    2) flixnet  ;;
    3) neo_dark ;;
    4) skyline;;
    *) break ;;
    esac
  done
}
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
function help() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PEGASUS HELPER PI4" \
     --ok-button Select --cancel-button Exit \
     --menu "Help Menu" 20 40 40 \
      1 "Offical " \
      2 "Unoffical " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) help-of  ;;
    2) help-un  ;;
    *) break ;;
    esac
  done
}
function help-of() {
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
function help-un() {
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
function update() {
curl -sSL https://bit.ly/3sx1QM5 | bash
}

function convert_theme() {
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
echo "Please type theme name and press Enter"
read theme
cd "/home/pi/.emulationstation/themes/$theme"
"$HOME"/Devils-Box/files/pegasusfe/pegasus-converter/convert.py ..
read -n 1 -s -r -p "Above Is Converting Results-----Press any key to Continue"
}

main_menu
  fi
fi
