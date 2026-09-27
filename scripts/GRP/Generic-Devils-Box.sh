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
      --menu "DEVILS BOX--------------MULTI DEVICES V1.0" 23 50 30 )
    if [ "$DB_STATUS" == 1 ]; then
      options=( \
      - "<---->Downloaders<------>"
      1 "Artwork Packs"
      2 "Console Packs"
      3 "Hacked Packs"
      4 "Homebrew Packs"
      5 "Pick & Choose"
      6 "Translations Packs"
      - "<---Devils Box Tools---->"
      7 "Devils Box Tools" 
      8 "Devils Box Credits"
      9 "DB Games Server Check"
      - "<----------------------->"
      10 "Show System Info"
      11 "Reboot System"
      - "<----RetroPie Tools---->"
      12 "RetroPie Setup Menu")
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
    7) db_tools ;;
    8) db_credits ;;
    9) check-servers ;;
    10) show_sysinfo ;;
    11) system_reboot ;;
    12) rpi-menu ;;
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
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Artwork.sh
fi
}

#-----------Consoles-----------#
function consoles() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Packs.sh
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
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Homebrews.sh
fi
}

#-----------PickChoose-----------#
function pick() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-PickChoose.sh
fi
}

#-----------Translations-----------#
function translations() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PI-4-Translations.sh
fi
}


#-----------RETROPIE SETUP MENU FUNCTION-----------#
function rpi-menu() {
  sudo "$HOME"/RetroPie-Setup/retropie_setup.sh
}
#   PIKISS  #
function pikiss() {
if [ $NETCHECK -eq 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox "
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  if [ -d "$HOME/piKiss/" ]; then bash $HOME/piKiss/piKiss.sh;
  else
    cd $HOME/
    curl -sSL https://git.io/JfAPE | bash
    bash $HOME/piKiss/piKiss.sh
  fi
fi
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


function remove-packs() {
bash "$HOME"/Devils-Box/scripts/Remove.sh
}

function download-bios() {
bash "$HOME"/Devils-Box/scripts/BIOS.sh
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
