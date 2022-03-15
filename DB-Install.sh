 #!/bin/bash

export NCURSES_NO_UTF8_ACS=1
###----------------------------###
### INSTALLER MENU FUNCTIONS   ###
###----------------------------###
function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX 3.05 " \
            --ok-label Select --cancel-label Exit-Installer \
            --menu "
DEVILS BOX RETROPIE INSTALLER" 25 40 40 \
            1 "Install/Update Devils Box " \
            2 "Devils Box Info   " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) install_db  ;;
            2) info        ;;
            *) break       ;;
        esac
    done
}

#----------------------------#
# INSTALL/UPDATE  DEVILS BOX #
#----------------------------#
function install_db() {
if [ -d "$HOME/RetroPie/retropiemenu/Devils-Box/" ]; then sudo rm -fR $HOME/RetroPie/retropiemenu/Devils-Box/; fi
if [ -f "$HOME/RetroPie/retropiemenu/Devils-Box.sh" ]; then sudo rm $HOME/RetroPie/retropiemenu/Devils-Box.sh; fi
if [ -d "$HOME/Devils-Box/" ]; then sudo rm -R $HOME/Devils-Box/; fi
cd $HOME
git clone https://github.com/Retro-Devils/Devils-Box
cp $HOME/Devils-Box/Devils-Box.sh -f $HOME/RetroPie/retropiemenu/
cp $HOME/Devils-Box/files/images/Devils-Box.png -f $HOME/RetroPie/retropiemenu/icons/
sudo cp $HOME/Devils-Box/files/box -f /usr/local/bin/
sudo cp $HOME/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
sudo wget -O "/usr/local/bin/confirm" https://raw.githubusercontent.com/Retro-Devils/Devils-Pi/main/things
sudo chmod 755 /usr/local/bin/confirm
sudo chmod 755 /usr/local/bin/box
chmod 755 $HOME/RetroPie/retropiemenu/Devils-Box.sh
sudo chmod 755 /usr/local/bin/Devils-Box
sleep 1
if [ ! -s "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then sudo rm -f $HOME/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml $HOME/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="\t<game>\n\t\t<path>./Devils-Box.sh</path>\n\t\t<name>Devils-Box</name>\n\t\t<desc>The Retro Devils Tool Box - A fully fuctional script to get even the newbies started up with ease, able to download roms and artwork to their proper places, Mugen and Sega Model 3 emulators, themes and music tools, plus much, much more.</desc>\n\t\t<image>./icons/Devils-Box.png</image>\n\t\t<releasedate>20220105T173842</releasedate>\n\t\t<developer>The Retro Devils</developer>\n\t\t<publisher>The Retro Devils</publisher>\n\t\t<genre>Devils-Box Script</genre>\n\t</game>"
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

#--------#
#  INFO  #
#--------#
function info() {
dialog  --sleep 1 --title "DEVILS BOX INFO" --msgbox " 
WHATS THIS?    A DOWNLOADER AND TOOL BOX 
CREATED BY?    THE RETRO DEVILS AND OTHERS 
CREATED WHEN?  DECEMBER 2021

__FREQUENTLY ASKED QUESTIONS__

WHY EVEN MAKE THIS?
     - We want everyone to enjoy alL the games. If your getting em anyway, let us make it easy.
WHAT DOES THIS WORK ON?
     - This is built for things with RetroPie installed. Mainly PI 4.
     - This will work on any system(s) with Retropie Installed.
           --The following is needed for Devils Box to work:
	      -The location:    ~/RetroPie/retropiemenu/ & ~/RetroPie/roms/
	      -The Commands:    wget and curl
      - The downloader will work any Retropie Device. That doesnt mean you can play all the consoles listed.
		**example pi zero wont play N64.
      - Most tools will only work on pi 3 or 4.
WHY USE THIS ARTWORK INSTEAD OF SCRAPER?
      - This art is set for these roms. So they will look nice. Scraper works and props to it.
      
__CREDITS__
--EMUS AND TOOLS CREDITS:
	-All emus & tools from commmunity have credits in Devils Box menus.
	  example. RetroPie Extras says *Zero Jay* at the far right of that line.
--MISC CREDITS:
-ALL THE RETRO DEVILS--------YOU KNOW WHAT YOU DID      
-COMMUNITY-------------------INPUT IN GENERAL
-RETROPIE--------------------FOR EVERYTHING THEY DO 
-CRASH-----------------------SCRIPTING KNOWLEDGE & ADVICE  
-BIGED-----------------------SCRIPTING KNOWLEDGE & ADVICE
-MONK OF THE FUNK------------SCRIPTING KNOWLEDGE & ADVICE 
-SOLARBABY-------------------SCRIPTING KNOWLEDGE & ADVICE" 0 0

}

# Main
main_menu
