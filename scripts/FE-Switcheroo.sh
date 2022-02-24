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
        choice=$(dialog --backtitle "Front End Switcheroo Currently using $fe" --title " FRONT END MENU " \
            --ok-label OK --cancel-label Back \
            --menu "Which Frontend would you like to Switch to?" 25 75 20 \
	    1 "Switch Frontend To Attract Mode" \
            2 "Switch Frontend To Desktop" \
            3 "Switch Frontend To Emu Station" \
            4 "Switch Frontend To Pegasus FE" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) AT_FE ;;
            2) DE_FE ;;
            3) ES_FE ;;
            4) PE_FE ;;
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

fe_menu
  fi
fi
