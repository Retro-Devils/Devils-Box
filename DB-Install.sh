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
            *) break           ;;
        esac
    done
}
#---------------------------#
#INSTALL DEVILS BOX #
#---------------------------#
function install_db() {
if [ -f "$HOME/RetroPie/retropiemenu/Devils-Box.sh" ]; then sudo rm $HOME/RetroPie/retropiemenu/Devils-Box.sh; fi
if [ -d "$HOME/Devils-Box/" ]; then sudo rm -R $HOME/Devils-Box/; fi
git clone https://github.com/Retro-Devils/Devils-Box
cp $HOME/Devils-Box/Devils-Box.sh -f $HOME/RetroPie/retropiemenu/
cp $HOME/Devils-Box/files/Devils-Box.png -f $HOME/RetroPie/retropiemenu/icons/
sudo cp $HOME/Devils-Box/files/box -f /usr/local/bin/
sudo cp $HOME/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
sudo chmod 755 /usr/local/bin/box
chmod 755 $HOME/RetroPie/retropiemenu/Devils-Box.sh
sudo chmod 755 /usr/local/bin/Devils-Box
sleep 1
if [ ! -s "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then sudo rm -f $HOME/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml $HOME/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="<game>\n<path>./Devils-Box.sh</path>\n<name>Devils-Box</name>\n<desc>The Retro Devils Tool Box - A fully fuctional script to get even the newbies started up with ease, able to download roms and artwork to their proper places, Mugen and Sega Model 3 emulators, themes and music tools, plus much, much more.</desc>\n<image>./icons/Devils-Box.png</image>\n<releasedate>20220105T173842</releasedate>\n<developer>The Retro Devils</developer>\n<publisher>The Retro Devils</publisher>\n<genre>Devils-Box Script</genre>\n</game>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q Devils-Box.sh "$HOME/RetroPie/retropiemenu/gamelist.xml"; then echo "gamelist.xml entry confirmed"
else
	sed "/<\/gameList>/ s/.*/${C1}\n&/" $HOME/RetroPie/retropiemenu/gamelist.xml > $HOME/temp
	cat $HOME/temp > $HOME/RetroPie/retropiemenu/gamelist.xml
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
sudo rm -f $HOME/RetroPie/retropiemenu/Devils-Box.sh 
cd $HOME/Devils-Box
git pull
cp $HOME/Devils-Box/Devils-Box.sh -f $HOME/RetroPie/retropiemenu/
cp $HOME/Devils-Box/files/Devils-Box.png -f $HOME/RetroPie/retropiemenu/icons/
sudo cp $HOME/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
chmod 755 $HOME/RetroPie/retropiemenu/Devils-Box.sh
sudo chmod 755 /usr/local/bin/Devils-Box
sudo cp $HOME/Devils-Box/files/box -f /usr/local/bin/
sudo chmod 755 /usr/local/bin/box
sleep 1
if [ ! -s $HOME/RetroPie/retropiemenu/gamelist.xml ]; then sudo rm -f $HOME/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml $HOME/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="<game>\n<path>./Devils-Box.sh</path>\n<name>Devils-Box</name>\n<desc>The Retro Devils Tool Box - A fully fuctional script to get even the newbies started up with ease, able to download roms and artwork to their proper places, Mugen and Sega Model 3 emulators, themes and music tools, plus much, much more.</desc>\n<image>./icons/Devils-Box.png</image>\n<releasedate>20220105T173842</releasedate>\n<developer>The Retro Devils</developer>\n<publisher>The Retro Devils</publisher>\n<genre>Devils-Box Script</genre>\n</game>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q Devils-Box.sh "$HOME/RetroPie/retropiemenu/gamelist.xml"; then echo "gamelist.xml entry confirmed"
else
	sed "/<\/gameList>/ s/.*/${C1}\n&/" $HOME/RetroPie/retropiemenu/gamelist.xml > $HOME/temp
	cat $HOME/temp > $HOME/RetroPie/retropiemenu/gamelist.xml
	rm -f $HOME/temp
fi
echo "Emulationstation Will Now Restart ..."
sleep 1
killall emulationstation
sudo openvt -c 1 -s -f emulationstation 2>&1
}

# Main
main_menu
