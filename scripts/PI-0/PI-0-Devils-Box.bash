#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="My name is... Shake-Zula. The mic-rula, The old schoolah, Ya wanna trip? I'll bring it to ya"
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"

#-----------COLORS----------#
rst="$(tput sgr0)"
fgred="${rst}$(tput setaf 1)"
bld="$(tput bold)"
bfgred="${bld}$(tput setaf 1)"

#-----------INTRO VIDEO-----------#
clear
if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
	omxplayer "$HOME"/Devils-Box/files/videos/intro.mp4  > /dev/null 2>&1
fi

#-----------MAIN MENU-----------#
function main_menu() {
  local choice

  while true; do
  DB_STATUS=0
  if [ -f /usr/local/bin/box ] && [ -f /usr/local/bin/Devils-Box ]; then 
    DB_STATUS=1
  fi
    choice=(dialog --backtitle "$BACKTITLE" --title "MAIN MENU " \
      --ok-label Select --cancel-label Exit-Devils-Box \
      --menu "DEVILS BOX--------------PI ZERO V1.0" 23 50 30 )
    if [ "$DB_STATUS" == 1 ]; then
      options=( \
      - "<---->Downloaders<------>"
      1 "Artwork Packs"
      2 "Console Packs"
      3 "Hacked Packs"
      4 "Homebrew Packs"
      5 "Pick & Choose"
      6 "Translations Packs"
      + "<---->Tool Boxes<------->"
      7 "Community Tool Box"      
      8 "Devils Tool Box"
      - "<---->System Tools<----->"
      9 "Reboot System"
      10 "Show System Info"
      11 "Expand System Memory"
      - "<----------------------->" 
      12 "Devils Box Credits")
    else
      options=( \
      1 "Install Devils-Box")
    fi
    choice=$("${choice[@]}" "${options[@]}" 2>&1 >/dev/tty)
    case $choice in
    1) if [ "$DB_STATUS" == 1 ]; then artwork; else curl -sSL https://git.io/JSDGq | bash; fi; ;;
    2) consoles ;;
    3) hacked ;;
    4) homebrew ;;
    5) pick ;;
    6) translations ;;
    7) general_toolbox ;;
    8) devils_tools ;;
    9) system_reboot ;;
    10) show_sysinfo ;;
    11) expand_mem ;;
    12) credits ;;
    -) nono ;;
    +) none ;;
    *) break ;;
    esac
  done
}

#-----------Artwork-----------#
function artwork() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-0/PI0-Artwork.sh
fi
}

#-----------Consoles-----------#
function consoles() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-0/PI0-Packs.sh
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
bash "$HOME"/Devils-Box/scripts/PI-0/PI0-Homebrews.sh
fi
}

#-----------PickChoose-----------#
function pick() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-0/PI0-PickChoose.sh
fi
}

#-----------Translations-----------#
function translations() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/Translations.sh
fi
}


#-----------GENERAL TOOL BOX MENU FUNCTIONS-----------#
function general_toolbox() {
  while true; do
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " GENERAL TOOL BOX MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOLSET AND PRESS A  " 20 50 30 \
      1 "Community Audio & Visual Tools " \
      2 "Community Emulator Tools " \
      3 "Community Hardware Tools " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) comm_audio ;;
    2) comm_emu_tools ;;
    3) comm_hardware_tools ;;
    *) break ;;
    esac
  done
}


#-----------COMMUNITY AUDIO & VISUAL TOOLS FUNCTIONS-----------#
function comm_audio() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " AUDIO & VISUAL TOOLS MENU" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 70 50 \
      + "<------------------->Visual Tools<------------------------> " \
      1 "Emulation Station Themes---------------------------Retropie " \
      2 "Hursty's Themes--------------------------------------Hursty " \
      3 "Pie Marquee2----------------------------------------Rinalim " \
      - "<----------------->Audio/Mixed Tools<---------------------> " \
      4 "Apply No Audio Fix--------------------------------Anonymous " \
      5 "Apply No Audio Fix 2----------------------The Pimoroni Crew " \
      6 "Install I.M.P-----------------------------------RapiEdwin08 " \
      7 "Install T.A.M.O. Plus----------------------------thepitster " \
      - "<-------------------->Information<------------------------> " \
      8 "I.M.P-------------Integrated Music Player------------------ " \
      9 "T.A.M.O. Plus-----Theme And Music Overlay Plus------------- " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) es-themes ;;
    2) hursty-themes ;;
    3) pi-marquee2 ;;
    -) none ;;
    4) no-audio ;;
    5) no-audio2 ;;
    6) imp ;;
    7) tamoplus ;;
    8) imp-info ;;
    9) tamoplus-info ;;
    *) break ;;
    esac
  done
}

function tamoplus() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
clear
curl -sSL https://t.ly/5Oqi | bash
fi
}
function es-themes () {
sudo /home/pi/RetroPie-Setup/retropie_packages.sh esthemes gui
}
function pi-marquee2() {
if [ -d "/home/pi/PieMarquee2" ]; then
echo " Pie Marquee Already Installed"
else
cd /home/pi 
git clone https://github.com/rinalim/PieMarquee2 
cd PieMarquee2 
sudo chmod 755 ./install.sh 
sudo ./install.sh
fi
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
function no-audio () {
sudo grep hdmi_force_edid_audio /boot/config.txt > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "The Audio changes have already been made. If you are still not getting audio then there must be another issue."
sleep 4
echo "For now I will reverse the changes since they did not help you."
sleep 5
sudo perl -p -i -e 's/hdmi_force_edid_audio=1/#dtoverlay=lirc-rpi/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_force_hotplug=1/#hdmi_force_hotplug=1/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_drive=2/#hdmi_drive=2/g' /boot/config.txt
else
echo "I have scanned the config file and see that the audio fix is NOT in place."
sleep 4
echo "If this fix does not work please run the script again to roll the changes back."
sleep 10
echo "I will make the necessary config changes and reboot your Pi"
sleep 5
sudo perl -p -i -e 's/#dtoverlay=lirc-rpi/hdmi_force_edid_audio=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_force_hotplug=1/hdmi_force_hotplug=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_drive=2/hdmi_drive=2/g' /boot/config.txt
sudo reboot
fi
}
function no-audio2 () {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
clear
curl https://get.pimoroni.com/audio | bash
fi
}
function imp() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
cd ~
git clone https://github.com/RapidEdwin08/imp.git
sudo chmod 755 ~/imp/imp_setup.sh
cd ~/imp && ./imp_setup.sh
fi
}
function imp-info() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
clear
cat /home/pi/Devils-Box/files/IMP/README.md
read -n 1 -s -r -p "Press any key to Continue"
fi
}
function tamoplus-info() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
clear
cat /home/pi/Devils-Box/files/tamoplus/README.md
read -n 1 -s -r -p "Press any key to Continue"
fi
}
#-----------COMMUNITY EMU TOOLS MENU FUNCTIONS-----------#
function comm_emu_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "COMMUNITY EMU TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 70 50 \
      1 "RetroPie Setup Menu------------------------Retro Pie" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) rpi-menu ;;
    *) break ;;
    esac
  done
}

#-----------RETROPIE SETUP MENU FUNCTION-----------#
function rpi-menu() {
  sudo "$HOME"/RetroPie-Setup/retropie_setup.sh
}


###   HARDWARE TOOLS MENU FUNCTIONS ###
function comm_hardware_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " HARDWARE TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL PRESS TO APPLY/INSTALL" 20 50 30 \
      1 "Cases Tools Menu" \
      2 "Clear Controller Config" \
      3 "Handheld Tools Menu" \
      4 "Setup Extended HDD" \
      5 "Remove Extended HDD" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) cases ;;
    2) clear_controller ;;
    3) handhelds ;;
    4) hdd-in ;;
    5) hdd-out ;; 
    *) break ;;
    esac
  done
}

function handhelds() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
OFFLINE!!!
Offline ... Downloads Not Availible Please Connect To Internet!" 0 0
else
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " HANDHELDS TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL PRESS TO APPLY/INSTALL " 20 50 30 \
      1 "OneForAll---------Helder1981" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) oneforall ;;
    *) break ;;
    esac
  done
fi
}

# ONEFORALL #

function oneforall() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " ONEFORALL MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT OPTION" 20 50 30 \
      1 "OneForALL INFO " \
      2 "OneForALL INSTALLER  " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) oneforall-info ;;
    2) oneforall-install ;;
    *) break ;;
    esac
  done
}

function oneforall-info() {
dialog  --sleep 1 --title "ONE FOR ALL INFO" --msgbox " 
All in one software for the Retro PSU and other handheld projects.

This OSD (on screen display) is designed to be fast and informative, it uses low level gpu system calls as well as signals and interrupts to keep the resources consuption low. The software is intendeed for mobile application as it features:

Battery meter.
Wifi connectivity indicator. Can be toggled On/Off.
Bluetooth connectivity indicator. Can be toggled On/Off.
Analog Stick. Can be toggled On/Off.
Built In GPIO Controls (no need for RetroGame from Adafruit, edit the keys.cfg).
Control Volume with Button Combo.
Overlay that shows all hotkey combinations."
}

function oneforall-install() {
git clone --recursive https://github.com/Helder1981/OneForAll.git
sudo chmod 755 /home/pi/OneForAll/install.sh
sudo /home/pi/OneForAll/./install.sh
}

#   CLEAR CONTROLLER FUNCTION     #
function clear_controller() {
clear
echo ${rst}$(tput setaf 1) "This Wil Clear You ES Controller Mappings"
read -n 1 -s -r -p "Press any key to Continue"
sudo rm "$HOME"/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
}


# HDD IN #

function hdd-in() { 
clear
mkdir /home/pi/addonusb > /dev/null 2>&1
mkdir /home/pi/.work > /dev/null 2>&1
testdrive=`df |grep media |awk '{print $1 }'|wc -l`
if [ $testdrive -eq 0 ] ; then
echo ${rst}$(tput setaf 1) "No External drive detected. Exiting."
sleep 5
exit
else
echo ${rst}$(tput setaf 1) "External Drive detected. Performing checks for NTFS filesystem and piroms directory."
sleep 5
fi

for EXTDR in `df |grep media |awk '{print $1 }'`; do
init_usb_type=`sudo blkid |grep "$EXTDR"|grep -Po 'TYPE="\K.*?(?=")'`
init_usb_filesystem=`sudo blkid |grep "$EXTDR"|awk '{print $1 }'| sed -r 's/(:)+$//'`
sudo umount $EXTDR
sudo mount -t  $init_usb_type $init_usb_filesystem /home/pi/addonusb
usb_path=`find "/home/pi/addonusb/" |grep piroms |head -1`

if [ ! -d "$usb_path" ]; then
    echo ""
    echo ""
    echo "Cannot locate the /piroms directory on this external drive. Checking other disks if this external drive has two mount points like a "Western Digital My Book.""
    echo ""
    echo ""
    echo ""
        sudo umount $init_usb_filesystem
    sleep 8
else
        usb_path=`find "/home/pi/addonusb/" |grep piroms |head -1`
                usb_dir=/home/pi/addonusb
fi
done

usb_designation=`df -T |grep $usb_dir |awk '{print $1 }'|awk -F'/' '{print $3 }'`
usb_mount=`df -T |grep $usb_dir |awk '{print $1 }'`
usb_filesystem=`sudo blkid |grep -w "$usb_mount"|grep -Po 'TYPE="\K.*?(?=")'`
usb_uuid=`ls -l /dev/disk/by-uuid/|grep $usb_designation|awk '{print $9 }'`
if [ "$usb_filesystem" != "ntfs" ] ; then
echo ${rst}$(tput setaf 1) "This external drive is not correctly formatted. It must be formatted using the NTFS filesystem. Please reformat it to NTFS."
echo ${rst}$(tput setaf 1) "Fat vfat exfat filesystems are not supported in linux"
sleep 10; exit
else echo "External drive checks out. Correctly formatted to NTFS"
sleep 5
fi

sudo grep UUID /etc/fstab > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo "It seems you already have an external drive mapped. Only one  external drive is supported. Please run the "Remove Drive Expansion" script from the Retropie menu before adding a new drive."
sleep 10
exit
else

echo "UUID=$usb_uuid  /home/pi/addonusb      $usb_filesystem    nofail,user,umask=0000  0       2" > /home/pi/.currentdrive
sudo sh -c 'cat /home/pi/.currentdrive >> /etc/fstab'
sudo umount $usb_mount
sudo mount -a
mkdir $usb_path/roms/
find "/home/pi/RetroPie/roms" -mindepth 1 -maxdepth 1 -type d -printf "$usb_path/roms/%f\n" | xargs mkdir -p 2>/dev/null || true
sleep 1
sudo runuser -l pi -c 'mv /home/pi/RetroPie/roms /home/pi/RetroPie/localroms/'
sudo runuser -l pi -c 'mkdir /home/pi/RetroPie/roms'
cd /etc/profile.d
sudo wget http://eazyhax.com/pitime/10-retropie.sh.exp
sudo mv /etc/profile.d/10-retropie.sh /etc/profile.d/10-retropie.sh.org
sudo cp /etc/profile.d/10-retropie.sh.exp /etc/profile.d/10-retropie.sh
sudo grep "avoid_warnings" /boot/config.txt > /dev/null 2>&1
if [ $? -eq 0 ] ; then
echo ""
else
sudo cp /boot/config.txt /boot/config.txt.bkup
#sudo runuser -l root -c 'echo "avoid_warnings=2" >> /boot/config.txt'
fi
echo "The drive has been expanded and your system will now halt. 
      Detach your external drive...plug it up to your computer. 
      Load the games then plug it back in and restart your Pi.
      You should see your additional games. 
      Have fun!!! -Forrest "
sleep 10
sudo halt
fi
}

# HDD OUT #
function hdd-out() {
clear
if [ ! -d /home/pi/RetroPie/localroms ]; then
    echo ""
    echo ""
    echo "I do not detect that this Retropie is expanded. Killing this script."
    echo ""
    echo ""
	sleep 5
else

sudo sed -i '/UUID/d' /etc/fstab
sudo cp /etc/profile.d/10-retropie.sh.org /etc/profile.d/10-retropie.sh
unlink /home/pi/RetroPie/roms; sudo umount /home/pi/addonusb; sudo umount overlay; sudo umount /home/pi/RetroPie/roms;rm -r /home/pi/RetroPie/roms; mv /home/pi/RetroPie/localroms /home/pi/RetroPie/roms  > /dev/null 2>&1
sudo reboot
fi
}

###    CASES TOOLS MENU FUNCTIONS   ###
function cases() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
OFFLINE!!!
Offline ... Downloads Not Availible Please Connect To Internet!" 0 0
else
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " CASES TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL PRESS TO APPLY/INSTALL " 20 50 30 \
      1 "Argon1 Case Install         PI 4" \
      2 "Argon1 Configuration        PI 4" \
      3 "NESPI Case Install          PI 4" \
      4 "NESPI Case Uninstall        PI 4" \
      5 "Retroflag GPI Install       PI 4" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) argon1-in ;;
    2) argon1-conf ;;
    3) nespi ;;
    4) nespi_u ;;
    5) retroflag ;;
    *) break ;;
    esac
  done
fi
}

function argon1-in() {
  clear
  curl https://download.argon40.com/argon1.sh | bash
}

function argon1-conf() {
clear
dialog  --sleep 1 --title "Argon1 Config FYI" --msgbox " 
ATTENTION FOR THIS TO WORK:
   -You have to have Argon1 scripts installed.
   -You will need a keyboard" 0 0
clear 
bash /usr/bin/argonone-config
}

function nespi() {
  clear
  wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/install.sh" | sudo bash
}

function nespi_u() {
  clear
  wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/uninstall_all.sh" | sudo bash
}
function retroflag() {
dialog  --sleep 1 --title "RetroFlag GPI Install" --msgbox " 
-This will install scripts for RetroFlag Cases.
-After complete system will reboot." 0 0
wget -O - "https://raw.githubusercontent.com/ALLRiPPED/retroflag-picase/master/install_gpi.sh" | sudo bash
}

###   DEVILS TOOL BOX MENU FUNCTIONS   ###
function devils_tools() {
  while true; do
if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
	omxplayer "$HOME"/Devils-Box/files/videos/devils-toolbox.mp4 > /dev/null 2>&1
fi
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS TOOL BOX MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT TOOLSET AND PRESS A  " 20 50 30 \
      1 "Devils Emulator Tools " \
      2 "Devils Game Tools " \
      3 "Devils Visual Tools" \
      - "----------------------" \
      4 "Devils Box Tools " \
      5 "Diablos Arcade Tools " \
      - "----------------------" \
      6 "Testers & Devils Area " \
      7 "Check Server Status" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils_emu_tools ;;
    2) devils-game-tools ;;
    3) devils_visual_tools ;;
    -) none ;;
    4) db_tools ;;
    5) da_tools ;;
    -) none ;;
    6) testers ;;
    7) check-servers ;;
    *) break ;;
    esac
  done
}

#  DEVILS AUDIO & VISUAL TOOLS FUNCTIONS   #
function devils_visual_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS VISUAL TOOLS MENU" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 50 50 \
      + "<--->Visual Tools<---------> " \
      1 "Devils Themes " \
      2 "O.P.P (Omx Player Pi) " \
      + "<--->Frontend Tools<-------> " \
      3 "Frontend Switcheroo " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) devil-themes ;;
    2) opp ;;
    +) none ;;
    3) fe_switch ;;
    *) break ;;
    esac
  done
}

#----DEVILS THEMES MENU--------#
function devil-themes() {
  while true; do 
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS THEMES MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT THEME AND PRESS A  " 20 50 30 \
      - "Emulation Station Themes" \
      1 "Devil Chromey " \
      2 "Devil Grid Chromey " \
      3 "Neon I.B.A.D  " \
      2>&1 >/dev/tty)

    case "$choice" in
    -) none ;;
    1) devil-chromey ;;
    2) devil-grid-chromey ;;
    3) neon-ibad ;;
    *) break ;;
    esac
  done
}
function devil-chromey() {
wget https://archive.org/download/devils-themes/devil-chromey.zip -P ${HOME}/
unzip -o "$HOME"/devil-chromey.zip -d /home/pi/.emulationstation/themes/
sudo rm -R "$HOME"/devil-chromey.zip
}

function devil-grid-chromey() {
wget https://archive.org/download/devils-themes/Devils-Chromey-Grid.zip -P ${HOME}/
unzip -o "$HOME"/Devils-Chromey-Grid.zip -d /home/pi/.emulationstation/themes/
sudo rm -R "$HOME"/Devils-Chromey-Grid.zip
}

function neon-ibad() {
wget https://archive.org/download/devils-themes/NEON-IBAD.zip -P ${HOME}/
unzip -o "$HOME"/NEON-IBAD.zip -d /home/pi/.emulationstation/themes/
sudo rm -R "$HOME"/NEON-IBAD.zip
}

function opp() { 
curl -sSL bit.ly/Install-OPP | bash
}

###  DEVILS EMU TOOLS MENU FUNCTIONS   ###
function devils_emu_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "DEVILS EMU TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 50 50 \
      1 "Devils Extras Installer" \
      2 "BIOS Installer" \
      3 "MSU1 Setup" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils-ex ;;
    2) download-bios ;;
    3) msu-setup ;;
    *) break ;;
    esac
  done
}

function testers() {
bash "$HOME"/Devils-Box/scripts/Tester-Menu.sh 
}

function devils-ex() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
curl -sSL https://git.io/J9Z8c | bash
fi
}

function devils-game-tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "DEVILS GAME TOOLS MENU" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A " 30 50 50 \
      1 "Game Fixes & Tools" \
      2 "Remove Game Packs" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) game_fixes ;;
    2) remove-packs ;;
    *) break ;;
    esac
  done
}

###   DEVILS BOX TOOLS FUNCTION     ###
function db_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AND APPLY TOOL" 20 50 30 \
      1 "About Devils Box    " \
      2 "Help With Devils Box" \
      3 "Devils Box Settings " \
      4 "Remove Devils Box   " \
      5 "Update Devils Box   " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) about_db ;;
    2) help_db ;;
    3) settings_db ;;
    4) remove_db ;;
    5) update_db ;;
    *) break ;;
    esac
  done
}

#----DIABLOS ARCADE TOOLS---#
function da_tools() {
  DA_STATUS=0
  if [ -d "/opt/retropie/configs/all/emulationstation/themes/devil chromey/" ]; then
    DA_STATUS=1
  fi
  local choice
  while true; do
  if [ "$DA_STATUS" == 1 ]; then
  dialog  --sleep 1 --title "DIABLOS ARCADE TOOLS" --msgbox " 
----------------ATTENTION-----------------
--THIS TOOLS ARE JUST FOR DIABLOS ARCADE--
---------DO NOT USE OTHER BUILDS----------
-----------------WARNING------------------
--WE REPEAT DO NOT USE ON OTHER BUILDS--" 0 0
else
  dialog  --sleep 1 --title "DIABLOS ARCADE TOOLS" --msgbox " 
---------------ATTENTION------------------
--THIS IS JUST FOR DIABLOS ARCADE BUILDS--
-----------------SORRY--------------------" 0 0
break
fi
    choice=$(dialog --backtitle "$BACKTITLE" --title " DIABLOS ARCADE TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AND APPLY TOOL" 20 50 30 \
      1 "Changes V1.0 - V1.1" \
      2 "Update  V1.0 - V1.1" \
      3 "Version Checker" \
      4 "Force Retropie Setup" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) change_v1 ;;
    2) update_v1  ;;
    3) version_da ;;
    4) force-setup-da ;;
    *) break ;;
    esac
  done
}

function force-setup-da() {
cd /home/pi/RetroPie-Setup
git checkout .; git reset --hard HEAD; git pull
}

function credits() {
clear
omxplayer "$HOME"/Devils-Box/files/videos/credits.mp4 > /dev/null 2>&1
}

#ABOUT DEVILS BOX #
function help_db() {
  clear
  cat "$HOME"/Devils-Box/files/db-files/HELP-DB.txt
read -n 1 -s -r -p "Press any key to Continue"
}

#HELP WITH DEVILS BOX #
function about_db() {
  clear
  cat "$HOME"/Devils-Box/files/db-files/INFO.txt
read -n 1 -s -r -p "Press any key to Continue"
}

#------Check for DB Settings------#
function check_for_dbsettings() {
if [ ! -d "$HOME/.devilsbox" ]; then mkdir "$HOME/.devilsbox"; fi
if [ ! -f "$DB_SETTINGS" ]; then 
cat <<\EOF_db_settings.ini > "$DB_SETTINGS"
#DB SETTINGS
auto_update_flag=0
intro_splash_flag=1
EOF_db_settings.ini
sudo chmod +x $DB_SETTINGS
else
	if ! grep 'auto_update_flag=' "$DB_SETTINGS" > /dev/null 2>&1; then sed -i -e '$aauto_update_flag=0' "$DB_SETTINGS" > /dev/null 2>&1; fi
	if ! grep 'intro_splash_flag=' "$DB_SETTINGS" > /dev/null 2>&1; then sed -i -e '$aintro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; fi
fi
if grep 'auto_update_flag=0' "$DB_SETTINGS" > /dev/null 2>&1; then
	audb="\Z1Disabled\Zn"
else
	audb="\Z2Enabled\Zn"
fi
if grep 'intro_splash_flag=0' "$DB_SETTINGS" > /dev/null 2>&1; then
	isdb="\Z1Disabled\Zn"
else
	isdb="\Z2Enabled\Zn"
fi
}

#-----DEVILS BOX SETTINGS-----#
function settings_db() {
check_for_dbsettings
  local choice

  while true; do
    choice=$(dialog --colors --backtitle "$BACKTITLE" --title " DEVILS BOX SETTINGS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AND APPLY SETTING" 20 50 10 \
      1 "Auto Update Devils Box ON/OFF $audb" \
      2 "Turn Intro Videos/Messages ON/OFF $isdb" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) auto_update ;;
    2) intro_splash ;;
    *) break ;;
    esac
  done
}

#REMOVE DEVILS BOX#
function remove_db() {
clear
  echo ${rst}$(tput setaf 1) "Removing Now";
  sudo rm "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  sudo rm -R "$HOME"/Devils-Box
  sudo reboot
}

#-------UPDATE DEVILS BOX--------#
function update_db() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "UPDATE DEVILS BOX" --msgbox " 
OFFLINE!!!
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  clear
  echo ${rst}$(tput setaf 1) "Online ... Updating"
  sleep 1
  sudo rm "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  cd "$HOME"/Devils-Box || exit
  git reset --hard
  git pull
  cp "$HOME"/Devils-Box/Devils-Box.sh -f "$HOME"/RetroPie/retropiemenu/
  sudo cp "$HOME"/Devils-Box/files/box -f /usr/local/bin/
  sudo cp "$HOME"/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
  sudo wget -O "/usr/local/bin/confirm" https://raw.githubusercontent.com/Retro-Devils/Devils-Pi/main/things
  sudo chmod 755 /usr/local/bin/confirm
  sudo chmod 755 /usr/local/bin/box
  sudo chmod 755 /usr/local/bin/Devils-Box
  chmod 755 "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  sleep 1
  if [ -d "$HOME/RetroPie/retropiemenu/Devils-Box/" ]; then sudo rm -fR "$HOME"/RetroPie/retropiemenu/Devils-Box/; fi
  bash "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  exit 1
fi
}

#------DIABLOS ARCADE FUNCTIONS----#
function update_v1() {
clear
sudo rm -R /usr/local/bin/da-version
sudo wget https://github.com/ALLRiPPED/Devils-Pi/raw/main/Diablos-Arcade/files/da-version -P /usr/local/bin/
sudo chmod 755 /usr/local/bin/da-version
echo ${bid}$(tput setaf 1)"---Adding Bash Welcome Tweak---"
mv -f $HOME/.bashrc $HOME/.bashrc-backup
wget https://github.com/ALLRiPPED/Devils-Pi/raw/main/Diablos-Arcade/files/da.bashrc -P $HOME/
mv -f $HOME/da.bashrc $HOME/.bashrc
sleep 2
clear
echo ${bld}$(tput setaf 1) "---Backing Up & Getting New ES-Systems---"
sleep 2
mkdir /home/pi/.emulationstation/backups
mv /home/pi/.emulationstation/es_systems.cfg -f /home/pi/.emulationstation/backups/es_systems.backup
sleep 1
wget https://archive.org/download/devils-updates/es_systems.cfg -P /home/pi/.emulationstation/
echo ${bld}$(tput setaf 1)"---Getting Artwork---"
sleep 2
wget https://archive.org/download/devils-updates/simpbowl.mp4 -P /home/pi/RetroPie/roms/arcade/snap/
echo ${bld}$(tput setaf 1)"---Removing Games----"
sleep 2
sudo rm /home/pi/RetroPie/roms/arcade/tekken.zip
sudo rm /home/pi/RetroPie/roms/arcade/tekken2.zip
sudo rm /home/pi/RetroPie/roms/arcade/tekken3.zip
sleep 2 
echo ${bld}$(tput setaf 1)"---Adding Devils Track 2---"
sleep 2
wget "https://archive.org/download/devils-updates/Music/NEFFEX - Rollin' With The Devil.mp3" -P "/home/pi/bgm/"
echo ${bld}$(tput setaf 1)"---Replacing Wine Logo---"
wget https://github.com/ALLRiPPED/es-theme-devil-chromey/raw/main/wine/_inc/system.png && mv -f system.png "/opt/retropie/configs/all/emulationstation/themes/devil chromey/wine/_inc"
wget https://github.com/ALLRiPPED/es-theme-devil-chromey/raw/main/mugen/_inc/system.png && mv -f system.png "/opt/retropie/configs/all/emulationstation/themes/devil chromey/mugen/_inc"
wget https://github.com/ALLRiPPED/es-theme-devil-chromey/raw/main/mugens/_inc/system.png && mv -f system.png "/opt/retropie/configs/all/emulationstation/themes/devil chromey/mugens/_inc"
sleep 2 
echo ${bld}$(tput setaf 1)"---Updating Devils Box---"
sleep 2
sudo rm /home/pi/RetroPie/retropiemenu/Devils-Box.sh
cd /home/pi/Devils-Box
git pull -f
cp /home/pi/Devils-Box/Devils-Box.sh -f /home/pi/RetroPie/retropiemenu/
sudo cp /home/pi/Devils-Box/files/box -f /usr/local/bin/
sudo cp /home/pi/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
sudo chmod 755 /usr/local/bin/box
sudo chmod 755 /usr/local/bin/Devils-Box
chmod 755 /home/pi/RetroPie/retropiemenu/Devils-Box.sh
sleep 2
echo ${bld}$(tput setaf 1)"Updating & Upgrading"
sudo apt -y update 
sudo apt -y upgrade 
}
function change_v1() {
dialog --sleep 1 --title "CHANGELOG" --msgbox "
-Added Wine support to Retropie Menu.
-Added missing Artwork.
-Devils Box Updated.
-Devils Extras Installed.
-Non working games removed.
-Updated and Upgraded Debian Packages" 0 0
}
function version_da() {
dialog  --sleep 1 --title "DIABLOS ARCADE VERSION" --msgbox " 
This does not work you are on V1.0
Please update for newest awesomness" 0 0
clear
da-version
}

#------SHOW DISK SPACE FUNCTION------#
function show_sysinfo() {
clear
cpuTempC=""
cpuTempF=""
gpuTempC=""
gpuTempF=""
if [[ -f "/sys/class/thermal/thermal_zone0/temp" ]]; then cpuTempC=$(($(cat /sys/class/thermal/thermal_zone0/temp)/1000)) && cpuTempF=$((cpuTempC*9/5+32)); fi
if [[ -f "/opt/vc/bin/vcgencmd" ]]; then
    if gpuTempC=$(/opt/vc/bin/vcgencmd measure_temp); then
        gpuTempC=${gpuTempC:5:2}
        gpuTempF=$((gpuTempC*9/5+32))
    else
        gpuTempC=""
    fi
fi
let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`

echo "$(tput setaf 7)
  ........OS INFO.......:
  $(tput setaf 2)`uname -srmo`
  `lsb_release -ds`
  `date +"%A, %e %B %Y, %r"`
  Uptime......: ${UPTIME}
  Last Login..: `exec -- last | head -1`
  $(tput setaf 7)......SYSTEM INFO.....:
  $(tput setaf 1)CPU Temperature.......: ${cpuTempC} C/${cpuTempF} F
  GPU Temperature.......: ${gpuTempC} C/${gpuTempF} F
  $(tput setaf 3)CPU Model.............: `lscpu | grep "Model name"`
  CPU Max Speed.........: `lscpu | grep max`
  GPU Version...........: `exec -- /opt/vc/bin/vcgencmd version`
  $(tput setaf 7)			Size     Used     Avail    Used%
  $(tput setaf 3)Boot Partition........: `df -h | grep '/dev/sda1' | awk '{print $2,"     "$3,"     "$4,"     "$5}'`
  Root Partition........: `df -h | grep '/dev/root' | awk '{print $2,"    "$3,"     "$4,"      "$5}'`
  $(tput setaf 6)Memory................: `cat /proc/meminfo | grep MemFree | awk '{printf( "%.2f\n", $2 / 1024 )}'`MB (Free) / `cat /proc/meminfo | grep MemTotal | awk '{printf( "%.2f\n", $2 / 1024 )}'`MB (Total)
  Running Processes.....: `ps ax | wc -l | tr -d " "`
  LAN IP Address........: `ip -4 route get 8.8.8.8 2>/dev/null | awk '{print $(NF-2); exit}'`
  WAN IP Address........: `curl -4 icanhazip.com 2>/dev/null | awk '{print $NF; exit}'`$(tput sgr0)"
echo
read -n 1 -s -r -p "Press any key to continue"
}

#------REBOOT FUNCTION------#
function system_reboot() {
clear
read -n 1 -s -r -p "Press any key to Reboot"
sudo reboot
}

#------EXPAND MEM.------#
function expand_mem() {
echo "This will Expand Memory and Reboot"
read -n 1 -s -r -p "Press any key to Continue"
sudo raspi-config --expand-rootfs 
sudo reboot
}


function game_fixes() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/Game-Fixes.sh
fi
}

function retro_scrapey() {
bash "$HOME"/Devils-Box/scripts/Retro-Scrapey.sh
}

function fe_switch() {
sudo cp /home/pi/Devils-Box/scripts/FE-Switcheroo.sh -f /usr/local/bin/switcheroo
bash "$HOME"/Devils-Box/scripts/FE-Switcheroo.sh
}

function remove-packs() {
bash "$HOME"/Devils-Box/scripts/Remove.sh
}

function download-bios() {
bash "$HOME"/Devils-Box/scripts/BIOS.sh
}

function msu-setup() {
bash "$HOME"/Devils-Box/scripts/MSU1-Setup.sh
}

function check-servers() {
bash "$HOME"/Devils-Box/scripts/Server-Check.sh
}

function auto_update() {
check_for_dbsettings
if grep 'auto_update_flag=0' "$DB_SETTINGS" > /dev/null 2>&1; then
	echo "Auto update Turned On"
	sed -i "s|auto_update_flag=0|auto_update_flag=1|" "$DB_SETTINGS"
	audb="\Z2Enabled\Zn"
else
	echo "Auto Update Turned Off"
	sed -i "s|auto_update_flag=1|auto_update_flag=0|" "$DB_SETTINGS"
	audb="\Z1Disabled\Zn"
fi
}

function intro_splash() {
check_for_dbsettings
if grep 'intro_splash_flag=0' "$DB_SETTINGS" > /dev/null 2>&1; then
	echo "Turning Script Videos On"
	sed -i "s|intro_splash_flag=0|intro_splash_flag=1|" "$DB_SETTINGS"
	isdb="\Z2Enabled\Zn"
else
	echo "Turning Script Videos Off"
	sed -i "s|intro_splash_flag=1|intro_splash_flag=0|" "$DB_SETTINGS"
	isdb="\Z1Disabled\Zn"
fi
}

#-----------NET CHECKER-----------#
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  NETCHECK=0
else
  NETCHECK=1
fi

if [ $NETCHECK = 1 ]; then dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " Offline ... Updates not Availible Please Connect To Internet!" 0 0
else
	check_for_dbsettings
	if grep 'auto_update_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
		cd "$HOME"/Devils-Box || exit
		git remote update
		LAST_UPDATE=`git show --no-notes --format=format:"%H" main | head -n 1`
		LAST_COMMIT=`git show --no-notes --format=format:"%H" origin/main | head -n 1`

		if [ $LAST_COMMIT != $LAST_UPDATE ]; then
			if dialog --stdout --title "Update Availible, Continue Auto-Update?" \
					--backtitle "Continue Auto-Update?" \
					--yesno "Yes: Continue Auto-Update, No: Skip Auto-Update" 7 60; then
				update_db
				exit 1
			else
				echo "$(tput setaf 2)Skipping Update$(tput setaf 0)"
			fi
		else
			echo "$(tput setaf 2)No updates available$(tput setaf 0)"
		fi
	fi
fi

main_menu
