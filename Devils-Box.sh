#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="DEVILS BOX----V-3.0----UPDATED 1/28/21"
##-------------------------##
##       HOST SITES        ##
##-------------------------##

#--------ART HOSTS----------#
ART_HOST="https://archive.org/download/devils-box-media-alt"
ART_HOST2="https://github.com/Retro-Devils-Media"
#ART_HOST3=""
#ART_HOST4=""

#--------GAME HOSTS---------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
#HOST3=""
#HOST4=""

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"


###  INTRO VIDEO     ###
clear
omxplayer "$HOME"/Devils-Box/files/intro.mp4
###   NET CHECKER    ###
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  NETCHECK=0
else
  NETCHECK=1
fi

###-----------------------###
### MAIN MENU FUNCTIONS   ###
###-----------------------###

function main_menu() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "MAIN MENU " \
      --ok-label Select --cancel-label Exit-Devils-Box \
      --menu "WELCOME TO THE OTHERSIDE" 20 50 30 \
      - "----Downloaders----" \
      1 "Artwork Packs" \
      2 "Console Packs" \
      3 "Hacked Packs" \
      4 "Pick & Choose" \
	  5 "Game Fixes" \
      + "-------Tools-------" \
      6 "Tool Box" \
      7 "Reboot System" \
      8 "Show System Info" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) artwork ;;
    2) consoles ;;
    3) hacked ;;
    4) pick ;;
	5) game_fixes ;;
    6) tool_box ;;
    7) system_reboot ;;
    8) show_sysinfo ;;
    -) nono ;;
    +) none ;;
    *) break ;;
    esac
  done
}
#-----------------------#
# ARTWORK MENU FUNCTIONS #
#-----------------------#
function artwork() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR !! " --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  local choice

 while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " ARTWORK DOWNLOAD MENU " \
      --ok-label Download --cancel-label Main-Menu \
      --menu "[*] MEANS PACK INCLUDES..........[ ] MEANS PACK DOESNT INCLUDE  		
                  --PRESS A/ENTER TO DOWNLOAD.......***MEANS COMING SOON" 30 70 50 \
      - "_________________Consoles-Regular-Artwork__________________" \
      1 "Amiga Artwork            [*]box  [*]cart  [*]snap  [*]wheel" \
      2 "AmigaCD32 Artwork        [*]box  [ ]cart  [*]snap  [ ]wheel" \
      3 "Amstrad CPC              [*]box  [ ]cart  [*]snap  [*]wheel" \
      4 "Arcade Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      5 "Arcadia Artwork          [*]box  [ ]cart  [*]snap  [ ]wheel" \
      6 "Astrocade Artwork        [*]box  [ ]cart  [*]snap  [ ]wheel" \
      7 "Atari800 Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      8 "Atari2600 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      9 "Atari5200 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      10 "Atari7800 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      11 "AtariLynx Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      12 "AtariST Artwork          [*]box  [ ]cart  [*]snap  [ ]wheel" \
      13 "Atomiswave               [*]box  [*]cart  [*]snap  [*]wheel" \
      14 "Commadore64 Artwork      [*]box  [*]cart  [*]snap  [*]wheel" \
      15 "Coleco Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      16 "***Daphne Artwork***     [*]box  [*]cart  [*]snap  [ ]wheel" \
      17 "Dragon32 Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      18 "Dreamcast Artwork        [*]box  [ ]cart  [*]snap  [ ]wheel" \
      19 "Electron                 [ ]box  [ ]cart  [*]snap  [*]wheel" \
      20 "Famicon Artwork          [*]box  [ ]cart  [*]snap  [ ]wheel" \
      21 "FDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      22 "Game & Watch Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      23 "Gameboy Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      24 "GBA Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      25 "GBC Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      26 "Gamegear Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      27 "***Genesis Artwork***    [*]box  [*]cart  [*]snap  [ ]wheel" \
      28 "Intellivision Artwork    [*]box  [ ]cart  [ ]snap  [*]wheel" \
      29 "***Lightgun Artwork***   [*]box  [*]cart  [*]snap  [ ]wheel" \
      30 "MarkIII Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      31 "Mastersystem Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      32 "***Megadrive Artwork***  [*]box  [*]cart  [*]snap  [*]wheel" \
      33 "Megadrive-Japan Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      34 "MSX Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      35 "MSX2 Artwork             [*]box  [*]cart  [*]snap  [*]wheel" \
      36 "N64 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      37 "Naomi Artwork            [*]box  [ ]cart  [*]snap  [*]wheel" \
      38 "NDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      39 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      40 "***NES Artwork***        [*]box  [ ]cart  [*]snap  [*]wheel" \
      41 "NGPC Artwork             [*]box  [ ]cart  [*]snap  [ ]wheel" \
      42 "Openbor Artwork          [*]box  [ ]cart  [*]snap  [*]wheel" \
      43 "Oric Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      44 "Pokemini Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      45 "***PC Engine Artwork***  [*]box  [*]cart  [*]snap  [ ]wheel" \
      46 "PS1 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      47 "Saturn Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      48 "Saturn-Japan Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      49 "Scummvm Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      50 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      51 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      52 "***SNES Artwork***       [*]box  [*]cart  [*]snap  [ ]wheel" \
      53 "Super Famicon Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      54 "SG-1000 Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      55 "SuperGrafx Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      56 "TurboGrafx 16 Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      57 "Vectrex Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      58 "Videopac Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      59 "Virtualboy Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      60 "VMU Artwork              [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      61 "Wine Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      62 "WonderswanColor Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      63 "Sharp x1 Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      64 "Sharp x68000 Artwork     [*]box  [ ]cart  [*]snap  [*]wheel" \
      65 "ZMachine Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      66 "ZXspectrum Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      +  "________________Consoles-Hacks-Artwork_____________________" \
      67 "GBA Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      68 "GameBoy Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      69 "Genesis Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      70 "Gamegear Hacks Artwork   [*]box  [*]cart  [*]snap  [*]wheel" \
      71 "NES Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      72 "SNES Hacks Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      2<&1 >/dev/tty)

    case "$choice" in
      1) download-art "amiga" ;;
      2) download-art "amigacd32" ;;
      3) download-art "amstradcpc" ;;
      4) download-art "arcade" ;;
      5) download-art "arcadia" ;;
      6) download-art "astrocade" ;;
      7) download-art "atari800" ;;
      8) download-art "atari2600" ;;
      9) download-art "atari5200" ;;
      10) download-art "atari7800" ;;
      11) download-art "atarilynx" ;;
      12) download-art "atarist" ;;
      13) download-art "atomiswave" ;;
      14) download-art "c64" ;;
      15) download-art "coleco" ;;
      16) download-art "daphne" ;;
      17) download-art "dragon32" ;;
      18) download-art "dreamcast" ;;
      19) download-art "electron" ;;
      20) download-art "famicon" ;;
      21) download-art "fds" ;;
      22) download-art "gameandwatch" ;;
      23) download-art "gb" ;;
      24) download-art "gba" ;;
      25) download-art "gbc" ;;
      26) download-art "gamegear" ;;
      27) download-art "genesis" ;;
      28) download-art "intellivision" ;;
      29) download-art "lightgun" ;;
      30) download-art "markiii" ;;
      31) download-art "mastersystem" ;;
      32) download-art "megadrive" ;;
      33) download-art "megadrive-japan" ;;
      34) download-art "msx" ;;
      35) download-art "msx2" ;;
      36) download-art "n64" ;;
      37) download-art "naomi" ;;
      38) download-art "nds" ;;
      39) download-art "neogeo" ;;
      40) download-art "nes" ;;
      41) download-art "ngpc" ;;
      42) download-art "openbor" ;;
      43) download-art "oric" ;;
      44) download-art "pokemini" ;;
      45) download-art "pc-engine" ;;
      46) download-art "psx" ;;
      47) download-art "saturn" ;;
      48) download-art "saturn-japan" ;;
      49) download-art "scummvm" ;;
      50) download-art "sega32x" ;;
      51) download-art "segacd" ;;
      52) download-art "sfc" ;;
      53) download-art "sg-1000" ;;
      54) download-art "snes" ;;
      55) download-art "supergrafx" ;;
      56) download-art "tg16" ;;
      57) download-art "vectrex" ;;
      58) download-art "videopac" ;;
      59) download-art "virtualboy" ;;
      60) download-art "vmu"  ;;
      61) download-art "wine" ;;
      62) download-art "wonderswancolor" ;;
      63) download-art "x1" ;;
      64) download-art "x68000" ;;
      65) download-art "zmachine" ;;
      66) download-art "zxspectrum" ;;
      67) download-art "gbah" ;;
      68) download-art "gbh" ;;
      69) download-art "genh" ;;
      70) download-art "ggh" ;;
      71) download-art "nesh" ;;
      72) download-art "snesh" ;;
      -) nono  ;;
      +) none  ;;
      *) break ;;
    esac
  done
fi
}
###------------------------------###
### CONSOLE PACKS MENU FUNCTIONS ###
###------------------------------###
function consoles() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER TO DOWNLOAD PACK..........****MEANS COMING SOON" 30 70 50 \
      + "__CONSOLE NAME___________________SIZE______# OF GAMES" \
      1 "Amiga                            300MB      340 GAMES" \
      2 "AmigaCD32                        461MB      133 GAMES" \
      3 "Amstrad CPC                      614MB     3264 GAMES" \
      4 "Arcade                           8.4GB     2361 GAMES" \
      5 "Arcadia                          201KB       47 GAMES" \
      6 "Astrocade                        174KB       48 GAMES" \
      7 "Atari800                        5.21MB      100 GAMES" \
      8 "Atari2600                        2.6MB      615 GAMES" \
      9 "Atari5200                        928KB       81 GAMES" \
      10 "Atari7800                          2MB       54 GAMES" \
      11 "AtariLynx                         10MB       77 GAMES" \
      12 "AtariST                           66MB      100 GAMES" \
      13 "Atomiswave                       2.5GB       24 GAMES" \
      14 "Commadore64                      9.5MB      144 GAMES" \
      15 "Colecovision                     2.7MB      146 GAMES" \
      16 "Dragon32                         897KB       51 GAMES" \
      17 "Dreamcast                       12.6GB       19 GAMES" \
      18 "Electron                         2.5MB      152 GAMES" \
      19 "Famicon                           19MB      169 GAMES" \
      20 "Famicom Disk                       2MB       43 GAMES" \
      21 "Game and Watch                    48MB       53 GAMES" \
      22 "Gameboy                           42MB      565 GAMES" \
      23 "Gameboy Advance                  3.4GB     1006 GAMES" \
      24 "Gameboy Color                    232MB      538 GAMES" \
      25 "Gamegear                          42MB      249 GAMES" \
      26 "Intellivision                      1MB       62 GAMES" \
      27 "****Lightgun MAME****             ??GB       ?? GAMES" \
      28 "MarkIII                            6MB       58 GAMES" \
      29 "Mastersystem                      35MB      280 GAMES" \
      30 "Genesis/Megadrive                409MB      561 GAMES" \
      31 "Genesis/Megadrive-Japan          149MB      278 GAMES" \
      32 "MSX                               30MB      708 GAMES" \
      33 "MSX 2                           6.24MB       83 GAMES" \
      34 "****Mugen****                    9.2GB      009 GAMES" \
      35 "Nintendo 64                      5.0GB      338 GAMES" \
      36 "Naomi                            1.5GB       15 GAMES" \
      37 "Nintendo DS                        4GB      171 GAMES" \
      38 "NeoGeo                           2.3GB      142 GAMES" \
      39 "Neo Geo Pocket Color              21MB       40 GAMES" \
      40 "Nintendo Entertainment System    100MB      869 GAMES" \
      41 "Openbor                         1.84GB       37 GAMES" \
      42 "Oric                             5.4MB      136 GAMES" \
      43 "Pokemini                         5.4MB       44 GAMES" \
      44 "PlayStation 1                      3GB       29 GAMES" \
      45 "Sega Saturn                      108GB      303 GAMES" \
      46 "Sega Staurn Japan                3.9GB       18 GAMES" \
      47 "ScummVM                          2.5GB       21 GAMES" \
      48 "Sega32x                           63MB       37 GAMES" \
      49 "SegaCD                            11GB       52 GAMES" \
      50 "Super Famicon                    475MB      487 GAMES" \
      51 "SG-1000                            1MB       68 GAMES" \
      52 "SNES                             508MB      603 GAMES" \
      53 "SuperGraffiix                    2.4MB        5 GAMES" \
      54 "Turbo Graffix 16                  20MB       94 GAMES" \
      55 "Vectrex                          201KB       20 GAMES" \
      56 "VideoPAC                         430KB       99 GAMES" \
      57 "Virtual Boy                        8MB       24 GAMES" \
      58 "Dreamcast VMU                      3MB      115 GAMES" \
      59 "Wine                          SUB-MENU        9 GAMES" \
      60 "Wonderswan Color                 116MB       84 GAMES" \
      61 "Sharp X1                         7.6MB       69 GAMES" \
      62 "Sharp X68000                     504MB      418 GAMES" \
      63 "ZMachine                           4MB       30 GAMES" \
      64 "ZXSpectrum                        38MB     1111 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) download-packs "amiga" ;;
    2) download-packs "amigacd32" ;;
    3) download-packs "amstradcpc" ;;
    4) download-packs "arcade" ;;
    5) download-packs "arcadia" ;;
    6) download-packs "arstrocade" ;;
    7) download-packs "atari800" ;;
    8) download-packs "atari2600" ;;
    9) download-packs "atari5200" ;;
    10) download-packs "atari7800" ;;
    11) download-packs "atarilynx" ;;
    12) download-packs "atarist" ;;
    13) download-packs "atomiswave" ;;
    14) download-packs "c64" ;;
    15) download-packs "coleco" ;;
    16) download-packs "dragon32" ;;
    17) download-packs "dreamcast" ;;
    18) download-packs "electron" ;;
    19) download-packs "famicon" ;;
    20) download-packs "fds" ;;
    21) download-packs "gameandwatch" ;;
    22) download-packs "gb" ;;
    23) download-packs "gba" ;;
    24) download-packs "gbc" ;;
    25) download-packs "gamegear" ;;
    26) download-packs "intellivision" ;;
    27) download-packs "lightgun" ;;
    28) download-packs "markiii" ;;
    29) download-packs "mastersystem" ;;
    30) download-packs "megadrive" ;;
    31) download-packs "megadrive-japan" ;;
    32) download-packs "msx" ;;
    33) download-packs "msx2" ;;
    34) download-packs "mugen" ;;
    35) download-packs "n64" ;;
    36) download-packs "naomi" ;;
    37) download-packs "nds" ;;
    38) download-packs "neogeo" ;;
    39) download-packs "nes" ;;
    40) download-packs "ngpc" ;;
    41) download-packs "openbor" ;;
    42) download-packs "oric" ;;
    43) download-packs "pokemini" ;;
    44) download-packs "psx" ;;
    45) download-packs "saturn" ;;
    46) download-packs "saturn-japan" ;;
    47) download-packs "scummvm" ;;
    48) download-packs "sega32" ;;
    49) download-packs "segacd" ;;
    50) download-packs "sfc" ;;
    51) download-packs "sg-1000" ;;
    52) download-packs "snes" ;;
    53) download-packs "supergrafx" ;;
    54) download-packs "tg16" ;;
    55) download-packs "vectrex" ;;
    56) download-packs "videopac" ;;
    57) download-packs "virtualboy" ;;
    58) download-packs "vmu" ;;
    59) winegames ;;
    60) download-packs "wonderswancolor" ;;
    61) download-packs "x1" ;;
    62) download-packs "x68000" ;;
    63) download-packs "zmachine" ;;
    64) download-packs "zxspectrum" ;;  
     +) none  ;;
     *) break ;;
    esac
   done
fi
}

#--------------------------------#
#      WINE SUB MENU FUNCTIONS   #
#--------------------------------#
function winegames() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "Wine Downloader Help" --msgbox " 
-------------------------------
       WINE DOWNLOADER HELP
-------------------------------
-You must have wine/box86 installed for this too work 
-Whats WINE? Wine/box86 play old pc games.
-Downloads most games to $HOME/RetroPie/roms/wine/games/.installs
-Games Includes a exe or.sh script to launch from Retropie 
-Games are zipped. Devils Box downloads unzips and does all the work for ya.
-If you move game folder change .sh script accordingly.
-Thanks for using have a good day." 0 0

    whiptail --clear --title "WINE DOWNLOAD MENU" --separate-output \
                --ok-button Download --cancel-button Consoles-Menu \
                --checklist "Choose:" 0 0 0 \
                "+" "GAME NAME                     FILE SIZE" off \
                "1" "Age Of Empires                    215MB" off \
                "2" "Age Of Empires 2                  6.1GB" off \
                "3" "Cuphead.                           11GB" off \
                "4" "Command & Conquer TS              1.3GB" off \
                "5" "Diablo 2                          1.8GB" off \
                "6" "Fallout                           535MB" off \
                "7" "Fallout 2                         555MB" off \
                "8" "Fallout Tactics                   1.5GB" off \
		"9" "The House Of The Dead             299MB" off \
		"10" "The House Of The Dead 2           579MB" off \
                "11" "Teenage Muntant Ninja Turtles     1.3GB" off \
		"12" "Starcraft                         1.2GB" off \
                "13" "Warcraft 3                        1.9GB" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
	        +) none ;;
                1) aoe ;;
                2) aoe-2 ;;
                3) cuphead ;;
                4) cncts  ;;
                5) diablo-2 ;;
                6) fallout ;;
                7) fallout-2 ;;
                8) fallout-tactics ;;
		9) thotd ;;
		10) thotd2 ;;
		11) tmnt ;;
                12) starcraft ;;
                13) warcraft-3 ;;
                *) ;;
        esac
        done < /tmp/results
fi
}
function aoe() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_AoE.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_AoE.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Age-Of-Empires.sh
chmod 755 "$HOME"/RetroPie/roms/wine/Age-Of-Empires-The-Rise-Of-Rome.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_AoE.zip
}
function aoe-2() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_AoE2.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_AoE2.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Age-Of-Empires-2.sh
chmod 755 "$HOME"/RetroPie/roms/wine/Age-Of-Empires-2-The-Conquerors.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_AoE2.zip
}
function cuphead() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Cuphead.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_Cuphead.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Cuphead.sh
chmod 755 "$HOME"/RetroPie/roms/wine/Cuphead/Cuphead.exe
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_Cuphead.zip
}
function cncts() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_CNCTS.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_CNCTS.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Command-And-Conquer-TS.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_CNCTS.zip
}
function diablo-2() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Diablo2.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_Diablo2.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Diablo-2.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_Diablo2.zip
}
function fallout() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Fallout.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_Fallout.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Fallout.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_Fallout.zip
}
function fallout-2() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Fallout2.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_CNCTS.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Fallout-2.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_Fallout2.zip
}
function fallout-tactics() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_FalloutTactics.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_FalloutTactics.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Fallout-Tactics.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_FalloutTactics.zip
}
function thotd() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_THOTD.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_THOTD.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/The-House-Of-The-Dead.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_THOTD.zip
}
function thotd2() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_THOTD2.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_THOTD2.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/The-House-Of-The-Dead-2.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_THOTD2.zip
}
function tmnt() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_TMNT.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_TMNT.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/TMNT.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_TMNT.zip
}
function starcraft() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Starcraft.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_Starcraft.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Starcraft.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_Starcraft.zip
}
function warcraft-3() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Warcraft3.zip -P "$HOME"/RetroPie/roms/wine
unzip -o "$HOME"/RetroPie/roms/wine/Retro-Devils_Warcraft3.zip -d "$HOME"/RetroPie/roms/wine/
chmod 755 "$HOME"/RetroPie/roms/wine/Warcraft-3.sh
sudo rm -r "$HOME"/RetroPie/roms/wine/Retro-Devils_Warcraft3.zip
}
###------------------------------###
### HACKED PACKS MENU FUNCTIONS  ###
###------------------------------###
function hacked() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED PACKS DOWNLOAD MENU " \
     --ok-button Download --cancel-button Main-Menu \
     --menu " PRESS A/ENTER TO DOWNLOAD PACK" 30 70 50 \
      + "__CONSOLE NAME________________________SIZE_____# OF GAMES " \
      1 "Gameboy Advance Hacks                  195MB     26 GAMES " \
      2 "Gameboy Hacks                            4MB     19 GAMES " \
      3 "Genesis Hacks                          197MB    191 GAMES " \
      4 "Gamegear Hacks                           1MB      4 GAMES " \
      5 "NES Hacks                              962KB      6 GAMES " \
      6 "SNES Hacks                              40MB     37 GAMES " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) download-packs "gbah" ;;
    2) download-packs "gbh" ;;
    3) download-packs "genh" ;;
    4) download-packs "ggh" ;;
    5) download-packs "nesh" ;;
    6) download-packs "snesh" ;;
    *) break ;;
    esac
  done
fi
}

###-------------------------------------###
###          PICK AND CHOOSE            ###
###-------------------------------------###

function pick() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
local choice
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PICK & CHOOSE" \
      --ok-label Select --cancel-label Main-Menu \
      --menu "PICK CONSOLE & CHOOSE GAME(S) " 20 50 30 \
      1 "AtomisWave" \
      2 "Dreamcast" \
      3 "GameBoy Advance" \
      4 "MegaDrive" \
      5 "NES" \
      6 "Saturn" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) atomiswave ;;
    2) dreamcast ;;
    3) gba ;;
    4) megadrive ;;
    5) nes ;;
    6) saturn ;;
    *) break ;;
    esac
  done
fi
}

function atomiswave() {
        local choice
    whiptail --clear --title "PICK & CHOOSE ATOMISWAVE" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Animal Basket" off \
                "2" "Demolish Fist" off \
                "3" "Dirty Pigskin Football" off \
                "4" "Dolphin Blue" off \
                "5" "Fist of the North Star (Hokuto No Ken)" off \
                "6" "Faster Than Speed" off \
                "7" "gamelist.xml" off \
                "8" "Guilty Gear Isuka" off \
                "9" "Guilty Gear X Ver. 1.5" off \
                "10" "King Of Fighters NeoWave" off \
                "11" "King Of Fighters NeoWaveJ" off \
                "12" "King Of Fighters XI" off \
                "13" "Knights Of Valour" off \
                "14" "Maximum Speed" off \
                "15" "Metal Slug 6" off \
                "16" "Neo-Geo Battle Coliseum" off \
                "17" "Ranger Mission" off \
                "18" "Rumble Fish" off \
                "19" "Rumble Fish 2" off \
                "20" "Salary Man Kintaro" off \
                "21" "Samurai Shodown VI" off \
                "22" "Sushi Bar USA" off \
                "23" "Victory Furlong Horse Racing" off \
                "24" "Extrme Hunt 2" off \
                "25" "Extrme Hunt" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
           1) download-game "atomiswave" "anmlbskt.zip" ;;
           2) download-game "atomiswave" "demofist.zip" ;;
           3) download-game "atomiswave" "dirtypig.zip" ;;
           4) download-game "atomiswave" "dolphin.zip" ;;
           5) download-game "atomiswave" "fotns.zip" ;;
           6) download-game "atomiswave" "ftspeed.zip" ;;
           7) download-game "atomiswave" "gamelist.xml" ;;
           8) download-game "atomiswave" "ggisuka.zip" ;;
           9) download-game "atomiswave" "ggx15.zip" ;;
           10) download-game "atomiswave" "kofnw.zip" ;; 
           11) download-game "atomiswave" "kofnwj.zip" ;;
           12) download-game "atomiswave" "kofxi.zip" ;;
           13) download-game "atomiswave" "kov7sprt.zip" ;;
           14) download-game "atomiswave" "maxspeed.zip" ;;
           15) download-game "atomiswave" "mslug6.zip" ;;
           16) download-game "atomiswave" "ngbc.zip"  ;;
           17) download-game "atomiswave" "rangrmsn.zip" ;;
           18) download-game "atomiswave" "rumblef.zip" ;;
           19) download-game "atomiswave" "rumblef2.zip" ;;
           20) download-game "atomiswave" "samsptk.zip" ;;
           21) download-game "atomiswave" "sprtshot.zip" ;;
           22) download-game "atomiswave" "sushibar.zip" ;;
           23) download-game "atomiswave" "vfurlong.zip" ;;
           24) download-game "atomiswave" "xtrmhnt2.zip" ;;
           25) download-game "atomiswave" "xtrmhunt.zip" ;;	
            *) ;;
        esac
        done < /tmp/results
}
function dreamcast() {
        local choice
      whiptail --clear --title "PICK & CHOOSE DREAMCAST" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Capcom VS SNK          " off \
                "2" "Capcom VS SNK 2        " off \
                "3" "Confindentl Mission    " off \
                "4" "Crazy Taxi             " off \
                "5" "Crazy Taxi 2           " off \
                "6" "Dead Or Alive 2        " off \
                "7" "Jet Grind Radio        " off \
                "8" "Marvel VS Capcom 2       " off \
                "9" "Power Stone 2            " off \
                "10" "Psychic Force 2012       " off \
                "11" "Resident Evil Veronica CD1" off \
                "12" "Resident Evil Veronica CD2" off \
                "13" "Shenmue Disc 1            " off \
                "14" "Shenmue Disc 2            " off \
                "15" "Shenmue Disc 3            " off \
                "16" "Sonic Adventure      " off \
                "17" "Sonic Adventures 2   " off \
	        "18" "Soul Calibur         " off \
                "19" "gamelist.xml          " off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "dreamcast" "CapcomvsSNK.cdi" ;;
            2) download-game "dreamcast" "Capcom vs. SNK 2 - Millionaire Fighting 2001 (Japan).cdi" ;;
            3) download-game "dreamcast" "Confidential Mission (USA).chd" ;;
            4) download-game "dreamcast" "Crazy Taxi (USA).chd" ;;
            5) download-game "dreamcast" "Crazy Taxi 2 (USA).cdi" ;;
            6) download-game "dreamcast" "Dead or Alive 2 (USA).cdi" ;;
            7) download-game "dreamcast" "Jet Grind Radio (USA).cdi" ;;
            8) download-game "dreamcast" "Marvel vs. Capcom 2 (USA).cdi" ;;
            9) download-game "dreamcast" "Power Stone 2 (USA).cdi" ;;
            10) download-game "dreamcast" "Psychic Force 2012 (USA).cdi" ;;
            11) download-game "dreamcast" "Resident Evil Code - Veronica (Disc 1) (USA).cdi" ;;
            12) download-game "dreamcast" "Resident Evil Code - Veronica (Disc 2) (USA).cdi" ;;
            13) download-game "dreamcast" "Shenmue (USA) (Disc 1).cdi" ;;
            14) download-game "dreamcast" "Shenmue (USA) (Disc 2).cdi" ;;
            15) download-game "dreamcast" "Shenmue (USA) (Disc 3).cdi" ;;
            16) download-game "dreamcast" "Sonic Adventure (USA).cdi" ;;
            17) download-game "dreamcast" "Sonic Adventure 2 (USA).cdi" ;;
            18) download-game "dreamcast" "Soul Calibur (USA).cdi" ;;
            19) download-game "dreamcast" "gamelist.xml" ;;
            *)  ;;
        esac
        done < /tmp/results
}
function gba() {
          whiptail --clear --title "PICK & CHOOSE GBA" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Astro Boy - Omega Factor" off \
                "2" "Bomberman Tournament" off \
                "3" "Broken Sword: Shadow Of the Templars" off \
                "4" "Boktai - The Sun Is in Your Hand" off \
                "5" "Castlevania - Aria of Sorrow" off \
                "6" "Castlevania - Harmony of Dissonance" off \
                "7" "Drill Dozer" off \
                "8" "Dragon Ball Z - The Legacy of Goku" off \
                "9" "Fire Emblem - The Sacred Stones" off \
                "10" "Fire Emblem" off \
                "11" "F-Zero - Maximum Velocity" off \
                "12" "F-Zero - GP Legend" off \
                "13" "Golden Sun" off \
                "14" "Gradius Galaxies" off \
                "15" "Harvest Moon - More Friends of Mineral Town" off \
                "16" "Harvest Moon - Friends of Mineral Town" off \
                "17" "Iridion 3D" off \
                "18" "Iridion II" off \
                "19"  "Kirby - Nightmare in Dream Land" off \
                "20" "Kirby & the Amazing Mirror" off \
                "21" "Legend of Zelda, The - The Minish Cap" off \
                "22" "Legend of Zelda, The - A Link to the Past & Four Swords" off \
                "23" "Legend of Spyro, The - The Eternal Night" off \
                "24" "Lunar Legend" off \
                "25" "Mario & Luigi - Superstar Saga" off \
                "26" "Mario Kart - Super Circuit" off \
                "27" "Mario Party Advance" off \
                "28" "Mario vs. Donkey Kong" off \
                "29" "Mega Man Zero" off \
                "30" "Metroid - Zero Mission" off \
                "31" "Metal Slug Advance" off \
                "32" "Ninja Five-0" off \
                "33" "Nicktoons - Battle for Volcano Island" off \
                "34" "Pac-Man Collection" off \
                "35" "Pokemon - Leaf Green Version" off \
                "36" "Pokemon - Emerald Version" off \
                "37" "Puyo Pop" off \
                "38" "R-Type III - The Third Lighting" off \
                "39" "Rayman - Hoodlum's Revenge" off \
                "40" "Rayman Advance" off \
                "41" "SD Gundum Force" off \
                "42" "Sega Rally Championship" off \
                "43" "Sonic Advance" off \
                "44" "Sonic Advance 2" off \
                "45" "Spider-Man - Mysterio's Menace" off \
                "46" "Spyro - Attack of the Rhynocs" off \
                "47" "Super Mario Advance" off \
                "48" "Teenage Mutant Ninja Turtles" off \
                "49" "Tony Hawk's Pro Skater 4" off \
                "50" "Ultimate Card Games" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "gba" "Astro Boy - Omega Factor (USA) (En,Ja,Fr,De,Es,It).zip" ;;
            2) download-game "gba" "Bomberman Tournament(USA, Europe).zip" ;;
            3) download-game "gba" "Broken Sword - The Shadow of the Templars (USA) (En,Fr,De,Es,It).zip" ;;
            4) download-game "gba" "Boktai - The Sun Is in Your Hand (USA).zip" ;;
            5) download-game "gba" "Castlevania - Aria of Sorrow (USA).zip " ;;
            6) download-game "gba" "Castlevania - Harmony of Dissonance (USA).zip " ;;
            7) download-game "gba" "Drill Dozer (USA).zip" ;;
            8) download-game "gba" "Dragon Ball Z - The Legacy of Goku (USA).zip" ;;
            9) download-game "gba" "Fire Emblem - The Sacred Stones (USA, Australia).zip" ;;
            10) download-game "gba" "Fire Emblem (USA, Australia).zip" ;;
            11) download-game "gba" "F-Zero - Maximum Velocity (USA, Europe).zip" ;;
            12) download-game "gba" "F-Zero - GP Legend (USA).zip" ;;
            13) download-game "gba" "Golden Sun (USA, Europe).zip" ;;
            14) download-game "gba" "Gradius Galaxies (USA).zip" ;;
            15) download-game "gba" "Harvest Moon - More Friends of Mineral Town (USA).zip" ;;
            16) download-game "gba" "Harvest Moon - Friends of Mineral Town (USA).zip" ;;
            17) download-game "gba" "Iridion 3D (USA, Europe).zip" ;;
            18) download-game "gba" "Iridion II (USA).zip" ;;
            19) download-game "gba" "Kirby - Nightmare in Dream Land (USA).zip.zip" ;;
            20) download-game "gba" "Kirby & the Amazing Mirror (USA).zip" ;;
            21) download-game "gba" "Legend of Zelda, The - The Minish Cap (USA).zip" ;;
            22) download-game "gba" "Legend of Zelda, The - A Link to the Past & Four Swords (USA, Australia).zip" ;;
            23) download-game "gba" "Legend of Spyro, The - The Eternal Night (USA) (En,Fr).zip" ;;
            24) download-game "gba" "Lunar Legend (USA).zip" ;;
            25) download-game "gba" "Mario & Luigi - Superstar Saga (USA, Australia).zip" ;;
            26) download-game "gba" "Mario Kart - Super Circuit (USA).zip" ;;
            27) download-game "gba" "Mario Party Advance (USA).zip" ;;
            28) download-game "gba" "Mario vs. Donkey Kong (USA, Australia).zip" ;;
            29) download-game "gba" "Mega Man Zero (USA, Europe).zip" ;;
            30) download-game "gba" "Metroid - Zero Mission (USA).zip" ;;
            31) download-game "gba" "Metal Slug Advance (USA).zip" ;;
            32) download-game "gba" "Ninja Five-0 (USA).zip " ;;
            33) download-game "gba" "Nicktoons - Battle for Volcano Island (USA).zip" ;;
            34) download-game "gba" "Pac-Man Collection (USA).zip" ;;
            35) download-game "gba" "Pokemon - Leaf Green Version (USA).zip" ;;
            36) download-game "gba" "Pokemon - Emerald Version (USA, Europe).zip" ;;
            37) download-game "gba" "Puyo Pop (USA) (En,Ja).zip" ;;
            38) download-game "gba" "R-Type III - The Third Lightning (USA).zip" ;;
            39) download-game "gba" "Rayman - Hoodlum's Revenge (USA) (En,Fr,Es).zip" ;;
            40) download-game "gba" "Rayman Advance (USA) (En,Fr,De,Es,It).zip" ;;
            41) download-game "gba" "SD Gundam Force (USA).zip" ;;
            42) download-game "gba" "Sega Rally Championship (USA).zip" ;;
            43) download-game "gba" "Sonic Advance (USA) (En,Ja).zip" ;;
            44) download-game "gba" "Sonic Advance 2 (USA) (En,Ja,Fr,De,Es,It).zip" ;;
            45) download-game "gba" "Spider-Man - Mysterio's Menace (USA, Europe).zip" ;;
            46) download-game "gba" "Spyro - Attack of the Rhynocs (USA).zip" ;;
            47) download-game "gba" "Super Mario Advance (USA, Europe).zip" ;;
            48) download-game "gba" "Teenage Mutant Ninja Turtles (USA).zip" ;;
            49) download-game "gba" "Tony Hawk's Pro Skater 4 (USA, Europe).zip" ;;
            50) download-game "gba" "Ultimate Card Games (USA, Europe).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function megadrive() {
          whiptail --clear --title "PICK & CHOOSE MEGADRIVE" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Altered Beast" off \
                "2" "Castlevania - The New Generation" off \
                "3" "Comix Zone" off \
                "4" "Disneys Aladdin" off \
                "5" "Dr. Robotnik's Mean Bean Machine" off \
                "6" "Earthworm Jim" off \
                "7" "Earthworm Jim 2" off \
                "8" "Ecco the Dolphin" off \
                "9" "Fantasia" off \
                "10" "Ghouls'n Ghosts" off \
                "11" "Golden Axe" off \
                "12" "Golden Axe II" off \
                "13" "Gunstar Heroes" off \
                "14" "Immortal, The" off \
                "15" "James Bond 007 - The Duel" off \
                "16" "Justice League Task Force" off \
                "17" "Krusty's Super Fun House" off \
                "18" "Madden NFL 96" off \
                "19" "Madden NFL 95" off \
                "20" "Micro Machines 2 - Turbo Tournament" off \
                "21" "Mortal Kombat" off \
                "22" "Mortal Kombat II" off \
                "23" "Mutant League Football" off \
                "24" "Ms. Pac-Man" off \
                "25" "NBA Jam" off \
                "26" "Oh Mummy Genesis" off \
                "27" "OutRun 2019" off \
                "28" "Pac-Panic" off \
                "29" "Pac-Mania" off \
                "30" "Phantasy Star II" off \
                "31" "Phantasy Star IV" off \
                "32" "Revolution X" off \
                "33" "RoboCop VS The Terminator" off \
                "34" "Shining Force" off \
                "35" "Shining Force II" off \
                "36" "Shinobi III - Return of the Ninja Master" off \
                "37" "Sonic & Knuckles" off \
                "38" "Strider II" off \
                "39" "Street Fighter II' - Champion Edition " off \
                "40" "Vectorman" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "megadrive" "Altered Beast (USA, Europe).zip" ;;
            2) download-game "megadrive" "Castlevania - The New Generation (Europe).zip" ;;
            3) download-game "megadrive" "Comix Zone (Europe) (En,Fr,De,Es).zip" ;;
            4) download-game "megadrive" "Aladdin (Europe).zip" ;;
            5) download-game "megadrive" "Dr. Robotnik's Mean Bean Machine (Europe).zip" ;;
            6) download-game "megadrive" "Earthworm Jim (Europe).zip" ;;
            7) download-game "megadrive" "Earthworm Jim 2 (Europe).zip" ;;
            8) download-game "megadrive" "Ecco the Dolphin (USA, Europe).zip" ;;
            9) download-game "megadrive" "Fantasia (World).zip" ;;
            10) download-game "megadrive" "Ghouls'n Ghosts (USA, Europe).zip" ;;
            11) download-game "megadrive" "Golden Axe (World).zip" ;;
            12) download-game "megadrive" "Golden Axe II (World).zip" ;;
            13) download-game "megadrive" "Gunstar Heroes (Europe).zip" ;;
            14) download-game "megadrive" "Immortal, The (USA, Europe).zip" ;;
            15) download-game "megadrive" "James Bond 007 - The Duel (Europe) (Rev A).zip" ;;
            16) download-game "megadrive" "Justice League Task Force (World).zip" ;;
            17) download-game "megadrive" "Krusty's Super Fun House (USA, Europe).zip" ;;
            18) download-game "megadrive" "Madden NFL 96 (USA, Europe).zip" ;;
            19) download-game "megadrive" "Madden NFL 95 (USA, Europe).zip" ;;
            20) download-game "megadrive" "Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).zip" ;;
            21) download-game "megadrive" "Mortal Kombat (World) (v1.1).zip" ;;
            22) download-game "megadrive" "Mortal Kombat II (World).zip" ;;
            23) download-game "megadrive" "Mutant League Football (USA, Europe).zip" ;;
            24) download-game "megadrive" "Ms. Pac-Man (USA, Europe).zip " ;;
            25) download-game "megadrive" "NBA Jam (USA, Europe).zip" ;;
            26) download-game "megadrive" "Oh Mummy Genesis (World) (Unl).zip" ;;
            27) download-game "megadrive" "OutRun 2019 (Europe).zip" ;;
            28) download-game "megadrive" "Pac-Panic (Europe).zip" ;;
            29) download-game "megadrive" "Pac-Mania (USA, Europe).zip" ;;
            30) download-game "megadrive" "Phantasy Star II (USA, Europe) (Rev A).zip" ;;
            31) download-game "megadrive" "Phantasy Star IV (Europe).zip" ;;
            32) download-game "megadrive" "Revolution X (USA, Europe).zip" ;;
            33) download-game "megadrive" "RoboCop versus The Terminator (Europe).zip" ;;
            34) download-game "megadrive" "Shining Force (Europe).zip" ;;
            35) download-game "megadrive" "Shining Force II (Europe).zip" ;;
            36) download-game "megadrive" "Shinobi III - Return of the Ninja Master (Europe).zip" ;;
            37) download-game "megadrive" "Sonic & Knuckles (World).zip" ;;
            38) download-game "megadrive" "Strider II (Europe).zip" ;;
            39) download-game "megadrive" "Street Fighter II' - Special Champion Edition (Europe).zip" ;;
            40) download-game "megadrive" "Vectorman (USA, Europe).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function nes() {
        local choice
    whiptail --clear --title "PICK & CHOOSE NES" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "10-Yard Fight" off \
                "2" "3-D WorldRunner" off \
                "3" "Advanced D&D - DragonStrike" off \
                "4" "Advanced D&D - Heroes of the Lance" off \
                "5" "Adventure Island 3" off \
                "6" "Airwolf" off \
                "7" "Aladdin" off \
                "8" "Arkanoid" off \
                "9" "Asterix" off \
                "10" "Bad News Baseball" off \
                "11" "Batman - Return of the Joker" off \
                "12" "Battletoads" off \
                "13" "Battletoads-Double Dragon" off \
                "14" "Blues Brothers, The " off \
                "15" "Bomberman" off \
                "16" "Bubble Bobble" off \
                "17" "BurgerTime" off \
                "18" "Captain Comic - The Adventure" off \
                "19" "Castlevania" off \
                "20" "Castlevania III - Dracula's Curse" off \
                "21" "Cliffhanger" off \
                "22" "Dig Dug II - Trouble in Paradise" off \
                "23" "Donkey Kong" off \
                "24" "Double Dragon" off \
                "25" "Double Dragon III - The Sacred Stones" off \
                "26" "Dr. Mario" off \
                "27" "Duck Hunt" off \
                "28" "Excitebike" off \
                "29" "Fire 'n Ice" off \
                "30" "G.I. Joe - A Real American Hero" off \
                "31" "Galaga - Demons of Death" off \
                "32" "Gradius" off \
                "33" "Ikari Warriors II - Victory Road" off \
                "34" "Jurassic Park" off \
                "35" "Karate Kid, The" off \
                "36" "Kid Icarus" off \
                "37" "Kirby's Adventure" off \
                "38" "Legend of Zelda, The" off \
                "39" "Mario Bros." off \
                "40" "Mega Man 6" off \
                "41" "Metroid" off \
                "42" "Mike Tyson's Punch-Out!!" off \
                "43" "Ninja Gaiden" off \
                "44" "Pac-Man" off \
                "45" "Platoon" off \
                "46" "Q-bert" off \
                "47" "Rad Racer" off \
                "48" "RoboCop" off \
                "49" "Super Mario Bros." off \
                "50" "Super Mario Bros. 2" off \
                "51" "Super Mario Bros. 3" off \
                "52" "Super Spy Hunter" off \
                "53" "Teenage Mutant Ninja Turtles" off \
                "54" "Tetris" off \
                "55" "Zelda II - The Adventure of Link" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "nes" "10-Yard Fight (USA, Europe).zip" ;;
            2) download-game "nes" "3-D WorldRunner (USA).zip" ;;
            3) download-game "nes" "Advanced Dungeons & Dragons - DragonStrike (USA).zip" ;;
            4) download-game "nes" "Advanced Dungeons & Dragons - Heroes of the Lance (USA).zip" ;;
            5) download-game "nes" "Adventure Island 3 (USA).zip" ;;
            6) download-game "nes" "Airwolf (USA).zip" ;;
            7) download-game "nes" "Aladdin (Europe).zip" ;;
            8) download-game "nes" "Arkanoid (USA).zip" ;;
            9) download-game "nes" "Asterix (Europe).zip" ;;
            10) download-game "nes" "Bad News Baseball (USA).zip" ;;
            11) download-game "nes" "Batman - Return of the Joker (USA).zip" ;;
            12) download-game "nes" "Battletoads (USA).zip" ;;
            13) download-game "nes" "Battletoads-Double Dragon (USA).zip" ;;
            14) download-game "nes" "Blues Brothers, The (USA).zip" ;;
            15) download-game "nes" "Bubble Bobble (USA).zip" ;;
            16) download-game "nes" "BurgerTime (USA).zip" ;;
            17) download-game "nes" "Captain Comic - The Adventure (USA) (Unl).zip" ;;
            18) download-game "nes" "Castlevania (USA).zip" ;;
            19) download-game "nes" "Castlevania III - Dracula's Curse (USA).zip" ;;
            20) download-game "nes" "Cliffhanger (USA).zip" ;;
            21) download-game "nes" "Dig Dug II - Trouble in Paradise (USA).zip" ;;
            22) download-game "nes" "Donkey Kong (World) (Rev A).zip" ;;
            23) download-game "nes" "Double Dragon (USA).zip" ;;
            24) download-game "nes" "Double Dragon III - The Sacred Stones (USA).zip" ;;
            25) download-game "nes" "Dr. Mario (Japan, USA).zip" ;;
            26) download-game "nes" "Duck Hunt (World).zip" ;;
            27) download-game "nes" "Excitebike (Japan, USA).zip" ;;
            28) download-game "nes" "Fire 'n Ice (USA).zip" ;;
            29) download-game "nes" "G.I. Joe - A Real American Hero (USA).zip" ;;
            30) download-game "nes" "Galaga - Demons of Death (USA).zip" ;;
            31) download-game "nes" "Gradius (USA).zip" ;;
            32) download-game "nes" "Ice Climber (USA, Europe).zip" ;;
            33) download-game "nes" "Ikari Warriors II - Victory Road (USA).zip" ;;
            34) download-game "nes" "Jurassic Park (USA).zip" ;;
            35) download-game "nes" "Karate Kid, The (USA).zip" ;;
            36) download-game "nes" "Kid Icarus (USA, Europe).zip" ;;
            37) download-game "nes" "Kirby's Adventure (USA).zip" ;;
            38) download-game "nes" "Legend of Zelda, The (USA).zip" ;;
            39) download-game "nes" "Mario Bros. (World).zip" ;;
            40) download-game "nes" "Mega Man 6 (USA).zip" ;;
            41) download-game "nes" "Metroid (USA).zip" ;;
            42) download-game "nes" "Mike Tyson's Punch-Out!! (Japan, USA).zip" ;;
            43) download-game "nes" "Ninja Gaiden (USA).zip" ;;
            44) download-game "nes" "Pac-Man (USA).zip" ;;
            45) download-game "nes" "Platoon (USA).zip" ;;
            46) download-game "nes" "Q-bert (USA).zip" ;;
            47) download-game "nes" "Rad Racer (USA).zip" ;;
            48) download-game "nes" "RoboCop (USA).zip" ;;
            49) download-game "nes" "Super Mario Bros. (World).zip" ;;
            50) download-game "nes" "Super Mario Bros. 2 (USA) (Rev A).zip" ;;
            51) download-game "nes" "Super Mario Bros. 3 (USA).zip" ;;
            52) download-game "nes" "Super Spy Hunter (USA).zip" ;;
            53) download-game "nes" "Teenage Mutant Ninja Turtles (USA).zip" ;;
            54) download-game "nes" "Tetris (USA).zip" ;;
            55) download-game "nes" "Zelda II - The Adventure of Link (USA).zip" ;;
             *) ;;
        esac
        done < /tmp/results
}

function saturn() {
          whiptail --clear --title "PICK & CHOOSE SATURN" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
	        --ok-button Download --cancel-button Back \
                "1" "Albert Odyssey - Legend of Eldean" off \
                "2" "Area 51" off \
                "3" "Burning Rangers" off \
                "4" "Daytona USA" off \
                "5" "Dead or Alive (Japan)" off \
                "6" "Die Hard Arcade" off \
                "7" "DonPachi (Japan)" off \
                "8" "Dragon Ball Z" off \
                "9" "Duke Nukem 3D" off \
                "10" "Dragon Force" off \
                "11" "Earthworm Jim 2" off \
                "12" "Fighters Megamix" off \
                "13" "Galactic Attack" off \
                "14" "Guardian Heroes" off \
                "15" "Hi-Octane - The Track Fights Back!" off \
                "16" "House of the Dead" off \
                "17" "Impact Racing" off \
                "18" "King of Fighters '95" off \
                "19" "Lost World, The - Jurassic Park" off \
                "20" "Manx TT SuperBike" off \
                "21" "Marvel Super Heroes" off \
                "22" "Mortal Kombat II" off \
                "23" "Megaman X4" off \
                "24" "Nights Into Dreams..." off \
                "25" "Panzer Dragoon" off \
                "26" "Panzer Dragoon II - Zwei" off \
                "27" "Rayman" off \
                "28" "Resident Evil" off \
                "29" "Robotica" off \
                "30" "Sega Rally Championship" off \
                "31" "Saturn Bomber Man" off \
                "32" "Sonic 3D Blast" off \
                "33" "Street Fighter Alpha - Warrior's Dreams" off \
                "34" "Street Fighter Alpha 2" off \
                "35" "Thunder Force V" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "saturn" "Albert Odyssey - Legend of Eldean (USA).chd" ;;
            2) download-game "saturn" "Area 51 (USA).zip" ;;
            3) download-game "saturn" "Burning Rangers (USA).zip" ;;
            4) download-game "saturn" "Daytona USA (USA).zip" ;;
            5) download-game "saturn" "Dead or Alive (Japan).zip" ;;
            6) download-game "saturn" "Die Hard Arcade (USA).zip.zip" ;;
            7) download-game "saturn" "DonPachi (Japan).zip" ;;
            8) download-game "saturn" "Dragon Ball Z - The Legend (Europe).zip" ;;
            9) download-game "saturn" "Duke Nukem 3D (Europe).zip" ;;
            10) download-game "saturn" "Dragon Force (USA).zip" ;;      
            11) download-game "saturn" "Earthworm Jim 2 (USA).zip" ;;
            12) download-game "saturn" "Fighters Megamix (USA).zip" ;;
            13) download-game "saturn" "Galactic Attack (USA).chd" ;;
            14) download-game "saturn" "Guardian Heroes (USA).chd" ;;
            15) download-game "saturn" "Hi-Octane - The Track Fights Back! (USA).zip" ;;
            16) download-game "saturn" "House of the Dead, The (USA).zip" ;;
            17) download-game "saturn" "Impact Racing (USA).zip" ;;
            18) download-game "saturn" "King of Fighters '95, The (Europe).zip" ;;
            19) download-game "saturn" "Lost World, The - Jurassic Park (USA).zip" ;;
            20) download-game "saturn" "Manx TT SuperBike (USA).chd" ;;
            21) download-game "saturn" "Marvel Super Heroes (USA).zip" ;;
            22) download-game "saturn" "Mortal Kombat II (USA).zip" ;;
            23) download-game "saturn" "Megaman X4 (USA).zip" ;;
            24) download-game "saturn" "Nights Into Dreams... (USA).zip" ;;
            25) download-game "saturn" "Panzer Dragoon (USA).chd" ;;
            26) download-game "saturn" "Panzer Dragoon II - Zwei (USA).zip" ;;
            27) download-game "saturn" "Rayman (USA).zip" ;;
            28) download-game "saturn" "Resident Evil (USA).zip" ;;
            29) download-game "saturn" "Robotica (USA).zip" ;;
            30) download-game "saturn" "Sega Rally Championship (USA).zip" ;;
            31) download-game "saturn" "Saturn Bomber Man (Europe).chd" ;;
            32) download-game "saturn" "Sonic 3D Blast (USA).zip" ;;
            33) download-game "saturn" "Street Fighter Alpha - Warrior's Dreams (USA).zip" ;;
            34) download-game "saturn" "Street Fighter Alpha 2 (USA).chd" ;;
            35) download-game "saturn" "Thunder Force V (Japan).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}

#----------------------------------#
#   TOOL BOX GAME FIXES FUNCTIONS  #
#----------------------------------#
function game_fixes() {
  while true; do 
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " TOOL BOX MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT GAME FIX AND PRESS A  " 20 50 30 \
      1 "Age Of Empires No-CD Error Fix" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) aoe_game_fix ;;
    *) break ;;
    esac
  done
}
function aoe_game_fix() {
cd ~/
wget https://github.com/ALLRiPPED/Devils-Wine-Updates/raw/main/reg-patches/Age-of-Empires-no-cd-error-fix.reg
wine reg import Age-of-Empires-no-cd-error-fix.reg
sleep 1
rm -f Age-of-Empires-no-cd-error-fix.reg
}

###------------------------------###
###    TOOL BOX MENU FUNCTIONS   ###
###------------------------------###
function tool_box() {
  while true; do 
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " TOOL BOX MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT TOOLSET AND PRESS A  " 20 50 30 \
      1 "Audio & Visual Tools   " \
      2 "Emulator Tools    " \
      3 "Hardware Tools       " \
      4 "Devils Box Tools  " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) audio ;;
    2) emu_tools ;;
    3) hardware_tools ;;
    4) db_tools ;;
    *) break ;;
    esac
  done
}
#-----------------------------------------#
#   AUDIO & VISUAL TOOLS MENU FUNCTIONS   #
#-----------------------------------------#
function audio() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " AUDIO & VISUAL TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 70 50 \
      + "_____________________Visual Tools__________________________ " \
      1 "Emulation Station Themes---------------------------Retropie " \
      2 "Hursty's Themes--------------------------------------Hursty " \
      - "___________________Audio/Mixed Tools_______________________ " \
      3 "Apply No Audio Fix--------------------------------Anonymous " \
      4 "Install T.A.M.P.O--------------------------------thepitster " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) hursty-themes ;;
    2) es-themes ;;
    -) none ;;
    3) no-audio ;;
    4) tampo ;;
    *) break ;;
    esac
  done
}
function tampo() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
curl -sSL https://git.io/JDfjg | bash
fi
}
function es-themes () {
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch /home/pi/RetroPie/retropiemenu/esthemes.rp
}
function hursty-themes () {
wget https://raw.githubusercontent.com/RetroHursty69/HurstyThemes/master/install.sh
chmod +x "install.sh"
./install.sh
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

###-----------------------------------###
###  EMU TOOLS MENU FUNCTIONS   ###
###-----------------------------------###
function emu_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "EMULATOR TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 70 50 \
      1 "Devils Extras Installer-----------Retro Devils" \
      2 "RetroPie Setup Menu------------------Retro Pie" \
      3 "Mugen Installer-----------Supreme/Retro Devils" \
      4 "PIKISS Installer-----------------Jose Cerrejon" \
      5 "SEGA MODEL 3 Installer------------Retro Devils" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils-ex ;;
    2) rpi-menu ;;
    3) mugen ;;
    4) pikiss ;;
    5) sm3 ;;
    *) break ;;
    esac
  done
}
function devils-ex() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
curl -sSL https://git.io/J9Z8c | bash
fi
}
#----------------------------------#
#       SM3 EMU FUNCTIONS        #
#----------------------------------#
function sm3() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
curl -sSL https://git.io/JSDOy | bash
fi
}

#----------------------------------#
#   RETROPIE SETUP MENU FUNCTION   #
#----------------------------------#
function rpi-menu() {
  sudo "$HOME"/RetroPie-Setup/retropie_setup.sh
}
function pikiss() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  if [ -d "$HOME/piKiss/" ]; then sudo home/pi/piKiss/piKiss.sh;
  else curl -sSL https://git.io/JfAPE | bash 
  fi
fi
}
function mugen() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "Mugen Installer FYI" --msgbox " 
-------------------------------
  INSTALLER WARNING & FYI
-------------------------------
-This will also overwrite your es_systems.cfg 
-Devils Box will backup your es_systems.cfg
-For this to work you might have to run
sudo -y update && sudo -y upgrade" 0 0
mv /home/pi/.emulationstation/es_systems.cfg -f /home/pi/.emulationstation/backups/es_systems.b4.wine
curl -sSL https://git.io/Jz9O3 | bash
dialog  --sleep 1 --title "EXIT MESSAGE" --msgbox " 
------------------------------POSSIBLE ERRORS & SOLUTIONS-----------------------------
-Only WINE shows in ES nothing else
     -Devils Box backed up your ..../es_systems.cfg to ..../backups/es_systems.b4.wine
     -Copy wine section from new cfg to your old cfg,  delete new cfg, rename old one. 
-Mugen doesnt launch  
     -FRIST TRY TO LAUNCH AGAIN. Wine sometimes doesnt launch correctly.
     -Wait. Big Mugens/Games can take some time.
     -Run sudo -y update && sudo -y upgrade
     -Reinstall. Something might have been missed " 0 0
fi
}

###---------------------------------###
###   HARDWARE TOOLS MENU FUNCTIONS ###
###---------------------------------###
function hardware_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " HARDWARE TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL PRESS TO APPLY/INSTALL" 20 50 30 \
      1 "Cases Tools Menu        " \
      2 "Clear Controller Config " \
      3 "Setup Extended HDD      " \
      4 "Remove Extended HDD     " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) cases ;;
    2) clear_controller ;;
    3) hdd-in ;;
    4) hdd-out ;; 
    *) break ;;
    esac
  done
}

#---------------------------------#
#   CLEAR CONTROLLER FUNCTION     #
#---------------------------------#
function clear_controller() {
clear
dialog  --sleep 1 --title "Clear Controller Config" --msgbox " 
---------------------ATTENTION------------------
----------YOUR CONTROLLER WILL BE CLEARED-------" 0 0
sudo rm "$HOME"/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
}

function hdd-in() { 
clear
mkdir /home/pi/addonusb > /dev/null 2>&1
mkdir /home/pi/.work > /dev/null 2>&1
testdrive=`df |grep media |awk '{print $1 }'|wc -l`
if [ $testdrive -eq 0 ] ; then
echo "No External drive detected. Exiting."
sleep 5
exit
else
echo "External Drive detected. Performing checks for NTFS filesystem and piroms directory."
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
echo "This external drive is not correctly formatted. It must be formatted using the NTFS filesystem. Please reformat it to NTFS."
echo "Fat vfat exfat filesystems are not supported in linux"
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
###---------------------------------###
###    CASES TOOLS MENU FUNCTIONS   ###
###---------------------------------###
function cases() {
if [ $NETCHECK  = 1 ]; then
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
  wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/uninstall_all.sh" | sudo bash
}
function retroflag() {
dialog  --sleep 1 --title "RetroFlag GPI Install" --msgbox " 
-This will install scripts for RetroFlag Cases.
-After complete system will reboot." 0 0
wget -O - "https://raw.githubusercontent.com/ALLRiPPED/retroflag-picase/master/install_gpi.sh" | sudo bash
}
###---------------------------------###
###   DEVILS BOX TOOLS FUNCTION     ###
###---------------------------------###
function db_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AND APPLY TOOL" 20 50 30 \
      1 "About Devils Box    " \
      2 "Help With Devils Box" \
      3 "Remove Devils Box   " \
      4 "Update Devils Box   " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) about_db  ;;
    2) help_db   ;;
    3) remove_db ;;
    4) update_db ;;
    *) break ;;
    esac
  done
}
#--------------------------_#
#ABOUT DEVILS BOX #
#---------------------------#
function help_db() {
  clear
  cat "$HOME"/Devils-Box/files/HELP-DB.txt
  sleep 20
}
#--------------------------_#
#HELP WITH DEVILS BOX #
#---------------------------#
function about_db() {
  clear
  cat "$HOME"/Devils-Box/files/INFO.txt
  sleep 20
}
#---------------------------#
#REMOVE DEVILS BOX          #
#---------------------------#
function remove_db() {
clear
  echo "Removing Now";
  sudo rm "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  sudo rm -R "$HOME"/Devils-Box
  sudo reboot
}

#------------------#
#UPDATE DEVILS BOX #
#------------------#
function update_db() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "Wine Downloader Help" --msgbox " 
OFFLINE!!!
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  echo "Online ... Updating"
  sleep 1
  sudo rm "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  cd "$HOME"/Devils-Box || exit
  git pull -f
  cp "$HOME"/Devils-Box/Devils-Box.sh -f "$HOME"/RetroPie/retropiemenu/
  sudo cp "$HOME"/Devils-Box/files/box -f /usr/local/bin/
  sudo cp "$HOME"/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
  sudo chmod 755 /usr/local/bin/box
  sudo chmod 755 /usr/local/bin/Devils-Box
  chmod 755 "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  sleep 1
  if [ -d "$HOME/RetroPie/retropiemenu/Devils-Box/" ]; then sudo rm -fR "$HOME"/RetroPie/retropiemenu/Devils-Box/; fi
  bash "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  exit 1
fi
}
###---------------------------------###
###   MISC DEVILS BOX FUNCTIONS     ###
###---------------------------------###

#----------------------------#
# SHOW DISK SPACE FUNCTION   #
#----------------------------#
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

#-------------------#
# REBOOT FUNCTION   #
#-------------------#
function system_reboot() {
clear
dialog --sleep 1 --title "System Rebooting" --msgbox " 
--------------------ATTENTION-------------------------
-------------YOUR SYSTEM WILL NOW REBOOT--------------" 0 0
sudo reboot
}

#------------------#
# ARTWORK FUNCTION #
#------------------# 
function download-art() {
cd "$HOME/RetroPie/roms/"${1}"/"
git init
git remote add origin "${ART_HOST2}/${1}.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
}

#------------------#
# CONSOLE FUNCTION #
#------------------#
function download-packs() {
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
}
function download-packs-alt() {
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
}

#-----------------#
#  GAME FUNCTION  #
#-----------------#
function download-game() {
  for type in "$@"; do
    if [ "${type}" != "${1}" ]; then
      clear
      wget -m -r -np -nH -nd -R "index.html" ${PC_HOST}/"${1}"/"${type}" -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
      rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
done
}

main_menu
