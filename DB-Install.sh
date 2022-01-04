 #!/bin/bash

export NCURSES_NO_UTF8_ACS=1
###----------------------------###
### INSTALLER MENU FUNCTIONS   ###
###----------------------------###
function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX 2.0 " \
            --ok-label Select --cancel-label Exit-Installer \
            --menu "
DEVILS BOX RETROPIE INSTALLER
--------------------------------------
WHATS THIS?    A DOWNLOADER & TOOL BOX 
--------------------------------------
CREATED BY?    THE RETRO DEVILS & OTHERS
-------------------------------------- 
CREATED WHEN?  2021/2022
--------------------------------------" 25 50 40 \
            1 "Install Devils Box " \
            2 "Update Devils Box  " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) install_db      ;;
            2) update_db       ;;
            *)  break ;;
        esac
    done
}
#---------------------------#
#INSTALL DEVILS BOX #
#---------------------------#
function install_db() {
wget clone https://github.com/Retro-Devils/Devils-Box -P ~/ &
mv ~/Devils-Box/Devils-box.sh -P ~/RetroPie/retropiemenu/
}
#------------------#
#UPDATE DEVILS BOX #
#------------------#
function update_db() {
sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh 
sudo rm -R ~/Devils-Box/ 
git clone https://github.com/Retro-Devils/Devils-Box -P ~/
mv ~/Devils-Box/Devils-box.sh -P ~/RetroPie/retropiemenu/
}

# Main
main_menu
