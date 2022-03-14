#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="My name is... Shake-Zula. The mic-rula, The old schoolah, Ya wanna trip? I'll bring it to ya"	
#-----------COLORS----------#
rst="$(tput sgr0)"
fgred="${rst}$(tput setaf 1)"
bld="$(tput bold)"
bfgred="${bld}$(tput setaf 1)"
##-------------------------##
##       HOST SITES        ##
##-------------------------##

#--------ART HOSTS----------#
ART_HOST="https://archive.org/download/devils-box-media-alt"
ART_HOST2="https://github.com/Retro-Devils-Media"
#ART_HOST3=""
#ART_HOST4=""

#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine"
HOST5="https://archive.org/download/devils-dos"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"


###  INTRO VIDEO     ###
clear
omxplayer "$HOME"/Devils-Box/files/videos/intro.mp4  > /dev/null 2>&1
###   NET CHECKER    ###
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  NETCHECK=0
else
  NETCHECK=1
fi
#--REQUIRED FOR FUTURE UPDATES--#
if ! command -v pv &> /dev/null; then sudo apt -y install pv; fi

###-----------------------###
### MAIN MENU FUNCTIONS   ###
###-----------------------###

function main_menu() {
  local choice

  while true; do
  DB_STATUS=0
  if [ -f /usr/local/bin/box ] && [ -f /usr/local/bin/Devils-Box ]; then 
    DB_STATUS=1
  fi
    choice=(dialog --backtitle "$BACKTITLE" --title "MAIN MENU " \
      --ok-label Select --cancel-label Exit-Devils-Box \
      --menu "DEVILS BOX V3.06--------------UPDATED 3/2/22" 20 50 30 )
    if [ "$DB_STATUS" == 1 ]; then
      options=( \
      - "<---->Downloaders<---->"
      1 "Artwork Packs"
      2 "Console Packs"
      3 "Hacked Packs"
      4 "Pick & Choose"
      + "<------->Tools<------->"
      5 "Community Tool Box"      
      6 "Devils Tool Box"
      - "<--------------------->"
      7 "Reboot System"
      8 "Show System Info"
      9 "Expand System Memory")
    else
      options=( \
      1 "Install Devils-Box")
    fi
    choice=$("${choice[@]}" "${options[@]}" 2>&1 >/dev/tty)
    case $choice in
    1) if [ "$DB_STATUS" == 1 ]; then artwork; else curl -sSL https://git.io/JSDGq | bash; fi; ;;
    2) consoles ;;
    3) hacked ;;
    4) pick ;;
    5) community_tools ;;
    6) devils_tools ;;
    7) system_reboot ;;
    8) show_sysinfo ;;
    9) expand_mem ;;
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
dialog  --sleep 1 --title "ARTWORK PACKS INFO" --msgbox " 
<-------------WELCOME--------------->
WHATS THIS DO?
-DOWNLOADS ARTWORK PACKS
-TRYS TO SCRAPE AFTERWARDS 

F.A.Q
WHAT GAMES IS THIS ART FOR?
THE CONSOLES/GAMES IN DEVILS BOX 

WILL THIS WORK WITH MY GAMES?
UNLIKELY. PLEASE USE SCRAPPER" 0 0
  local choice

 while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " ARTWORK DOWNLOAD MENU " \
      --ok-label Download --cancel-label Main-Menu \
      --menu "[*] MEANS PACK INCLUDES..........[ ] MEANS PACK DOESNT INCLUDE  		
                  -PRESS A/ENTER TO DOWNLOAD.......***MEANS COMING SOON" 30 70 50 \
      - "<----------------Consoles-Regular-Artwork----------------->" \
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
      27 "Intellivision Artwork    [*]box  [ ]cart  [ ]snap  [*]wheel" \
      28 "***Lightgun Artwork***   [*]box  [*]cart  [*]snap  [ ]wheel" \
      29 "MarkIII Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      30 "Mastersystem Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      31 "Megadrive Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      32 "Megadrive-Japan Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      33 "MSX Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      34 "MSX2 Artwork             [*]box  [*]cart  [*]snap  [*]wheel" \
      35 "N64 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      36 "Naomi Artwork            [*]box  [ ]cart  [*]snap  [*]wheel" \
      37 "NDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      38 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      39 "NES Artwork              [*]box  [ ]cart  [*]snap  [*]wheel" \
      40 "NGPC Artwork             [*]box  [ ]cart  [*]snap  [ ]wheel" \
      41 "Openbor Artwork          [*]box  [ ]cart  [*]snap  [*]wheel" \
      42 "Oric Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      43 "Pokemini Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      44 "***PC Engine Artwork***  [*]box  [*]cart  [*]snap  [ ]wheel" \
      45 "PS1 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      46 "Saturn Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      47 "Saturn-Japan Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      48 "Scummvm Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      49 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      50 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      51 "Super Famicon Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      52 "SG-1000 Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      53 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      54 "SuperGrafx Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      55 "TurboGrafx 16 Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      56 "Vectrex Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      57 "Videopac Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      58 "Virtualboy Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      59 "VMU Artwork              [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      60 "Wine Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      61 "WonderswanColor Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      62 "Sharp x1 Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      63 "Sharp x68000 Artwork     [*]box  [ ]cart  [*]snap  [*]wheel" \
      64 "ZMachine Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      65 "ZXspectrum Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      +  "<---------------Consoles-Hacks-Artwork-------------------->" \
      66 "GBA Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      67 "GameBoy Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      69 "Genesis Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      69 "Gamegear Hacks Artwork   [*]box  [*]cart  [*]snap  [*]wheel" \
      70 "NES Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      71 "SNES Hacks Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
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
      27) download-art "intellivision" ;;
      28) download-art "lightgun" ;;
      29) download-art "markiii" ;;
      30) download-art "mastersystem" ;;
      31) download-art "megadrive" ;;
      32) download-art "megadrive-japan" ;;
      33) download-art "msx" ;;
      34) download-art "msx2" ;;
      35) download-art "n64" ;;
      36) download-art "naomi" ;;
      37) download-art "nds" ;;
      38) download-art "neogeo" ;;
      39) download-art "nes" ;;
      40) download-art "ngpc" ;;
      41) download-art "openbor" ;;
      42) download-art "oric" ;;
      43) download-art "pokemini" ;;
      44) download-art "pc-engine" ;;
      45) download-art "psx" ;;
      46) download-art "saturn" ;;
      47) download-art "saturn-japan" ;;
      48) download-art "scummvm" ;;
      49) download-art "sega32x" ;;
      50) download-art "segacd" ;;
      51) download-art "sfc" ;;
      52) download-art "sg-1000" ;;
      53) download-art "snes" ;;
      54) download-art "supergrafx" ;;
      55) download-art "tg16" ;;
      56) download-art "vectrex" ;;
      57) download-art "videopac" ;;
      58) download-art "virtualboy" ;;
      59) download-art "vmu"  ;;
      60) download-art "wine" ;;
      61) download-art "wonderswancolor" ;;
      62) download-art "x1" ;;
      63) download-art "x68000" ;;
      64) download-art "zmachine" ;;
      65) download-art "zxspectrum" ;;
      66) download-art "gbah" ;;
      67) download-art "gbh" ;;
      68) download-art "genh" ;;
      69) download-art "ggh" ;;
      70) download-art "nesh" ;;
      71) download-art "snesh" ;;
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
dialog  --sleep 1 --title "CONSOLE PACKS INFO" --msgbox " 
<-------------WELCOME--------------->

WHATS THIS DO?
-DOWNLOADS GAME PACKS TO CORRECT FOLDERS
-TRYS TO SCRAPE AFTERWARDS 

F.A.Q
WILL THIS OVERWRITE MY GAMES?
NOPE 
 
CAN I STOP MIDWAY THRU?
SURE PRESS CONTROL+C

WILL IT KEEP MY PROGRESS?
YES. GAMES WILL BE THIER 
BUT THEY WONT SCRAPE" 0 0
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER TO DOWNLOAD PACK..........****MEANS COMING SOON" 30 70 50 \
      + "<->CONSOLE NAME<---------------->SIZE<----># OF GAMES" \
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
      34 "Nintendo 64                      5.0GB      338 GAMES" \
      35 "Naomi                            1.5GB       15 GAMES" \
      36 "Nintendo DS                        4GB      171 GAMES" \
      37 "NeoGeo                           2.3GB      142 GAMES" \
      38 "Neo Geo Pocket Color              21MB       40 GAMES" \
      39 "Nintendo Entertainment System    100MB      869 GAMES" \
      40 "Openbor                         1.84GB       37 GAMES" \
      41 "Oric                             5.4MB      136 GAMES" \
      42 "Pokemini                         5.4MB       44 GAMES" \
      43 "PlayStation 1                      3GB       29 GAMES" \
      44 "PSP                              ???GB      600 GAMES" \
      45 "Sega Saturn                      108GB      303 GAMES" \
      46 "Sega Saturn Japan                3.9GB       18 GAMES" \
      47 "ScummVM                          2.5GB       21 GAMES" \
      48 "Sega32x                           63MB       37 GAMES" \
      49 "SegaCD                            11GB       52 GAMES" \
      50 "Super Famicon                    475MB      487 GAMES" \
      51 "SG-1000                            1MB       68 GAMES" \
      52 "SNES                             508MB      603 GAMES" \
      53 "SNES MSU1                         ??MB       ?? GAMES" \
      54 "SuperGraffiix                    2.4MB        5 GAMES" \
      55 "Turbo Graffix 16                  20MB       94 GAMES" \
      56 "Vectrex                          201KB       20 GAMES" \
      57 "VideoPAC                         430KB       99 GAMES" \
      58 "Virtual Boy                        8MB       24 GAMES" \
      59 "Dreamcast VMU                      3MB      115 GAMES" \
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
    6) download-packs "astrocade" ;;
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
    34) download-packs "n64" ;;
    35) download-packs "naomi" ;;
    36) download-packs "nds" ;;
    37) download-packs "neogeo" ;;
    38) download-packs "ngpc" ;;
    39) download-packs "nes" ;;
    40) download-packs "openbor" ;;
    41) download-packs "oric" ;;
    42) download-packs "pokemini" ;;
    43) download-packs "psx" ;;
    44) psp-pack ;;
    45) download-packs "saturn" ;;
    46) download-packs "saturn-japan" ;;
    47) download-packs "scummvm" ;;
    48) download-packs "sega32x" ;;
    49) download-packs "segacd" ;;
    50) download-packs "sfc" ;;
    51) download-packs "sg-1000" ;;
    52) download-packs "snes" ;;
    53) msu1-pack ;;
    54) download-packs "supergrafx" ;;
    55) download-packs "tg16" ;;
    56) download-packs "vectrex" ;;
    57) download-packs "videopac" ;;
    58) download-packs "virtualboy" ;;
    59) download-packs "svmu" ;;
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

###------------------------------###
### HACKED PACKS MENU FUNCTIONS  ###
###------------------------------###
function hacked() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "HACKS PACKS INFO" --msgbox " 
<-------------WELCOME--------------->

WHATS THIS DO?
-DOWNLOADS GAME PACKS TO CORRECT FOLDERS
-TRYS TO SCRAPE AFTERWARDS 

F.A.Q
WILL THIS OVERWRITE MY GAMES?
NOPE 
 
CAN I STOP MIDWAY THRU?
SURE PRESS CONTROL+C

WILL IT KEEP MY PROGRESS?
YES. GAMES WILL BE THIER 
BUT THEY WONT SCRAPE" 0 0
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED PACKS DOWNLOAD MENU " \
     --ok-button Download --cancel-button Main-Menu \
     --menu " PRESS A/ENTER TO DOWNLOAD PACK" 30 70 50 \
      + "<->CONSOLE NAME<--------------------->SIZE<---># OF GAMES " \
      1 "Gameboy Advance Hacks                  195MB     26 GAMES " \
      2 "Gameboy Hacks                            4MB     19 GAMES " \
      3 "Genesis Hacks                          197MB    191 GAMES " \
      4 "Gamegear Hacks                           1MB      4 GAMES " \
      5 "NES Hacks                              962KB      6 GAMES " \
      6 "SNES Hacks                              40MB     37 GAMES " \
      + "--------------------------------------------------------- " \
      7 "Apply/Update Hacks Configs                      6 Configs " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) download-hacks "gbah" ;;
    2) download-hacks "gbh" ;;
    3) download-hacks "genh" ;;
    4) download-hacks "ggh" ;;
    5) download-hacks "nesh" ;;
    6) download-hacks "snesh" ;;
    7) hacks-config ;;
    *) break ;;
    esac
  done
fi
}

function hacks-config() {
clear
sleep 2 
echo ${bld}$(tput setaf 1)"Copying Your/Default Configs"
sleep 2
cp -r /opt/retropie/configs/gba /opt/retropie/configs/gbah
cp -r /opt/retropie/configs/gb /opt/retropie/configs/gbh
cp -r /opt/retropie/configs/megadrive /opt/retropie/configs/genh
cp -r /opt/retropie/configs/gamegear /opt/retropie/configs/ggh
cp -r /opt/retropie/configs/nes /opt/retropie/configs/nesh
cp -r /opt/retropie/configs/snes /opt/retropie/configs/snesh
sleep 2
echo "Making Directories For Hacks"
sleep 2
mkdir "$HOME"/RetroPie/roms/gbah
mkdir "$HOME"/RetroPie/roms/gb
mkdir "$HOME"/RetroPie/roms/genh
mkdir "$HOME"/RetroPie/roms/ggh
mkdir "$HOME"/RetroPie/roms/nesh
mkdir "$HOME"/RetroPie/roms/snesh
}

###-------------------------------------###
###          PICK AND CHOOSE            ###
###-------------------------------------###

function pick() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
bash "$HOME"/Devils-Box/scripts/PickChoose.sh
fi
}
#----------------------------------#
#   TOOL BOX GAME FIXES FUNCTIONS  #
#----------------------------------#
function game_fixes() {
  local choice

  while true; do 
  choice=$(dialog --backtitle "$BACKTITLE" --title " GAME TOOLS/FIXES MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT TOOL OR FIX AND PRESS A  " 20 50 30 \
      + "--------WINE GAME FIXES-------" \
      1 "Age Of Empires No-CD Error Fix" \
      2 "C&C Generals + Zero Hour Fix" \
      3 "Heroes OF might And Magic Fix" \
      4 "Silent Hill 4 Fix" \
      5 "Unreal Anthology Fix" \
      + "----------GAME TOOLS----------" \
      6 "Qjoy Layout Downloader" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) game_fix "Age-of-Empires-no-cd-error-fix.reg" ;;
    2) game_fix "Command-And-Conquer-fix.reg" ;;
    3) game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
    4) game_fix "Silent-Hill-4-The-Room-Fix.reg" ;;
    5) game_fix "Unreal-Anthology-fix.reg" ;;
    6) download_qjoy ;;
    *) break ;;
    esac
  done
}
#----------------------#
#   WINE GAME FIXES    #
#----------------------#
function game_fix(){
cd ~/
wget https://github.com/ALLRiPPED/Devils-Wine-Updates/raw/main/reg-patches/${1}
wine reg import ${1}
sleep 1
rm -f ${1}
}

#-------------------#
#    GAME TOOLS     #
#-------------------#
function download_qjoy() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
  dialog  --sleep 1 --title "QJOYPAD INFO" --msgbox "
---------------ATTENTION-----------
QJOYPAD MAPS KEYBOARD TO CONTROLLER
QJOYPAD IS USED FOR WINE/MUGEN
THIS DOWNLOADS  PREMADE LAYOUTS
WILL OVERWRITE LAYOUTS WITH SAME NAME" 0 0
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " QJOY DOWNLOADER " \
            --ok-label Select --cancel-label Back \
            --menu "Select Type Of Controller" 30 50 40 \
            1 "Arcade Controller       11 Layouts" \
            2 "PS3 Controller           4 Layouts" \
            + "---------------Info---------------" \
            3 "----Arcade Mapped Games List------" \
            4 "----PS3 Mapped Games List---------" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) qj_arcade  ;;
            2) qj_ps3     ;;
            +) none       ;;
            3) qarcade_info ;;
            4) qps3-info    ;;
            *) break      ;;
        esac
    done
fi 
}
#-----------------------#
#      QJ FUNCTIONS     #
#-----------------------#
function qj_arcade() { 
clear
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-updates/qjoy-arcade.zip -P "$HOME"/.qjoypad3 -erobots=off
unzip -o "$HOME"/.qjoypad3/qjoy-arcade.zip -d "$HOME"/.qjoypad3
sudo rm -R "$HOME"/.qjoypad3/qjoy-ps3.zip
}

function qj_ps3() {
clear
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-updates/qjoy-ps3.zip -P "$HOME"/.qjoypad3 -erobots=off
unzip -o "$HOME"/.qjoypad3/qjoy-ps3.zip -d "$HOME"/.qjoypad3/
sudo rm -R "$HOME"/.qjoypad3/qjoy-ps3.zip
}

#-------------------------#
#    Q INFO FUNCTIONS     #
#-------------------------#
function qarcade_info() {
dialog  --sleep 1 --title "Mapped Games" --msgbox "
ARCADE MAPPED GAMES
-Angry Birds Seasons
-Baldurs Gate
-Cuphead
-Hydro Thunder
-Mugen
-Simpsons Hit & Run
-Skifree
-Spooky Castle
-Sugar Rush
-TMNT
-Terrordome" 0 0
}
function qps3_info() {
dialog  --sleep 1 --title "Mapped Games" --msgbox "
PS3 MAPPED GAMES
-Baldurs Gate
-Spooky Castle
-Mugen
-Skifree" 0 0
}
#       RETRO SCRAPEY FUNCTIONS    #
function retro_scrapey() {
bash "$HOME"/Devils-Box/scripts/Retro-Scrapey.sh
}
#     FE-SWITCHEROO  FUNCTION      #
function fe_switch() {
sudo cp /home/pi/Devils-Box/scripts/FE-Switcheroo.sh -f /usr/local/bin/switcheroo
bash "$HOME"/Devils-Box/scripts/FE-Switcheroo.sh
}
###---------------------------------------###
###   COMMUNITY TOOL BOX MENU FUNCTIONS   ###
###---------------------------------------###
function community_tools() {
  while true; do 
dialog  --sleep 1 --title "COMMUNITY TOOLBOX" --msgbox " 
---------------WELCOME------------------
TOOLS HERE MADE & MAINTANED BY COMMUNITY 
WE WILL DO OUR BEST TO KEEP UP TO DATE" 0 0
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " COMMUNITY TOOL BOX MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT TOOLSET AND PRESS A  " 20 50 30 \
      1 "Community Audio & Visual Tools   " \
      2 "Community Emulator Tools    " \
      3 "Community Hardware Tools       " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) comm_audio ;;
    2) comm_emu_tools ;;
    3) comm_hardware_tools ;;
    *) break ;;
    esac
  done
}
#---------------------------------------------#
#  COMMUNITY AUDIO & VISUAL TOOLS FUNCTIONS   #
#---------------------------------------------#
function comm_audio() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " AUDIO & VISUAL TOOLS MENU" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 70 50 \
      + "<------------------->Visual Tools<------------------------> " \
      1 "Emulation Station Themes---------------------------Retropie " \
      2 "Hursty's Themes--------------------------------------Hursty " \
      - "<----------------->Audio/Mixed Tools<---------------------> " \
      3 "Apply No Audio Fix--------------------------------Anonymous " \
      4 "Install I.M.P-----------------------------------RapiEdwin08 " \
      5 "Install T.A.M.P.O--------------------------------thepitster " \
      - "<-------------------->Information<------------------------> " \
      6 "I.M.P-------------Integrated Music Player------------------ " \
      7 "T.A.M.P.O --------Theme And Music Plus Overlay------------- " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) es-themes ;;
    2) hursty-themes ;;
    -) none ;;
    3) no-audio ;;
    4) imp ;;
    5) tampo ;;
    6) imp-info ;;
    7) tampo-info ;;
    *) break ;;
    esac
  done
}
function tampo() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
clear
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
function imp() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
cd ~
git clone https://github.com/RapidEdwin08/imp.git
sudo chmod 755 ~/imp/imp_setup.sh
cd ~/imp && ./imp_setup.sh
fi
}
function imp-info() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
clear
cat /home/pi/Devils-Box/files/IMP/README.md
read -n 1 -s -r -p "Press any key to Continue"
fi
}
function tampo-info() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR" --msgbox " 
Offline ... Not Availible Please Connect To Internet!" 0 0
else
clear
cat /home/pi/Devils-Box/files/tampo/README.md
read -n 1 -s -r -p "Press any key to Continue"
fi
}
###---------------------------------------###
###  COMMUNITY EMU TOOLS MENU FUNCTIONS   ###
###---------------------------------------###
function comm_emu_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "COMMUNITY EMU TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 70 50 \
      1 "RetroPie Setup Menu------------------Retro Pie" \
      2 "Mugen Installer-----------Supreme/Retro Devils" \
      3 "PIKISS Installer-----------------Jose Cerrejon" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) rpi-menu ;;
    2) mugen ;;
    3) pikiss ;;
    *) break ;;
    esac
  done
}

#----------------------------------#
#   RETROPIE SETUP MENU FUNCTION   #
#----------------------------------#
function rpi-menu() {
  sudo "$HOME"/RetroPie-Setup/retropie_setup.sh
}
#-----------#
#   PIKISS  #
#-----------#
function pikiss() {
if [ $NETCHECK  = 1 ]; then
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
#---------------#
#     MUGEN     #
#---------------#
function mugen() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "Mugen Installer FYI" --msgbox " 
--------------------------------------------
-----------INSTALLER WARNING & FYI----------
--------------------------------------------
- This will overwrite your es_systems.cfg 
- Devils Box will backup your es_systems.cfg" 0 0
mkdir home/pi/.emulationstation/backups/
mv /home/pi/.emulationstation/es_systems.cfg -f /home/pi/.emulationstation/backups/es_systems.b4.wine
curl -sSL https://bit.ly/3MGKWUD | bash
dialog  --sleep 1 --title "EXIT MESSAGE" --msgbox " 
------------------------------POSSIBLE ERRORS & SOLUTIONS-----------------------------
-Only WINE shows in ES nothing else
     -Devils Box backed up your ..../es_systems.cfg to ..../backups/es_systems.b4.wine
     -Copy wine section from new cfg to your old cfg,  delete new cfg, rename old one. 
-Mugen doesnt launch  
     -FRIST TRY TO LAUNCH AGAIN. Wine sometimes doesnt launch correctly.
     -Wait. Big Mugens/Games can take some time.
     -Reinstall. Something might have been missed 
-----ALWAYS REMEBER HAVE FUN THATS THE POINT-----" 0 0
fi
}

###---------------------------------###
###   HARDWARE TOOLS MENU FUNCTIONS ###
###---------------------------------###
function comm_hardware_tools() {
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
echo ${rst}$(tput setaf 1) "This Wil Clear You ES Controller Mappings"
read -n 1 -s -r -p "Press any key to Continue"
sudo rm "$HOME"/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
}

#--------#
# HDD IN #
#--------#
function hdd-in() { 
clear
mkdir /home/pi/addonusb > /dev/null 2>&1
mkdir /home/pi/.work > /dev/null 2>&1
testdrive=`df |grep media |awk '{print $1 }'|wc -l`
if [ $testdrive -eq 0 ] ; then
echo ${rst}$(tput setaf 1) "No External drive detected. Exiting."
sleep 5
exit
else
echo ${rst}$(tput setaf 1) "External Drive detected. Performing checks for NTFS filesystem and piroms directory."
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
echo ${rst}$(tput setaf 1) "This external drive is not correctly formatted. It must be formatted using the NTFS filesystem. Please reformat it to NTFS."
echo ${rst}$(tput setaf 1) "Fat vfat exfat filesystems are not supported in linux"
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
#---------#
# HDD OUT #
#---------#
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
  clear
  wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/uninstall_all.sh" | sudo bash
}
function retroflag() {
dialog  --sleep 1 --title "RetroFlag GPI Install" --msgbox " 
-This will install scripts for RetroFlag Cases.
-After complete system will reboot." 0 0
wget -O - "https://raw.githubusercontent.com/ALLRiPPED/retroflag-picase/master/install_gpi.sh" | sudo bash
}
###------------------------------------###
###   DEVILS TOOL BOX MENU FUNCTIONS   ###
###------------------------------------###
function devils_tools() {
  while true; do
dialog  --sleep 1 --title "DEVILS TOOLBOX" --msgbox " 
---------------WELCOME------------------
TOOLS HERE ARE MADE BY THE RETRO DEVILS " 0 0
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS TOOL BOX MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT TOOLSET AND PRESS A  " 20 50 30 \
      1 "Devils Emulator Tools " \
      2 "Devils Visual Tools " \
      - "----------------------" \
      3 "Devils Box Tools " \
      4 "Diablos Arcade Tools " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils_emu_tools ;;
    2) devils_visual_tools ;;
    -) none ;;
    3) db_tools ;;
    4) da_tools ;;
    *) break ;;
    esac
  done
}
#------------------------------------------#
#  DEVILS AUDIO & VISUAL TOOLS FUNCTIONS   #
#------------------------------------------#
function devils_visual_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS VISUAL TOOLS MENU" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 50 50 \
      + "<--->Visual Tools<---------> " \
      1 "Devils Themes and Artwork " \
      + "<--->Frontend Tools<-------> " \
      2 "Frontend Switcheroo " \
      + "<--->Experimental Tools<---> " \
      3 "Retro Scrapey " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) devil-themes ;;
    +) none ;;
    2) fe_switch ;;
    +) none ;;
    3) retro_scrapey ;;
    *) break ;;
    esac
  done
}

#----DEVILS THEMES MENU--------#
function devil-themes() {
  while true; do 
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS THEMES MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT THEME AND PRESS A  " 20 50 30 \
      1 "Devil Chromey   " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devil-chromey ;;
    *) break ;;
    esac
  done
}
function devil-chromey() {
wget https://archive.org/download/devils-themes/devil-chromey.zip -P ${HOME}/
unzip -o "$HOME"/devil-chromey.zip -d /home/pi/.emulationstation/themes/
sudo rm -R "$HOME"/devil-chromey.zip
}

###------------------------------------###
###  DEVILS EMU TOOLS MENU FUNCTIONS   ###
###------------------------------------###
function devils_emu_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "COMMUNITY EMU TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 50 50 \
      1 "Devils Extras Installer" \
      2 "BIOS Installer" \
      3 "Game Fixes & Tools" \
      4 "SEGA Model 3 Installer" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils-ex ;;
    2) download-bios ;;
    3) game_fixes ;;    
    4) sm3 ;;
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
clear
curl -sSL https://git.io/JSDOy | bash
fi
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
#----DIABLOS ARCADE TOOLS---#
function da_tools() {
  DA_STATUS=0
  if [ -d "/opt/retropie/configs/all/emulationstation/themes/devil chromey/" ]; then 
    DA_STATUS=1
  fi
  local choice
  while true; do
  if [ "$DA_STATUS" == 1 ]; then
  dialog  --sleep 1 --title "DIABLOS ARCADE TOOLS" --msgbox " 
----------------ATTENTION-----------------
--THIS TOOLS ARE JUST FOR DIABLOS ARCADE--
---------DO NOT USE OTHER BUILDS----------
-----------------WARNING------------------
--WE REPEAT DO NOT USE ON OTHER BUILDS--" 0 0
else
  dialog  --sleep 1 --title "DIABLOS ARCADE TOOLS" --msgbox " 
---------------ATTENTION------------------
--THIS IS JUST FOR DIABLOS ARCADE BUILDS--
-----------------SORRY--------------------" 0 0
break
fi
    choice=$(dialog --backtitle "$BACKTITLE" --title " DIABLOS ARCADE TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT AND APPLY TOOL" 20 50 30 \
      1 "Changes V1.0 - V1.1" \
      2 "Update  V1.0 - V1.1" \
      3 "Version Checker" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) change_v1 ;;
    2) update_v1  ;;
    3) version_da ;;
    *) break ;;
    esac
  done
}
#--------------------------_#
#ABOUT DEVILS BOX #
#---------------------------#
function help_db() {
  clear
  cat "$HOME"/Devils-Box/files/db-files/HELP-DB.txt
read -n 1 -s -r -p "Press any key to Continue"
}
#--------------------------_#
#HELP WITH DEVILS BOX #
#---------------------------#
function about_db() {
  clear
  cat "$HOME"/Devils-Box/files/db-files/INFO.txt
read -n 1 -s -r -p "Press any key to Continue"
}

#---------------------------#
#REMOVE DEVILS BOX          #
#---------------------------#
function remove_db() {
clear
  echo ${rst}$(tput setaf 1) "Removing Now";
  sudo rm "$HOME"/RetroPie/retropiemenu/Devils-Box.sh
  sudo rm -R "$HOME"/Devils-Box
  sudo reboot
}

#------------------#
#UPDATE DEVILS BOX #
#------------------#
function update_db() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "UPDATE DEVILS BOX" --msgbox " 
OFFLINE!!!
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  clear
  echo ${rst}$(tput setaf 1) "Online ... Updating"
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


#------DIABLOS ARCADE FUNCTIONS----#

function update_v1() {
clear
sudo rm -R /usr/local/bin/da-version
sudo wget https://github.com/ALLRiPPED/Devils-Pi/raw/main/Diablos-Arcade/files/da-version -P /usr/local/bin/
sudo chmod 755 /usr/local/bin/da-version
echo ${bid}$(tput setaf 1)"---Adding Bash Welcome Tweak---"
mv -f $HOME/.bashrc $HOME/.bashrc-backup
wget https://github.com/ALLRiPPED/Devils-Pi/raw/main/Diablos-Arcade/files/da.bashrc -P $HOME/
mv -f $HOME/da.bashrc $HOME/.bashrc
sleep 2
clear
echo ${bld}$(tput setaf 1) "---Backing Up & Getting New ES-Systems---"
sleep 2
mkdir /home/pi/.emulationstation/backups
mv /home/pi/.emulationstation/es_systems.cfg -f /home/pi/.emulationstation/backups/es_systems.backup
sleep 1
wget https://archive.org/download/devils-updates/es_systems.cfg -P /home/pi/.emulationstation/
echo ${bld}$(tput setaf 1)"---Getting Artwork---"
sleep 2
wget https://archive.org/download/devils-updates/simpbowl.mp4 -P /home/pi/RetroPie/roms/arcade/snap/
echo ${bld}$(tput setaf 1)"---Removing Games----"
sleep 2
sudo rm /home/pi/RetroPie/roms/arcade/tekken.zip
sudo rm /home/pi/RetroPie/roms/arcade/tekken2.zip
sudo rm /home/pi/RetroPie/roms/arcade/tekken3.zip
sleep 2 
echo ${bld}$(tput setaf 1)"---Adding Devils Track 2---"
sleep 2
wget "https://archive.org/download/devils-updates/Music/NEFFEX - Rollin' With The Devil.mp3" -P "/home/pi/bgm/"
echo ${bld}$(tput setaf 1)"---Replacing Wine Logo---"
wget https://github.com/ALLRiPPED/es-theme-devil-chromey/raw/main/wine/_inc/system.png && mv -f system.png "/opt/retropie/configs/all/emulationstation/themes/devil chromey/wine/_inc"
wget https://github.com/ALLRiPPED/es-theme-devil-chromey/raw/main/mugen/_inc/system.png && mv -f system.png "/opt/retropie/configs/all/emulationstation/themes/devil chromey/mugen/_inc"
wget https://github.com/ALLRiPPED/es-theme-devil-chromey/raw/main/mugens/_inc/system.png && mv -f system.png "/opt/retropie/configs/all/emulationstation/themes/devil chromey/mugens/_inc"
sleep 2 
echo ${bld}$(tput setaf 1)"---Updating Devils Box---"
sleep 2
sudo rm /home/pi/RetroPie/retropiemenu/Devils-Box.sh
cd /home/pi/Devils-Box
git pull -f
cp /home/pi/Devils-Box/Devils-Box.sh -f /home/pi/RetroPie/retropiemenu/
sudo cp /home/pi/Devils-Box/files/box -f /usr/local/bin/
sudo cp /home/pi/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
sudo chmod 755 /usr/local/bin/box
sudo chmod 755 /usr/local/bin/Devils-Box
chmod 755 /home/pi/RetroPie/retropiemenu/Devils-Box.sh
sleep 2
echo ${bld}$(tput setaf 1)"Updating & Upgrading"
sudo apt -y update 
sudo apt -y upgrade 
}
function change_v1() {
dialog --sleep 1 --title "CHANGELOG" --msgbox "
-Added Wine support to Retropie Menu.
-Added missing Artwork.
-Devils Box Updated.
-Devils Extras Installed.
-Non working games removed.
-Updated and Upgraded Debian Packages" 0 0
}
function version_da() {
dialog  --sleep 1 --title "DIABLOS ARCADE VERSION" --msgbox " 
This does not work you are on V1.0
Please update for newest awesomness" 0 0
clear
da-version
}

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
#  REBOOT FUNCTION  #
#-------------------#
function system_reboot() {
clear
read -n 1 -s -r -p "Press any key to Reboot"
sudo reboot
}

#------------------#
#  EXPAND MEM.     #
#------------------#
function expand_mem() {
echo "This will Expand Memory and Reboot"
read -n 1 -s -r -p "Press any key to Continue"
sudo raspi-config --expand-rootfs 
sudo reboot
}
#------------------#
# ARTWORK FUNCTION #
#------------------# 
function download-art() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40; else
clear
cd "$HOME/RetroPie/roms/"${1}"/"
git init
git remote add origin "${ART_HOST2}/${1}.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
echo ${bld}$(tput setaf 1)"-----SCRAPING NEW MEDIA NOW------"
sleep 5
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
fi
}
#------------------#
# CONSOLE FUNCTION #
#------------------#
function download-bios() {
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST3}"/BIOS/ -P "$HOME"/RetroPie/BIOS/ -erobots=off
rm -f "$HOME"/RetroPie/BIOS/index.html.tmp
}
function download-packs() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
echo ${bld}$(tput setaf 1)"-----SCRAPING NEW GAMES INFO NOW------"
sleep 5
cd "$HOME/RetroPie/roms/"${1}"/"
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
fi
}
function download-packs-alt() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
echo ${bld}$(tput setaf 1)"-----SCRAPING NEW MEDIA NOW------"
sleep 5
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
fi
}
#-----------------#
#  HACKS FUNCTION #
#-----------------#
function download-hacks() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Apply Hacks Config" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
cd "$HOME/RetroPie/roms/"${1}"/"
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
fi
}
#  GAME FUNCTION  #
#-----------------#
function download-game() {
  for type in "$@"; do
    if [ "${type}" != "${1}" ]; then
      if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
      else
      clear
      wget -m -r -np -nH -nd -R "index.html" ${PC_HOST}/"${1}"/"${type}" -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
      rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
fi
done
}

#-----------------#
#  WINE FUNCTION  #
#-----------------#
function download-winegames() {
if [ ! -d "$HOME/RetroPie/roms/wine/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install Wine First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST4}/"${1}" -P "$HOME"/RetroPie/roms/wine -erobots=off
  unzip -o "$HOME"/RetroPie/roms/wine/"${1}" -d "$HOME"/RetroPie/roms/wine/
  chmod 755 "$HOME"/RetroPie/roms/wine/*.sh
  sudo rm -r "$HOME"/RetroPie/roms/wine/"${1}"
fi
}
function download-pcgames() {
if [ ! -d "$HOME/RetroPie/roms/pc/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST5}/"${1}" -P "$HOME"/RetroPie/roms/pc -erobots=off
  unzip -o "$HOME"/RetroPie/roms/pc/"${1}" -d "$HOME"/RetroPie/roms/pc/
  sudo rm -r "$HOME"/RetroPie/roms/pc/"${1}"
fi
}
#----------------------#
#  PSP GAMES FUNCTIONS  #
#----------------------#
function download-psp() {
if [ ! -d "$HOME/RetroPie/roms/pc/" ]; then dialog  --sleep 1 --title "PSP FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST6}/"${1}" -P "$HOME"/RetroPie/roms/psp -erobots=off
fi
}
function psp-pack() {
if [ ! -d "$HOME"/RetroPie/roms/psp/ ]; then dialog  --sleep 1 --title "PSP FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST6}"/ -P "$HOME"/RetroPie/roms/psp -erobots=off
rm -f "$HOME"/RetroPie/roms/psp/index.html.tmp
echo ${bld}$(tput setaf 1)"-----SCRAPING NEW GAMES INFO NOW------"
sleep 5
cd "$HOME/RetroPie/roms/psp/"
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
fi
}
#--------------------------#
#   MSU-1 GAMES FUNCTIONS  #
#--------------------------#
function download-msu1() {
if [ ! -d "$HOME"/RetroPie/roms/snesmsu1/ ]; then dialog  --sleep 1 --title "MSU1 FOLDER MISSING!" --msgbox "RUNNING MSU1 SETUP NOW" 6 40;
chmod 755 "$HOME"/Devils-Box/scripts/MSU1-Setup.sh
"$HOME"/Devils-Box/scripts/MSU1-Setup.sh
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST7}/"${1}" -P "$HOME"/RetroPie/roms/snesmsu1 -erobots=off
fi
}
function msu1-pack() {
if [ ! -d "$HOME"/RetroPie/roms/snesmsu1/ ]; then dialog  --sleep 1 --title "MSU1 FOLDER MISSING!" --msgbox "RUNNING MSU1 SETUP NOW" 6 40;
chmod 755 "$HOME"/Devils-Box/scripts/MSU1-Setup.sh
"$HOME"/Devils-Box/scripts/MSU1-Setup.sh
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST7}"/ -P "$HOME"/RetroPie/roms/snesmsu1 -erobots=off
rm -f "$HOME"/RetroPie/roms/snesmsu1/index.html.tmp
echo ${bld}$(tput setaf 1)"-----SCRAPING NEW GAMES INFO NOW------"
sleep 5
cd "$HOME/RetroPie/roms/snesmsu1/"
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
fi
}
#-----------------#
#  MUGEN FUNCTION  #
#-----------------#
function download-mugens() {
if [ ! -d "$HOME/RetroPie/roms/wine" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install Wine First" 6 40;
else
  clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST4}/"${1}" -P "$HOME"/RetroPie/roms/mugens -erobots=off
  unzip -o "$HOME"/RetroPie/roms/mugens/"${1}" -d "$HOME"/RetroPie/roms/mugens
  chmod 755 "$HOME"/RetroPie/roms/mugens/*.sh
  sudo rm -r "$HOME"/RetroPie/roms/mugens/"${1}"
fi
}

main_menu
