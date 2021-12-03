 #!/bin/bash

export NCURSES_NO_UTF8_ACS=1
#IFS=';'

###  WELCOME MESSAGE     ###
dialog --msgbox  "
WELCOME TO
~~~~~~~~~~~~~~~~~~~~~~~~~~
THE DEVILS BOX
A downloader and tool box.
~~~~~~~~~~~~~~~~~~~~~~~~~~

BUILT FOR :   RASPBERRY PI 4
CREATED BY:   THE RETRO DEVILS 

USE AT YOUR OWN RISK" 20 40


###-----------------------###
### MAIN MENU FUNCTIONS   ###
###-----------------------###

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX 2.0 " \
            --ok-label Select --cancel-label Exit-Devils-Box \
            --menu "MAIN MENU" 60 75 60 \
            1 "Boxart Packs" \
            2 "Console Packs" \
            3 "Hacked Packs" \
            4 "Tool Box" \
            5 "Reboot System" \
            6 "Show Disk Space" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) boxart     ;;
            2) console   ;;
            3) hacked     ;;
            4) tool_box    ;;
            5) system_reboot  ;;
            6) show_disk    ;;
            *)  break ;;
        esac
    done
}

function validate_url(){
    if [[ `wget -S --spider $1  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then
        return 0
    else
        return 1
    fi
}
#-----------------------#
# BOXART MENU FUNCTIONS #				
#-----------------------#
function boxart() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU " \
            --ok-label Download --cancel-label Back \
            --menu "SELECT DESIRED CONSOLE AND PRESS A TO DOWNLOAD " 40 75 60 \
            1 "Amiga Art___________________________________?? GB" \
            2 "AmigaCD Art_________________________________?? GB" \
            3 "Arcadia Art_________________________________?? GB" \
            4 "Astrocade Art_______________________________?? GB" \
            5 "Atari800 Art________________________________?? GB" \
            6 "Atari2600 Art_______________________________?? GB" \
            7 "Atari5200 Art_______________________________?? GB" \
            8 "Atari7800 Art_______________________________?? GB" \
	    9 "AtariLynx Art_______________________________?? GB" \
	    10 "AtariST Art_________________________________?? GB" \
	    11 "Commadore64 Art_____________________________?? GB" \
	    12 "Colecovision Art____________________________?? GB" \
	    13 "Daphne______________________________________?? GB" \
	    14 "Dragon32____________________________________?? GB" \
	    15 "Dreamcast___________________________________?? GB" \
	    16 "Famicon_____________________________________?? GB" \
	    17 "Game and Watch______________________________?? GB" \
	    18 "Gameboy_____________________________________?? GB" \
	    19 "Gameboy Advance_____________________________?? GB" \
	    20 "Gameboy Color_______________________________?? GB" \
	    21 "Gamegear____________________________________?? GB" \
	    22 "Genesis_____________________________________?? GB" \
	    23 "Intellivision_______________________________?? GB" \
	    24 "Lightgun____________________________________?? GB" \
	    25 "MarkIII_____________________________________?? GB" \
	    26 "Mastersystem________________________________?? GB" \
	    27 "Megadrive___________________________________?? GB" \
            28 "Mugen_______________________________________?? GB" \
            29 "Nintendo 64_________________________________?? GB" \
            30 "Naomi_______________________________________?? GB" \
	    31 "Nintendo DS_________________________________?? GB" \
	    32 "NeoGeo______________________________________?? GB" \
	    33 "Nintendo Entertainment System_______________?? GB" \
	    34 "Openbor_____________________________________?? GB" \
	    35 "Oric________________________________________?? GB" \
	    36 "PC Engine___________________________________?? GB" \
	    37 "Playstation1________________________________?? GB" \
	    38 "Sega32x_____________________________________?? GB" \
	    39 "SegaCD______________________________________?? GB" \
	    40 "SNES________________________________________?? GB" \
	    41 "Turbo Graffix 16____________________________?? GB" \
	    42 "Wine________________________________________?? GB" \
	    43 "Wonderswan__________________________________?? GB" \
	    44 "ZMachine____________________________________?? GB" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) amiga  ;;
            2) amigacd  ;;
            3) arcadia  ;;
            4) astrocade    ;;
            5) atari800        ;;
            6) atari2600       ;;
            7) atari5200  ;;
            8) atari7800  ;;
            9) atarilynx  ;;
            10) atarist  ;;
            11) c64  ;;
            12) colecovision  ;;
            13) daphne  ;;
            14) dragon32    ;;
            15) dreamcast   ;;
            16) famicon        ;;
            17) gameandwatch  ;;
            18) gb  ;;
            19) gba  ;;
            20) gbc  ;;
            21) gg  ;;
            22) genesis  ;;
            23) intellivision  ;;
            24) lightgun    ;;
            25) markiii        ;;
            26) mastersystem        ;;
            27) megadrive  ;;
            28) mugen ;;
            29) n64  ;;
            30) naomi  ;;
            31) nds  ;;
            32) neogeo  ;;
            33) nes  ;;
            34) openbor    ;;
            35) oric        ;;
            36) pc-engine        ;;
            37) ps1  ;;
            38) sega32x  ;;
            39) segacd  ;;
            40) snes  ;;
            41) tg16  ;;
            42) wine  ;;
            43) wonderswan  ;;
            44) zmachine  ;;
            *)  break ;;
        esac
    done
}

function amiga() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function amigacd() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function arcadia() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function astrocade() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function atari800() {
     wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function atari2600() { 
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function atari5200() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function atari7800() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function atarilynx() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function atarist() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function c64() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function colecovision() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function daphne() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function dragon32() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function dreamcast() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function famicon() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gameandwatch() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gb() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gba() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function gbc() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gamegear() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function genesis() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function intellivision() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function lightgun() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function markiii() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function mastersystem() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function megadrive() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function mugen() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function n64() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function naomi() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function nds() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function neogeo() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function nes() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function openbor() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function oric() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function pcengine () {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function ps1() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function sega32x() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function segacd() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function snes() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function tg16() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function wine() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function wonderswan() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function zmachine() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

###------------------------------###
### CONSOLE PACKS MENU FUNCTIONS ###			
###------------------------------###
function console() {   
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU " \
            --ok-label Download --cancel-label Back \
            --menu "SELECT DESIRED CONSOLE AND PRESS A TO DOWNLOAD " 40 75 60 \
            1 "Amiga_____________________________??GB______650 GAMES" \
            2 "AmigaCD___________________________??GB______650 GAMES" \
            3 "Arcadia___________________________??GB______650 GAMES" \
            4 "Astrocade_________________________??GB______650 GAMES" \
            5 "Atari800__________________________??GB______650 GAMES" \
            6 "Atari2600_________________________??GB______650 GAMES" \
            7 "Atari5200_________________________??GB______??? GAMES" \
            8 "Atari7800_________________________??GB______??? GAMES" \
	    9 "AtariLynx_________________________??GB______??? GAMES" \
	    10 "AtariST___________________________??GB______??? GAMES" \
	    11 "Commadore64_______________________??GB______??? GAMES" \
	    12 "Colecovision______________________??GB______??? GAMES" \
	    13 "Daphne____________________________??GB______??? GAMES" \
	    14 "Dragon32__________________________??GB______??? GAMES" \
	    15 "Dreamcast_________________________??GB______??? GAMES" \
	    16 "Famicon___________________________??GB______??? GAMES" \
	    17 "Game and Watch____________________??GB______??? GAMES" \
	    18 "Gameboy___________________________??GB______??? GAMES" \
	    19 "Gameboy Advance___________________??GB______??? GAMES" \
	    20 "Gameboy Color_____________________??GB______??? GAMES" \
	    21 "Gamegear__________________________??GB______??? GAMES" \
	    22 "Genesis___________________________??GB______??? GAMES" \
	    23 "Intellivision_____________________??GB______??? GAMES" \
	    24 "Lightgun__________________________??GB______??? GAMES" \
	    25 "MarkIII___________________________??GB______??? GAMES" \
	    26 "Mastersystem______________________??GB______??? GAMES" \
	    27 "Megadrive_________________________??GB______??? GAMES" \
            28 "Mugen_____________________________??GB______650 GAMES" \
            29 "Nintendo 64_______________________??GB______??? GAMES" \
            30 "Naomi_____________________________??GB______??? GAMES" \
	    31 "Nintendo DS_______________________??GB______??? GAMES" \
	    32 "NeoGeo____________________________??GB______??? GAMES" \
	    33 "Nintendo Entertainment System_____??GB______??? GAMES" \
	    34 "Openbor___________________________??GB______??? GAMES" \
	    35 "Oric______________________________??GB______??? GAMES" \
	    36 "PC Engine_________________________??GB______??? GAMES" \
	    37 "Playstation1______________________??GB______??? GAMES" \
	    38 "Sega32x___________________________??GB______??? GAMES" \
	    39 "SegaCD____________________________??GB______??? GAMES" \
	    40 "SNES______________________________??GB______??? GAMES" \
	    41 "Turbo Graffix 16__________________??GB______??? GAMES" \
	    42 "Wine______________________________??GB______??? GAMES" \
	    43 "Wonderswan________________________??GB______??? GAMES" \
	    44 "ZMachine__________________________??GB______??? GAMES" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) amiga  ;;
            2) amigacd  ;;
            3) arcadia  ;;
            4) astrocade    ;;
            5) atari800        ;;
            6) atari2600       ;;
            7) atari5200  ;;
            8) atari7800  ;;
            9) atarilynx  ;;
            10) atarist  ;;
            11) c64  ;;
            12) colecovision  ;;
            13) daphne  ;;
            14) dragon32    ;;
            15) dreamcast   ;;
            16) famicon        ;;
            17) gameandwatch  ;;
            18) gb  ;;
            19) gba  ;;
            20) gbc  ;;
            21) gg  ;;
            22) genesis  ;;
            23) intellivision  ;;
            24) lightgun    ;;
            25) markiii        ;;
            26) mastersystem        ;;
            27) megadrive  ;;
            28) mugen ;;
            29) n64  ;;
            30) naomi  ;;
            31) nds  ;;
            32) neogeo  ;;
            33) nes  ;;
            34) openbor    ;;
            35) oric        ;;
            36) pc-engine        ;;
            37) ps1  ;;
            38) sega32x  ;;
            39) segacd  ;;
            40) snes  ;;
            41) tg16  ;;
            42) wine  ;;
            43) wonderswan  ;;
            44) zmachine  ;;
            *)  break ;;
        esac
    done
}

function amiga() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function amigacd() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function arcadia() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function astrocade() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function atari800() {
     wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function atari2600() { 
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function atari5200() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function atari7800() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function atarilynx() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function atarist() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function c64() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function colecovision() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function daphne() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function dragon32() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function dreamcast() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function famicon() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gameandwatch() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gb() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gba() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function gbc() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gamegear() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function genesis() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function intellivision() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function lightgun() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function markiii() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function mastersystem() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function megadrive() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function mugen() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function n64() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function naomi() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function nds() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function neogeo() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function nes() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function openbor() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function oric() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function pcengine () {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function ps1() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function sega32x() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function segacd() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function snes() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function tg16() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function wine() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function wonderswan() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function zmachine() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

###------------------------------###
### HACKED PACKS MENU FUNCTIONS  ###			###HACKED PACKS MENU###
###------------------------------###
function hacked() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED CONSOLES DOWNLOAD MENU " \
            --ok-label Download --cancel-label Back \
            --menu "SELECT DESIRED HACKED CONSOLE AND PRESS A TO DOWNLOAD " 60 75 60 \
            1 "NES Hacks " \
	    2 "GBA Hacks " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) nesh   ;;
	    2) gbh    ;;
            *)  break ;;
        esac
    done
}

###------------------------------###
###    TOOL BOX MENU FUNCTIONS   ###			 
###------------------------------###
function tool_box() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " TOOL BOX MENU " \
            --ok-label Select --cancel-label Back \
            --menu "SELECT TOOLSET AND PRESS A  " 60 75 60 \
            1 "Community Tools " \
	    2 "Emulator Tools " \
	    3 "Other Tools " \
	    4 "Update Devils Box" \
            2>&1 > /dev/tty)

        case "$choice" in
	    1) community-tools   ;;
            2) emu ;;
	    3) other    ;;
	    4) update-db ;;
            *)  break ;;
        esac
    done
}
###-----------------------------------###
###  COMMUNITY TOOLS MENU FUNCTIONS   ###			 
###-----------------------------------###
function community-tools() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " COMMUNITY TOOLS MENU" \
            --ok-label Install --cancel-label Back \
            --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 60 75 60 \
	    1 "RetroPie Extras________________________________________Zero-Jay " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) rp-extras   ;;
            *)  break ;;
        esac
    done
}
function rp-extras() {
cd ~
git clone https://github.com/zerojay/RetroPie-Extra.git
cd RetroPie-Extra/
./install-extras.sh
}

###------------------------------###
###EMULATOR TOOLS MENU FUNCTIONS ###			
###------------------------------###
function emu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "EMULATOR TOOLS MENU" \
            --ok-label Select --cancel-label Back \
            --menu "SELECT DESIRED SOURCE " 60 75 60 \
	    1 "Commuity Emu Tools " \
	    2 "Retropie Setup Menu " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) community-emu   ;;
	    2) rpi_menu     ;;
            *)  break ;;
        esac
    done
}
#----------------------------------#
#   COMMUNITY EMU MENU FUNCTIONS   #			
#----------------------------------#
function community-emu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " COMMUNITY EMU TOOLS MENU" \
            --ok-label Install --cancel-label Back \
            --menu "SELECT EMU AND PRESS A TO DOWNLOAD/INSTALL " 60 75 60 \
	    1 "Mugen PI 4________________________________________ Supreme Team " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) mugen   ;;
            *)  break ;;
        esac
    done
}

function mugen() {
curl -sSl https://git.io/Jz9O3 | bash
}

#----------------------------------#
#   RETROPIE SETUP MENU FUNCTION   #			
#----------------------------------#
function rpi_menu() {
sudo ~/RetroPie-Setup/retropie_setup.sh
}

###---------------------------------###
###   OTHER TOOLS MENU FUNCTIONS    ###			
###---------------------------------###
function other() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " OTHER TOOLS MENU " \
            --ok-label Select --cancel-label Back \
            --menu "CHOOSE KIND OF TOOL " 60 75 60 \
	    1 "Hardware Tools " \
	    2 "Clear Controller Conifg " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) hardware   ;;
            2) clear_controller   ;;
            *)  break ;;
        esac
    done
}

#---------------------------------#
#   CLEAR CONTROLLER FUNCTION     #		
#---------------------------------#
function clear-controller() {
sudo rm ~/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
}


###---------------------------------###
### HARDWARE TOOLS MENU FUNCTIONS   ###			
###---------------------------------###
function other() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " HARDWARE TOOLS MENU " \
            --ok-label Select --cancel-label Back \
            --menu "SELECT TOOL PRESS TO APPLY/INSTALL " 60 75 60 \
	    1 "Argon1 Case Install/Config " \
	    2 "NESPI Case Install         " \
	    2 "NESPI Case Uninstall       " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) argon1   ;;
            2) nespi   ;;
            3) nespi_u   ;;
            *)  break ;;
        esac
    done
}

function argon1() {
curl https://download.argon40.com/argon1.sh | bash &&
bash /usr/bin/argonone-config
}

function nespi() {
wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/install.sh" | sudo bash
}

function nespi_u() {
wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/uninstall_all.sh" | sudo bash
}

###---------------------------------###
###   MISC DEVILS BOX FUNCTIONS     ###			
###---------------------------------###

#---------------------------------#
#   UPATE DEVILS BOX FUNCTION     #			
#---------------------------------#
function update-db() {
cd RetroPie/retropiemenu
sudo rm The-Devils-Box.sh
git clone https://github.com/Retro-Devils/Devils-Box/The-Devils-Box.sh
sudo reboot
}

#----------------------------#
# SHOW DISK SPACE FUNCTION   #
#----------------------------#
function show_disk() {
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' 
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB(%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
cpu_temp=$(< /sys/class/thermal/thermal_zone0/temp)
 cpu_temp=$(($cpu_temp/1000))
 echo Temp: $cpu_temp°C
sleep 8
}

#-------------------#
# REBOOT FUNCTION   #
#-------------------#
function system_reboot() {
    sudo reboot
}

# Main
main_menu