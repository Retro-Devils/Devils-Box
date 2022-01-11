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
if [ -f "$HOME/RetroPie/retropiemenu/Devils-Box.sh" ]; then sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh; fi
if [ -d "$HOME/Devils-Box/" ]; then sudo rm -R ~/Devils-Box/; fi
git clone https://github.com/Retro-Devils/Devils-Box
cp ~/Devils-Box/DB -f ~/
cp ~/Devils-Box/Devils-Box.sh -f ~/RetroPie/retropiemenu/
cp $HOME/Devils-Box/files/Devils-Box.png -f ~/RetroPie/retropiemenu/icons/
chmod 755 ~/RetroPie/retropiemenu/Devils-Box.sh
if [ ! -s ~/RetroPie/retropiemenu/gamelist.xml ]; then sudo rm -f ~/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "~/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ~/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="<game>\n<path>./Devils-Box.sh</path>\n<name>Devils-Box</name>\n<desc>The Retro Devils Tool Box - A fully fuctional script to get even the newbies started up with ease, able to download roms and artwork to their proper places, Mugen and Sega Model 3 emulators, themes and music tools, plus much, much more.</desc>\n<image>./icons/Devils-Box.png</image>\n<releasedate>20220105T173842</releasedate>\n<developer>The Retro Devils</developer>\n<publisher>The Retro Devils</publisher>\n<genre>Devils-Box Script</genre>\n</game>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q Devils-Box.sh "~/RetroPie/retropiemenu/gamelist.xml"; then echo "gamelist.xml entry confirmed"
else
	sed "/<\/gameList>/ s/.*/${C1}\n&/" ~/RetroPie/retropiemenu/gamelist.xml > $HOME/temp
	cat $HOME/temp > ~/RetroPie/retropiemenu/gamelist.xml
	rm -f $HOME/temp
fi
echo "Emulationstation Will Now Restart ..."
sleep 1
killall emulationstation
sudo openvt -c 1 -s -f emulationstation 2>&1
}
#------------------#
#UPDATE DEVILS BOX #
#------------------#
function update_db() {
sudo rm -f ~/RetroPie/retropiemenu/Devils-Box.sh 
cd ~/Devils-Box
git pull
cp ~/Devils-Box/Devils-Box.sh -f ~/RetroPie/retropiemenu/
cp $HOME/Devils-Box/files/Devils-Box.png -f ~/RetroPie/retropiemenu/icons/
chmod 755 ~/RetroPie/retropiemenu/Devils-Box.sh
if [ ! -s ~/RetroPie/retropiemenu/gamelist.xml ]; then sudo rm -f ~/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "~/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ~/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="<game>\n<path>./Devils-Box.sh</path>\n<name>Devils-Box</name>\n<desc>The Retro Devils Tool Box - A fully fuctional script to get even the newbies started up with ease, able to download roms and artwork to their proper places, Mugen and Sega Model 3 emulators, themes and music tools, plus much, much more.</desc>\n<image>./icons/Devils-Box.png</image>\n<releasedate>20220105T173842</releasedate>\n<developer>The Retro Devils</developer>\n<publisher>The Retro Devils</publisher>\n<genre>Devils-Box Script</genre>\n</game>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q Devils-Box.sh "~/RetroPie/retropiemenu/gamelist.xml"; then echo "gamelist.xml entry confirmed"
else
	sed "/<\/gameList>/ s/.*/${C1}\n&/" ~/RetroPie/retropiemenu/gamelist.xml > $HOME/temp
	cat $HOME/temp > ~/RetroPie/retropiemenu/gamelist.xml
	rm -f $HOME/temp
fi
echo "Emulationstation Will Now Restart ..."
sleep 1
killall emulationstation
sudo openvt -c 1 -s -f emulationstation 2>&1
}

# Main
main_menu
