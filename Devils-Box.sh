 #!/bin/bash

export NCURSES_NO_UTF8_ACS=1
#IFS=';'

###  INTRO VIDEO     ###
omxplayer /home/pi/Devils-Box/intro.mp4

###-----------------------###
### MAIN MENU FUNCTIONS   ###
###-----------------------###

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX 2.0 " \
            --ok-label Select --cancel-label Exit-Devils-Box \
            --menu "DEVILS BOX MAIN MENU" 25 50 40 \
            1 "Artwork Packs" \
            2 "Console Packs" \
            3 "Hacked Packs" \
            4 "Tool Box" \
            5 "Reboot System" \
            6 "Show Disk Space" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) artwork       ;;
            2) consoles      ;;
            3) hacked        ;;
            4) tool_box      ;;
            5) system_reboot ;;
            6) show_disk     ;;
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
# ARTWORK MENU FUNCTIONS #				
#-----------------------#
function artwork() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " ARTWORK DOWNLOAD MENU " \
            --ok-label Download --cancel-label Back \
            --menu "INFO: 
			[*] MEANS PACK INCLUDES    [ ] MEANS PACK DOESNT INCLUDE  
			AUTO DOWNLOADS TO CORRECT LOCATIONS" 40 75 60 \
            1 "Amiga Artwork____________[*]box__[*]cart__[*]snap__[*]wheel" \
            2 "AmigaCD Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
            3 "Arcadia Artwork__________[*]box__[*]cart__[*]snap__[*]wheel" \
            4 "Astrocade Artwork________[ ]box__[ ]cart__[*]snap__[ ]wheel" \
            5 "Atari800 Artwork_________[*]box__[*]cart__[*]snap__[ ]wheel" \
            6 "Atari2600 Artwork________[*]box__[*]cart__[*]snap__[*]wheel" \
            7 "Atari5200 Artwork________[*]box__[*]cart__[*]snap__[*]wheel" \
            8 "Atari7800 Artwork________[ ]box__[*]cart__[*]snap__[*]wheel" \
	    9 "AtariLynx Artwork________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    10 "AtariST Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    11 "Commadore64 Artwork______[*]box__[*]cart__[*]snap__[ ]wheel" \
	    12 "Coleco Artwork___________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    13 "Daphne Artwork___________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    14 "Dragon32 Artwork_________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    15 "Dreamcast Artwork________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    16 "Famicon Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    17 "Game & Watch Artwork_____[*]box__[*]cart__[*]snap__[ ]wheel" \
	    18 "Gameboy Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    19 "GBA Artwork______________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    20 "GBC Artwork______________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    21 "Gamegear Artwork_________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    22 "Genesis Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    23 "Intellivision Artwork____[*]box__[*]cart__[*]snap__[ ]wheel" \
	    24 "Lightgun Artwork_________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    25 "MarkIII Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    26 "Mastersystem Artwork_____[*]box__[*]cart__[*]snap__[ ]wheel" \
	    27 "Megadrive Artwork________[*]box__[*]cart__[*]snap__[ ]wheel" \
            28 "Mugen Artwork____________[*]box__[*]cart__[*]snap__[ ]wheel" \
            29 "N64 Artwork______________[*]box__[*]cart__[*]snap__[ ]wheel" \
            30 "Naomi Artwork____________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    31 "NDS Artwork______________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    32 "NeoGeo Artwork___________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    33 "NES Artwork______________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    34 "Openbor Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    35 "Oric Artwork_____________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    36 "PC Engine Artwork________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    37 "PS1 Artwork______________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    38 "Sega32x Artwork__________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    39 "SegaCD Artwork___________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    40 "SNES Artwork_____________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    41 "TG 16 Artwork____________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    42 "Wine Artwork_____________[*]box__[*]cart__[*]snap__[ ]wheel" \
	    43 "Wonderswan Artwork_______[*]box__[*]cart__[*]snap__[ ]wheel" \
	    44 "ZMachine Artwork_________[*]box__[*]cart__[*]snap__[ ]wheel" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) amiga-art         ;;
            2) amigacd-art       ;;
            3) arcadia-art       ;;
            4) astrocade-art     ;;
            5) atari800-art      ;;
            6) atari2600-art     ;;
            7) atari5200-art     ;;
            8) atari7800-art     ;;
            9) atarilynx-art     ;;
            10) atarist-art      ;;
            11) c64-art          ;;
            12) colecovision-art ;;
            13) daphne-art       ;;
            14) dragon32-art     ;;
            15) dreamcast-art    ;;
            16) famicon-art      ;;
            17) gameandwatch-art ;;
            18) gb-art           ;;
            19) gba-art          ;;
            20) gbc-art          ;;
            21) gg-art           ;;
            22) genesis-art      ;;
            23) intellivision-art;;
            24) lightgun-art     ;;
            25) markiii-art      ;;
            26) mastersystem-art ;;
            27) megadrive-art    ;;
            28) mugen-art        ;;
            29) n64-art          ;;
            30) naomi-art        ;;
            31) nds-artwork      ;;
            32) neogeo-artwork   ;;
            33) nes-art          ;;
            34) openbor-art      ;;
            35) oric-art         ;;
            36) pc-engine-art    ;;
            37) ps1-art          ;;
            38) sega32x-art      ;;
            39) segacd-art       ;;
            40) snes-art         ;;
            41) tg16-art         ;;
            42) wine-art         ;;
            43) wonderswan-art   ;;
            44) zmachine-art     ;;
            *)  break ;;
        esac
    done
}

function amiga-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function amigacd-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/amigacd/boxart/ -P ~/RetroPie/roms/amigacd/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/amigacd/cartart/ -P ~/RetroPie/roms/amigacd/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/amigacd/snap/ -P ~/RetroPie/roms/amigacd/snap -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/amigacd/wheel/ -P ~/RetroPie/roms/amigacd/wheel -erobots=off
}
function arcadia-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/arcadia/boxart/ -P ~/RetroPie/roms/arcadia/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/arcadia/cartart/ -P ~/RetroPie/roms/arcadia/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/arcadia/snap/ -P ~/RetroPie/roms/arcadia/snap -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/arcadia/wheel/ -P ~/RetroPie/roms/arcadia/wheel -erobots=off
}

function astrocade-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/astrocade/wheel/ -P ~/RetroPie/roms/astrocade/wheel -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/astrocade/snap/ -P ~/RetroPie/roms/astrocade/snap -erobots=off
}
function atari800-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function atari2600-art() { 
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari2600/boxart/ -P ~/RetroPie/roms/atari2600/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari2600/cartart/ -P ~/RetroPie/roms/atari2600/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari2600/snap/ -P ~/RetroPie/roms/atari200/snap -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari2600/wheel/ -P ~/RetroPie/roms/atari2600/wheel -erobots=off
}

function atari7800-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari7800/boxart/ -P ~/RetroPie/roms/atari7800/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari7800/cartart/ -P ~/RetroPie/roms/atari7800/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari7800/videos/ -P ~/RetroPie/roms/atari7800/snap -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari7800/wheel/ -P ~/RetroPie/roms/atari7800/wheel -erobots=off
}

function atari5200-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari5200/boxart/ -P ~/RetroPie/roms/atari5200/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari5200/cartart/ -P ~/RetroPie/roms/atari5200/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari5200/videos/ -P ~/RetroPie/roms/atari5200/snap -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/atari5200/wheel/ -P ~/RetroPie/roms/atari5200/wheel -erobots=off
}

function atarilynx-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function atarist-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function c64-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function colecovision() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function daphne() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function dragon32() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function dreamcast() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function famicon() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function gameandwatch() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function gb() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}
function gba() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function gbc() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}
function gamegear() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function genesis() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function intellivision() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function lightgun() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function markiii() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function mastersystem() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function megadrive-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function mugen() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/mugen/boxart/ -P ~/RetroPie/roms/mugens/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/mugen/snaps/ -P ~/RetroPie/roms/mugens/snap -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-box-media/mugen/wheel/ -P ~/RetroPie/roms/mugens/wheel -erobots=off
}
function n64() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function naomi() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function nds() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function neogeo() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function nes-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function openbor-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function oric-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function pcengine-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function ps1-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function sega32x-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function segacd-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function snes-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Media/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function tg16-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function wine-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function wonderswan=art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

function zmachine-art() {
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/boxart/ -P ~/RetroPie/roms/snes/boxart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/cartart/ -P ~/RetroPie/roms/snes/cartart -erobots=off
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/Metadata/snes/snap/ -P ~/RetroPie/roms/snes/snap -erobots=off
}

###------------------------------###
### CONSOLE PACKS MENU FUNCTIONS ###			
###------------------------------###
function consoles() {   
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU " \
            --ok-label Download --cancel-label Back \
            --menu "PRESS A/ENTER TO DOWNLOAD PACK" 40 75 60 \
            1 "Amiga_____________________________??GB____ __?? GAMES" \
            2 "AmigaCD___________________________01GB______090 GAMES" \
            3 "Arcadia___________________________??GB______050 GAMES" \
            4 "Astrocade_________________________50MB______650 GAMES" \
            5 "Atari800__________________________770MB_____650 GAMES" \
            6 "Atari2600_________________________??GB______650 GAMES" \
            7 "Atari5200_________________________70MB______080 GAMES" \
            8 "Atari7800_________________________??GB______??? GAMES" \
	    9 "AtariLynx_________________________??GB______??? GAMES" \
	    10 "AtariST___________________________??GB______??? GAMES" \
	    11 "Commadore64_______________________3.2GB____3000 GAMES" \
	    12 "Colecovision______________________150MB_____140 GAMES" \
	    13 "Daphne____________________________??GB______??? GAMES" \
	    14 "Dragon32__________________________??GB______??? GAMES" \
	    15 "Dreamcast_________________________10GB______010 GAMES" \
	    16 "Famicon___________________________??GB______??? GAMES" \
	    17 "Game and Watch____________________??GB______??? GAMES" \
	    18 "Gameboy__________________________1.4GB______800 GAMES" \
	    19 "Gameboy Advance___________________05GB_____1000 GAMES" \
	    20 "Gameboy Color_____________________1.4GB_____420 GAMES" \
	    21 "Gamegear__________________________800MB_____337 GAMES" \
	    22 "Genesis___________________________2.5GB_____900 GAMES" \
	    23 "Intellivision_____________________??GB______??? GAMES" \
	    24 "Lightgun__________________________??GB______??? GAMES" \
	    25 "MarkIII___________________________??GB______??? GAMES" \
	    26 "Mastersystem______________________700MB_____300 GAMES" \
	    27 "Megadrive_________________________586MB_____900 GAMES" \
            28 "Mugen_____________________________9.2GB_____009 GAMES" \
            29 "Nintendo 64_______________________5.0GB_____300 GAMES" \
            30 "Naomi_____________________________??GB______??? GAMES" \
	    31 "Nintendo DS_______________________21GB______750 GAMES" \
	    32 "NeoGeo____________________________??GB______??? GAMES" \
	    33 "Nintendo Entertainment System____100MB______850 GAMES" \
	    34 "Openbor___________________________??GB______??? GAMES" \
	    35 "Oric______________________________??GB______??? GAMES" \
	    36 "PC Engine_________________________??GB______??? GAMES" \
	    37 "PS1________________________________13GB______40 GAMES" \
	    38 "Sega32x___________________________??GB______??? GAMES" \
	    39 "SegaCD____________________________??GB______??? GAMES" \
	    40 "SNES______________________________500MB_____500 GAMES" \
	    41 "Turbo Graffix 16__________________??GB______??? GAMES" \
	    42 "Wine______________________________??GB______??? GAMES" \
	    43 "Wonderswan________________________??GB______??? GAMES" \
	    44 "ZMachine_________________121______??GB______??? GAMES" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) amiga         ;;
            2) amigacd       ;;
            3) arcadia       ;;
            4) astrocade     ;;
            5) atari800      ;;
            6) atari2600     ;;
            7) atari5200     ;;
            8) atari7800     ;;
            9) atarilynx     ;;
            10) atarist      ;;
            11) c64          ;;
            12) colecovision ;;
            13) daphne       ;;
            14) dragon32     ;;
            15) dreamcast    ;;
            16) famicon      ;;
            17) gameandwatch ;;
            18) gb           ;;
            19) gba          ;;
            20) gbc          ;;
            21) gg           ;;
            22) genesis      ;;
            23) intellivision;;
            24) lightgun     ;;
            25) markiii      ;;
            26) mastersystem ;;
            27) megadrive    ;;
            28) mugen        ;;
            29) n64          ;;
            30) naomi        ;;
            31) nds          ;;
            32) neogeo       ;;
            33) nes          ;;
            34) openbor      ;;
            35) oric         ;;
            36) pc-engine    ;;
            37) ps1          ;;
            38) sega32x      ;;
            39) segacd       ;;
            40) snes         ;;
            41) tg16         ;;
            42) wine         ;;
            43) wonderswan   ;;
            44) zmachine     ;;
            *)  break ;;
        esac
    done
}
function amiga() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}

function amigacd() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function arcadia() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/arcadia/ -P ~/RetroPie/roms/arcadia -erobots=off
}

function astrocade() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/astrocade/ -P ~/RetroPie/roms/astrocade -erobots=off
}
function atari800() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/atari800/ -P ~/RetroPie/roms/atari800 -erobots=off
}

function atari2600() { 
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/atari2600/ -P ~/RetroPie/roms/atari2600 -erobots=off
}
function atari5200() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/atari5200/ -P ~/RetroPie/roms/atari5200 -erobots=off
}

function atari7800() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/atari7800/ -P ~/RetroPie/roms/atari7800 -erobots=off
}
function atarilynx() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}

function atarist() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/atarist/ -P ~/RetroPie/roms/atarist -erobots=off
}
function c64() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/c64/ -P ~/RetroPie/roms/c64 -erobots=off
}

function colecovision() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/coleco/ -P ~/RetroPie/roms/coleco -erobots=off
}
function daphne() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function dragon32() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/dragon32/ -P ~/RetroPie/roms/dragon32 -erobots=off
}

function dreamcast() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/dreamcast/ -P ~/RetroPie/roms/dreamcast -erobots=off
}

function fds() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gameandwatch() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function gb() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/gb/ -P ~/RetroPie/roms/gb -erobots=off
}
function gba() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/gba/ -P ~/RetroPie/roms/gba -erobots=off
}

function gbc() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/gbc/ -P ~/RetroPie/roms/gbc -erobots=off
}
function gamegear() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/gamegear/ -P ~/RetroPie/roms/gamegear -erobots=off
}

function genesis() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function intellivision() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function lightgun() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function markiii() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}

function mastersystem() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/mastersystem/ -P ~/RetroPie/roms/mastersystem -erobots=off
}
function megadrive() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/megadrive/ -P ~/RetroPie/roms/megadrive -erobots=off
}

function mugen() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function n64() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/n64/ -P ~/RetroPie/roms/n64 -erobots=off
}

function naomi() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function nds() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}

function neogeo() {
    wget https://github.com/SinisterSpatula/Gpi2/blob/master/control_updater_menu.sh
}
function nes() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/nes/ -P ~/RetroPie/roms/nes -erobots=off
}

function openbor() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function oric() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}

function pcengine () {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function ps1() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}

function sega32x() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function segacd() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function snes() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/snes/ -P ~/RetroPie/roms/snes -erobots=off
}
function tg16() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function wine() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function wonderswan() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}

function zmachine() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box_202112/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}

###------------------------------###
### HACKED PACKS MENU FUNCTIONS  ###			###HACKED PACKS MENU###
###------------------------------###
function hacked() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED CONSOLES DOWNLOAD MENU " \
            --ok-label Download --cancel-label Back \
            --menu " PRESS A/ENTER TO DOWNLOAD PACK" 40 75 60 \
            1 "Gameboy Hacks___________________________04MB____019 GAMES " \
	    2 "NES Hacks_______________________________20MB____190 GAMES " \
            3 "Gameboy Hacks___________________________04MB____019 GAMES " \
	    4 "NES Hacks_______________________________20MB____190 GAMES " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) gbh     ;;
	    2) nesh    ;;
            3) gbh     ;;
	    4) nesh    ;;
            *)  break ;;
        esac
    done
}
function gbh() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/gbh/ -P ~/RetroPie/roms/gbh -erobots=off
}
function nesh() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/nesh/ -P ~/RetroPie/roms/nesh -erobots=off
}
function gbh() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/gbh/ -P ~/RetroPie/roms/gbh -erobots=off
}
function nesh() {
    wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/the-devils-box/nesh/ -P ~/RetroPie/roms/nesh -erobots=off
}
###------------------------------###
###    TOOL BOX MENU FUNCTIONS   ###			 
###------------------------------###
function tool_box() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " TOOL BOX MENU " \
            --ok-label Select --cancel-label Back \
            --menu "SELECT TOOLSET AND PRESS A  " 25 50 40 \
            1 "Community Tools   " \
	    2 "Emulator Tools    " \
	    3 "Other Tools       " \
	    4 "Devils Box Tools  " \
            2>&1 > /dev/tty)

        case "$choice" in
	    1) community_tools  ;;
            2) emu_tools        ;;
	    3) other_tools      ;;
	    4) db_tools        ;;
            *)  break ;;
        esac
    done
}
###-----------------------------------###
###  COMMUNITY TOOLS MENU FUNCTIONS   ###			 
###-----------------------------------###
function community_tools() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " COMMUNITY TOOLS MENU" \
            --ok-label Install --cancel-label Back \
            --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 75 60 \
	    1 "RetroPie Extras______________________________________Zero Jay   " \
	    2 "T.A.M.P.O____________________________________________The Pitster" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) rp-extras   ;;
	    2) tampo       ;;
            *)  break ;;
        esac
    done
}
function rp_extras() {
cd ~
git clone https://github.com/zerojay/RetroPie-Extra.git
cd RetroPie-Extra/
./install-extras.sh
}

function tampo() {
wget -q0- https://git.io/JDfjg | bash 
}

###------------------------------###
###EMULATOR TOOLS MENU FUNCTIONS ###			
###------------------------------###
function emu_tools() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "EMULATOR TOOLS MENU" \
            --ok-label Select --cancel-label Back \
            --menu "SELECT DESIRED SOURCE " 25 50 40 \
	    1 "Commuity Emu Tools  " \
	    2 "Retropie Setup Menu " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) community_emu   ;;
	    2) rpi_menu        ;;
            *)  break ;;
        esac
    done
}

#----------------------------------#
#   RETROPIE SETUP MENU FUNCTION   #			
#----------------------------------#
function rpi_menu() {
sudo ~/RetroPie-Setup/retropie_setup.sh
}

#----------------------------------#
#   COMMUNITY EMU MENU FUNCTIONS   #			
#----------------------------------#
function community_emu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " COMMUNITY EMU TOOLS MENU" \
            --ok-label Install --cancel-label Back \
            --menu "SELECT EMU AND PRESS A TO DOWNLOAD/INSTALL " 30 75 60 \
	    1 "Mugen__________________________________PI 4___ Supreme Team " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) mugen   ;;
            *)  break ;;
        esac
    done
}

#----------------------------------#
#       MUGEN EMU FUNCTIONS        #			
#----------------------------------#
function mugen() {
curl -sSl https://git.io/Jz9O3 | bash
}



###---------------------------------###
###   OTHER TOOLS MENU FUNCTIONS    ###			
###---------------------------------###
function other_tools() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " OTHER TOOLS MENU " \
            --ok-label Select --cancel-label Back \
            --menu "CHOOSE KIND OF TOOL " 40 75 60 \
	    1 "Hardware Tools " \
	    2 "Clear Controller Conifg " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) hardware          ;;
            2) clear_controller  ;;
            *)  break ;;
        esac
    done
}

#---------------------------------#
#   CLEAR CONTROLLER FUNCTION     #		
#---------------------------------#
function clear_controller() {
sudo rm ~/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
}


###---------------------------------###
### HARDWARE TOOLS MENU FUNCTIONS   ###			
###---------------------------------###
function hardware() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " HARDWARE TOOLS MENU " \
            --ok-label Select --cancel-label Back \
            --menu "SELECT TOOL PRESS TO APPLY/INSTALL " 30 60 60 \
	    1 "Argon1 Case Install & Config " \
	    2 "NESPI Case Install         " \
	    2 "NESPI Case Uninstall       " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) argon1    ;;
            2) nespi     ;;
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
###   DEVILS BOX TOOLS FUNCTION     ###			
###---------------------------------###
function db_tools() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX TOOLS MENU " \
            --ok-label Select --cancel-label Back \
            --menu "SYSTEM WILL REBOOT WITH REMOVAL OR UPDATE " 30 45 45 \
	    1 "About Devils Box   " \
            2 "Remove Devils Box  " \
	    3 "Update Devils Box  " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) about_db    ;;
            2) remove_db   ;;
            3) update_db   ;;
            *)  break ;;
        esac
    done
}
#--------------------------_#
#ABOUT DEVILS BOX #
#---------------------------#
function about_db() {
cat ~/Devils-Box/INFO.txt
sleep 20
}
#--------------------------_#
#REMOVE DEVILS BOX #
#---------------------------#
function remove_db() {
sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh
sudo rm ~/Devils-Box
sudo reboot
}

#------------------#
#UPDATE DEVILS BOX #
#------------------#
function update_db() {
sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh
git clone https://github.com/Retro-Devils/Devils-Box -P ~/
mv ~/Devils-Box/Devils-box.sh -P ~/RetroPie/retropiemenu/
sudo reboot
}

###---------------------------------###
###   MISC DEVILS BOX FUNCTIONS     ###			
###---------------------------------###

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