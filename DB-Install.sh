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
if [ -f "$HOME/RetroPie/retropiemenu/Devils-Box.sh" ]; then 
sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh; fi
if [ -d "$HOME/Devils-Box/" ]; then 
sudo rm -R ~/Devils-Box/; fi
git clone https://github.com/Retro-Devils/Devils-Box
mv ~/Devils-Box/Devils-Box.sh -f ~/RetroPie/retropiemenu
chmod 755 ~/RetroPie/retropiemenu/Devils-Box.sh
}
#------------------#
#UPDATE DEVILS BOX #
#------------------#
function update_db() {
sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh 
sudo rm -R ~/Devils-Box/ 
sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh
git clone https://github.com/Retro-Devils/Devils-Box
mv ~/Devils-Box/Devils-Box.sh -f ~/RetroPie/retropiemenu/
}

# Main
main_menu
