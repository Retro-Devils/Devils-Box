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

#--------GAME HOSTS---------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine"
HOST5="https://archive.org/download/devils-dos"
#HOST6=""

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
      --menu "DEVILS BOX V3.01--------------UPDATED 2/13/22" 20 50 30 )
    if [ "$DB_STATUS" == 1 ]; then
      options=( \
      - "----Downloaders----"
      1 "Artwork Packs"
      2 "Console Packs"
      3 "Hacked Packs"
      4 "Pick & Choose"
      + "-------Tools-------"
      5 "Game Tools/Fixes"
      6 "Tool Box  "
      - "-------------------"
      7 "Reboot System"
      8 "Show System Info")
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
                  -PRESS A/ENTER TO DOWNLOAD.......***MEANS COMING SOON" 30 70 50 \
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
      51 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      52 "Super Famicon Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      53 "SG-1000 Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
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
      +  "________________Consoles-Hacks-Artwork_____________________" \
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
      44 "Sega Saturn                      108GB      303 GAMES" \
      45 "Sega Saturn Japan                3.9GB       18 GAMES" \
      46 "ScummVM                          2.5GB       21 GAMES" \
      47 "Sega32x                           63MB       37 GAMES" \
      48 "SegaCD                            11GB       52 GAMES" \
      49 "Super Famicon                    475MB      487 GAMES" \
      50 "SG-1000                            1MB       68 GAMES" \
      51 "SNES                             508MB      603 GAMES" \
      52 "SuperGraffiix                    2.4MB        5 GAMES" \
      53 "Turbo Graffix 16                  20MB       94 GAMES" \
      54 "Vectrex                          201KB       20 GAMES" \
      55 "VideoPAC                         430KB       99 GAMES" \
      56 "Virtual Boy                        8MB       24 GAMES" \
      57 "Dreamcast VMU                      3MB      115 GAMES" \
      58 "Wonderswan Color                 116MB       84 GAMES" \
      59 "Sharp X1                         7.6MB       69 GAMES" \
      60 "Sharp X68000                     504MB      418 GAMES" \
      61 "ZMachine                           4MB       30 GAMES" \
      62 "ZXSpectrum                        38MB     1111 GAMES" \
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
    44) download-packs "saturn" ;;
    45) download-packs "saturn-japan" ;;
    46) download-packs "scummvm" ;;
    47) download-packs "sega32x" ;;
    48) download-packs "segacd" ;;
    40) download-packs "sfc" ;;
    50) download-packs "sg-1000" ;;
    51) download-packs "snes" ;;
    52) download-packs "supergrafx" ;;
    53) download-packs "tg16" ;;
    54) download-packs "vectrex" ;;
    55) download-packs "videopac" ;;
    56) download-packs "virtualboy" ;;
    57) download-packs "svmu" ;;
    58) download-packs "wonderswancolor" ;;
    59) download-packs "x1" ;;
    60) download-packs "x68000" ;;
    61) download-packs "zmachine" ;;
    62) download-packs "zxspectrum" ;;  
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
local choice
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PICK & CHOOSE MENU" \
      --ok-label Select --cancel-label Main-Menu \
      --menu "PICK CONSOLE & CHOOSE GAME(S) " 20 50 30 \
      1 "AtomisWave" \
      2 "Dreamcast" \
      3 "GameBoy Advance" \
      4 "MegaDrive" \
      5 "Mugens" \
      6 "Nintendo 64" \
      7 "Nintendo DS" \
      8 "NES" \
      9 "Playstation 1" \
      10 "Saturn" \
      11 "Super Nintendo" \
      12 "PC DOS Games" \
      13 "Wine" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) atomiswave ;;
    2) dreamcast ;;
    3) gba ;;
    4) megadrive ;;
    5) mugens ;;
    6) n64 ;;
    7) nds ;;
    8) nes ;;
    9) psx ;;
    10) saturn ;;
    11) snes ;;
    12) pcgames ;;
    13) winegames ;;
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
function n64() {
          whiptail --clear --title "PICK & CHOOSE NINTENDO 64" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "007 - GoldenEye (USA).n64" off \
                "2" "Army Men - Air Combat" off \
                "3" "Army Men - Sarge's Heroes 2" off \
                "4" "Banjo-Kazooie" off \
                "5" "Banjo-Tooie" off \
                "6" "Batman Beyond - Return of the Joker" off \
                "7" "Body Harvest" off \
                "8" "Bomberman 64" off \
                "9" "California Speed" off \
                "10" "Castlevania - Legacy of Darkness" off \
                "11" "Cruis'n USA" off \
                "12" "Destruction Derby 64" off \
                "13" "Diddy Kong Racing" off \
                "14" "Donkey Kong 64" off \
                "15" "Doom 64" off \
                "16" "Duke Nukem 64" off \
                "17" "Earthworm Jim 3D" off \
                "18" "F-Zero X" off \
                "19" "Gex 3 - Deep Cover Gecko" off \
                "20" "Gex 64 - Enter the Gecko" off \
                "21" "Hot Wheels - Turbo Racing" off \
                "22" "Kirby 64 - The Crystal Shards" off \
                "23" "LEGO Racers" off \
                "24" "Legend of Zelda, The - Majora's Mask" off \
                "25" "Legend of Zelda, The - Ocarina of Time" off \
                "26" "Mace - The Dark Age" off \
                "27" "Mario Kart 64" off \
                "28" "Mario Party" off \
                "29" "Mario Party 2" off \
                "30" "Mario Party 3" off \
                "31" "Mega Man 64" off \
                "32" "Mortal Kombat 4" off \
                "33" "Mortal Kombat Trilogy" off \
                "34" "Mortal Kombat Mythologies - Sub-Zero" off \
                "35" "NFL Quarterback Club 99" off \
                "36" "New Tetris, The" off \
                "37" "Paper Mario" off \
                "38" "Pokemon Stadium" off \
                "39" "Quake 64" off \
                "40" "Quake II" off \
                "41" "Quest 64" off \
                "42" "Rayman 2 - The Great Escape" off \
                "43" "Resident Evil 2" off \
                "44" "Road Rash 64" off \
                "45" "Spider-Man" off \
                "46" "Star Fox 64" off \
                "47" "Star Wars - Rogue Squadron" off \
                "48" "Super Mario 64" off \
                "49" "Super Smash Bros." off \
                "50" "Tony Hawk's Pro Skater 3" off \
                "51" "Yoshis Story" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "n64" "007 - GoldenEye (USA).n64" ;;
            2) download-game "n64" "Army Men - Air Combat (USA).n64" ;;
            3) download-game "n64" "Army Men - Sarge's Heroes 2 (USA).n64" ;;
            4) download-game "n64" "Banjo-Kazooie (USA) (Rev A).n64" ;;
            5) download-game "n64" "Banjo-Tooie (USA).n64" ;;
            6) download-game "n64" "Batman Beyond - Return of the Joker (USA).n64" ;;
            7) download-game "n64" "Body Harvest (USA).n64" ;;
            8) download-game "n64" "Bomberman 64 (USA).n64" ;;
            9) download-game "n64" "California Speed (USA).n64" ;;
            10) download-game "n64" "Castlevania - Legacy of Darkness (USA).n64" ;;
            11) download-game "n64" "Cruis'n USA (Europe).n64" ;;
            12) download-game "n64" "Destruction Derby 64 (USA).n64" ;;
            13) download-game "n64" "Diddy Kong Racing (USA) (En,Fr) (Rev A).n64" ;;
            14) download-game "n64" "Donkey Kong 64 (Europe) (En,Fr,De,Es).n64" ;;
            15) download-game "n64" "Doom 64 (USA) (Rev A).n64" ;;
            16) download-game "n64" "Duke Nukem 64 (Europe).n64" ;;
            17) download-game "n64" "Earthworm Jim 3D (USA).n64" ;;
            18) download-game "n64" "F-Zero X (USA).n64" ;;
            19) download-game "n64" "Gex 3 - Deep Cover Gecko (USA).n64" ;;
            20) download-game "n64" "Gex 64 - Enter the Gecko (USA).n64" ;;
            21) download-game "n64" "Hot Wheels - Turbo Racing (USA).n64" ;;
            22) download-game "n64" "Kirby 64 - The Crystal Shards (Europe).n64" ;;
            23) download-game "n64" "LEGO Racers (USA) (En,Fr,De,Es,It,Nl,Sv,No,Da,Fi).n64" ;;
            24) download-game "n64" "Legend of Zelda, The - Majora's Mask (Europe) (En,Fr,De,Es) (Beta).n64" ;;
            25) download-game "n64" "Legend of Zelda, The - Ocarina of Time (Europe) (En,Fr,De) (Rev A).n64" ;;
            26) download-game "n64" "Mace - The Dark Age (USA).n64" ;;
            27) download-game "n64" "Mario Kart 64 (Europe) (Rev A).n64" ;;
            28) download-game "n64" "Mario Party (Europe) (En,Fr,De).n64" ;;
            29) download-game "n64" "Mario Party 2 (USA).n64" ;;
            30) download-game "n64" "Mario Party 3 (USA).n64" ;;
            31) download-game "n64" "Mega Man 64 (USA).n64" ;;
            32) download-game "n64" "Mortal Kombat 4 (USA).n64" ;;
            33) download-game "n64" "Mortal Kombat Trilogy (USA) (Rev B).n64" ;;
            34) download-game "n64" "Mortal Kombat Mythologies - Sub-Zero (USA).n64" ;;
            35) download-game "n64" "NFL Quarterback Club 99 (USA).n64" ;;
            36) download-game "n64" "New Tetris, The (USA).n64" ;;
            37) download-game "n64" "Paper Mario (USA).n64" ;;
            38) download-game "n64" "Pokemon Stadium (USA) (Rev A).n64" ;;
            39) download-game "n64" "Quake 64 (Europe).n64" ;;
            40) download-game "n64" "Quake II (USA).n64" ;;
            41) download-game "n64" "Quest 64 (USA).n64" ;;
            42) download-game "n64" "Rayman 2 - The Great Escape (USA) (En,Fr,De,Es,It).n64" ;;
            43) download-game "n64" "Resident Evil 2 (USA) (Rev A).n64" ;;
            44) download-game "n64" "Road Rash 64 (USA).n64" ;;
            45) download-game "n64" "Spider-Man (USA).n64" ;;
            46) download-game "n64" "Star Fox 64 (USA) (Rev A).n64" ;;
            47) download-game "n64" "Star Wars - Rogue Squadron (USA) (Rev A).n64" ;;
            48) download-game "n64" "Super Mario 64 (USA).n64" ;;
            49) download-game "n64" "Super Smash Bros. (USA).n64" ;;
            50) download-game "n64" "Tony Hawk's Pro Skater 3 (USA).n64" ;;
            51) download-game "n64" "Yoshi's Story (USA) (En,Ja).n64" ;;
            *) ;;
        esac
        done < /tmp/results
}
function nds() {
          whiptail --clear --title "PICK & CHOOSE NINTENDO DS" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Astro Boy - The Video Game" off \
                "2" "Asphalt - Urban GT 2" off \
                "3" "Assassin's Creed II" off \
                "4" "Bomberman 2" off \
                "5" "Castlevania" off \
                "6" "Dragon Ball - Origins" off \
                "7" "Final Fantasy XII - Revenant Wings" off \
                "8" "LEGO Batman - The Videogame" off \
                "9" "Mario Kart DS" off \
                "10" "Mario Party DS" off \
                "11" "Mega Man Star Force 3 - Red Joker" off \
                "12" "Need for Speed - Most Wanted" off \
                "13" "Pokemon - Diamond Version" off \
                "14" "Puchi Puchi Virus" off \
                "15" "Shaun the Sheep" off \
                "16" "Sonic & Sega All-Stars Racing" off \
                "17" "Sonic Classic Collection" off \
                "18" "Spider-Man - Edge of Time" off \
                "19" "Spider-Man - Shattered Dimensions" off \
                "20" "Spider-Man - Web of Shadows" off \
                "21" "Spider-Man 2" off \
                "22" "Spider-Man 3" off \
                "23" "Star Wars - Battlefront - Elite Squadron" off \
                "24" "Star Wars - Episode III - Revenge of the Sith" off \
                "25" "Star Wars - Lethal Alliance" off \
                "26" "Star Wars - The Force Unleashed" off \
                "27" "Super Mario 64 DS" off \
                "28" "Tetris DS" off \
                "29" "Tetris Party Deluxe" off \
                "30" "Tony Hawk's Downhill Jam" off \
                "31" "Tony Hawk's Motion" off \
                "32" "Transformers - Dark of the Moon - Autobots" off \
                "33" "Transformers - Dark of the Moon - Decepticons" off \
                "34" "Underground Pool" off \
                "35" "Warhammer 40,000 - Squad Command" off \
                "36" "Wario - Master of Disguise" off \
                "37" "Wipeout - The Game" off \
                "38" "X-Men - Destiny" off \
                "39" "X-Men - The Official Game" off \
                "40" "Yoshi's Island DS" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "nds" "Astro Boy - The Video Game (USA) (En,Fr,De,Es,It).zip" ;;
            2) download-game "nds" "Asphalt - Urban GT 2 (USA) (En,Fr,Es).zip" ;;
            3) download-game "nds" "Assassin's Creed II - Discovery (USA) (En,Fr,Es) (NDSi Enhanced) [b].zip" ;;
            4) download-game "nds" "Bomberman 2 (Europe) (En,Fr,De,Es,It).zip" ;;
            5) download-game "nds" "Castlevania - Order of Ecclesia (USA) (En,Fr).zip" ;;
            6) download-game "nds" "Dragon Ball - Origins (USA).zip" ;;
            7) download-game "nds" "Final Fantasy XII - Revenant Wings (USA).zip" ;;
            8) download-game "nds" "LEGO Batman - The Videogame (USA) (En,Fr,Es).zip" ;;
            9) download-game "nds" "Mario Kart DS (USA) (En,Fr,De,Es,It).zip" ;;
            10) download-game "nds" "Mario Party DS (USA).zip" ;;
            11) download-game "nds" "Mega Man Star Force 3 - Red Joker (USA).zip" ;;
            12) download-game "nds" "Need for Speed - Most Wanted (USA).zip" ;;
            13) download-game "nds" "Pokemon - Diamond Version (USA) (Rev 5).zip" ;;
            14) download-game "nds" "Puchi Puchi Virus (USA).zip" ;;
            15) download-game "nds" "Shaun the Sheep (USA) (En,Ja,Fr,De,Es,It) [b].zip" ;;
            16) download-game "nds" "Sonic & Sega All-Stars Racing (USA) (En,Fr,Es).zip" ;;
            17) download-game "nds" "Sonic Classic Collection (USA) (En,Fr,Es) (NDSi Enhanced) [b].zip" ;;
            18) download-game "nds" "Spider-Man - Edge of Time (USA) (En,Fr).zip" ;;
            19) download-game "nds" "Spider-Man - Shattered Dimensions (USA) (En,Fr).zip" ;;
            20) download-game "nds" "Spider-Man - Web of Shadows (USA) (En,Fr) [b].zip" ;;
            21) download-game "nds" "Spider-Man 2 (USA).zip" ;;
            22) download-game "nds" "Spider-Man 3 (USA).zip" ;;
            23) download-game "nds" "Star Wars - Battlefront - Elite Squadron (USA) (En,Fr) [b].zip" ;;
            24) download-game "nds" "Star Wars - Episode III - Revenge of the Sith (USA) (En,Fr,De,Es,It,Nl).zip" ;;
            25) download-game "nds" "Star Wars - Lethal Alliance (USA) (En,Fr,De,Es,It).zip" ;;
            26) download-game "nds" "Star Wars - The Force Unleashed (USA) (En,Fr,De,Es,It).zip" ;;
            27) download-game "nds" "Super Mario 64 DS (USA).zip" ;;
            28) download-game "nds" "Tetris DS (USA).zip" ;;
            29) download-game "nds" "Tetris Party Deluxe (USA) (En,Fr,Es).zip" ;;
            30) download-game "nds" "Tony Hawk's Downhill Jam (USA).zip" ;;
            31) download-game "nds" "Tony Hawk's Motion (USA).zip " ;;
            32) download-game "nds" "Transformers - Dark of the Moon - Autobots (USA) (En,Fr).zip" ;;
            33) download-game "nds" "Transformers - Dark of the Moon - Decepticons (USA) (En,Fr).zip" ;;
            34) download-game "nds" "Underground Pool (USA).zip" ;;
            35) download-game "nds" "Warhammer 40,000 - Squad Command (USA) (En,Fr).zip" ;;
            36) download-game "nds" "Wario - Master of Disguise (USA).zip" ;;
            37) download-game "nds" "Wipeout - The Game (USA).zip" ;;
            38) download-game "nds" "X-Men - Destiny (USA).zip" ;;
            39) download-game "nds" "X-Men - The Official Game (USA).zip" ;;
            40) download-game "nds" "Yoshi's Island DS (USA).zip" ;;
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
function psx() {
          whiptail --clear --title "PICK & CHOOSE PS1" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Alone in the Dark - One-Eyed Jack's Revenge" off \
                "2" "Castlevania - Symphony of the Night" off \
                "3" "Castlevania Chronicles" off \
                "4" "Cool Boarders 2" off \
                "5" "Crash Bandicoot" off \
                "6" "Crash Bandicoot - Warped" off \
                "7" "Crash Bash" off \
                "8" "Dead or Alive" off \
                "9" "Destruction Derby 2" off \
                "10" "Doom" off \
                "11" "Dragon Ball GT - Final Bout" off \
                "12" "Dragon Ball Z - Ultimate Battle 22" off \
                "13" "Duke Nukem - Time to Kill" off \
                "14" "FIFA - Road to World Cup 98" off \
                "15" "Grand Theft Auto 2" off \
                "16" "Hydro Thunder" off \
                "17" "JoJo's Bizarre Adventure" off \
                "18" "Marvel VS Street Fighter" off \
                "19" "Metal Slug X" off \
                "20" "NBA Jam Extreme" off \
                "21" "Oddworld - Abe's Oddysee" off \
                "22" "Quake II" off \
                "23" "Rayman" off \
                "24" "Tekken 3" off \
                "25" "Tony Hawk's Pro Skater" off \
                "26" "Tony Hawk's Pro Skater 2" off \
                "27" "Tony Hawk's Pro Skater 3" off \
                "28" "Tony Hawk's Pro Skater 4" off \
                "29" "Twisted Metal" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "psx" "Alone in the Dark - One-Eyed Jack's Revenge (USA).pbp" ;;
            2) download-game "psx" "Castlevania - Symphony of the Night (USA).pbp" ;;
            3) download-game "psx" "Castlevania Chronicles (USA).pbp" ;;
            4) download-game "psx" "Cool Boarders 2 (USA).pbp" ;;
            5) download-game "psx" "Crash Bandicoot (USA).pbp" ;;
            6) download-game "psx" "Crash Bandicoot - Warped (USA).pbp" ;;
            7) download-game "psx" "Crash Bash (USA).pbp" ;;
            8) download-game "psx" "Dead or Alive (USA).pbp" ;;
            9) download-game "psx" "Destruction Derby 2 (USA).pbp" ;;
            10) download-game "psx" "Doom (USA).pbp" ;;
            11) download-game "psx" "Dragon Ball GT - Final Bout (USA).pbp" ;;
            12) download-game "psx" "Dragon Ball Z - Ultimate Battle 22 (USA).pbp" ;;
            13) download-game "psx" "Duke Nukem - Time to Kill (USA).pbp" ;;
            14) download-game "psx" "FIFA - Road to World Cup 98 (USA).pbp" ;;
            15) download-game "psx" "Grand Theft Auto 2 (USA).pbp" ;;
            16) download-game "psx" "Hydro Thunder (USA).pbp" ;;
            17) download-game "psx" "JoJo's Bizarre Adventure (USA).pbp" ;;
            18) download-game "psx" "Marvel Super Heroes vs. Street Fighter (USA).pbp" ;;
            19) download-game "psx" "Metal Slug X (USA).pbp" ;;
            20) download-game "psx" "NBA Jam Extreme (USA).pbp" ;;
            21) download-game "psx" "Oddworld - Abe's Oddysee (USA).pbp" ;;
            22) download-game "psx" "Quake II (USA).pbp" ;;
            23) download-game "psx" "Rayman (USA).pbp" ;;
            24) download-game "psx" "Tekken 3 (USA).pbp" ;;
            25) download-game "psx" "Tony Hawk's Pro Skater (USA).pbp" ;;
            26) download-game "psx" "Tony Hawk's Pro Skater 2 (USA).pbp" ;;
            27) download-game "psx" "Tony Hawk's Pro Skater 3 (USA).pbp" ;;
            28) download-game "psx" "Tony Hawk's Pro Skater 4 (USA).pbp" ;;
            29) download-game "psx" "Twisted Metal (USA).pbp" ;;
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
function snes() {
          whiptail --clear --title "PICK & CHOOSE SNES" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Adventures of Batman & Robin, The" off \
                "2" "Adventures of Kid Kleets, The" off \
                "3" "Aero the Acro-Bat" off \
                "4" "Alien 3" off \
                "5" "Alien vs. Predator" off \
                "6" "Asterix & Obelix" off \
                "7" "Batman Forever" off \
                "8" "Battletoads & Double Dragon - The Ultimate Team" off \
                "9" "Battletoads in Battlemaniacs" off \
                "10" "Biker Mice from Mars" off \
                "11" "Blackhawk" off \
                "12" "Brawl Brothers - Rival Turf! 2" off \
                "13" "Captain America and the Avengers (Europe).zip" off \
                "14" "Castlevania - Vampire's Kiss" off \
                "15" "Corn Buster" off \
                "16" "Donkey Kong Country" off \
                "17" "Donkey Kong Country 2 - Diddy's Kong Quest" off \
                "18" "Donkey Kong Country 3 - Dixie Kong's Double Trouble!" off \
                "19" "Doom" off \
                "10" "Double Dragon V - The Shadow Falls" off \
                "21" "Dragon - The Bruce Lee Story" off \
                "22" "Dungeon Master" off \
                "23" "Earthworm Jim" off \
                "24" "Earthworm Jim 2" off \
                "25" "Final Fight" off \
                "26" "Flashback - The Quest for Identity" off \
                "27" "Harvest Moon" off \
                "28" "Hyper V-Ball" off \
                "29" "James Bond Jr." off \
                "30" "Judge Dredd" off \
                "31" "Kirby's Dream Course" off \
                "32" "Kirby's Ghost Trap" off \
                "33" "Legend of Zelda -A Link to the Past" off \
                "34" "Lemmings" off \
                "35" "Mario Is Missing!" off \
                "36" "Mega Man 7" off \
                "37" "Mega Man X3" off \
                "38" "Micro Machines" off \
                "39" "Mortal Kombat II" off \
                "40" "Mortal Kombat III" off \
                "41" "Ms. Pac-Man" off \
                "42" "Pac-Attack" off \
                "43" "Pitfall - The Mayan Adventure" off \
                "44" "R-Type III - The Third Lightning" off \
                "45" "Secret of Evermore" off \
                "46" "Spider-Man & Venom - Maximum Carnage" off \
                "47" "Super Bomberman" off \
                "48" "Super Mario World" off \
                "49" "Super Mario World 2 - Yoshi's Island" off \
                "50" "Tetris Attack" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "snes" "Adventures of Batman & Robin, The (Europe).zip" ;;
            2) download-game "snes" "Adventures of Kid Kleets, The (USA) (En,Fr,Es).zip" ;;
            3) download-game "snes" "Aero the Acro-Bat (Europe).zip" ;;
            4) download-game "snes" "Alien 3 (Europe).zip" ;;
            5) download-game "snes" "Alien vs. Predator (Europe).zip" ;;
            6) download-game "snes" "Asterix & Obelix (Europe) (En,Fr,De,Es).zip" ;;
            7) download-game "snes" "Batman Forever (Europe).zip" ;;
            8) download-game "snes" "Battletoads & Double Dragon - The Ultimate Team (Europe).zip" ;;
            9) download-game "snes" "Battletoads in Battlemaniacs (Europe).zip" ;;
            10) download-game "snes" "Biker Mice from Mars (Europe).zip" ;;
            11) download-game "snes" "Blackhawk (Europe) (En,Fr,De).zip" ;;
            12) download-game "snes" "Brawl Brothers - Rival Turf! 2 (Europe).zip" ;;
            13) download-game "snes" "Captain America and the Avengers (Europe).zip" ;;
            14) download-game "snes" "Castlevania - Vampire's Kiss (Europe).zip" ;;
            15) download-game "snes" "Corn Buster (Europe) (Proto).zip" ;;
            16) download-game "snes" "Donkey Kong Country (Europe) (En,Fr,De) (Rev 1).zip" ;;
            17) download-game "snes" "Donkey Kong Country 2 - Diddy's Kong Quest (Europe) (En,Fr) (Rev 1).zip" ;;
            18) download-game "snes" "Donkey Kong Country 3 - Dixie Kong's Double Trouble! (Europe) (En,Fr,De).zip" ;;
            19) download-game "snes" "Doom (Europe).zip" ;;
            20) download-game "snes" "Double Dragon V - The Shadow Falls (Europe).zip" ;;
            21) download-game "snes" "Dragon - The Bruce Lee Story (Europe).zip" ;;
            22) download-game "snes" "Dungeon Master (Europe).zip" ;;
            23) download-game "snes" "Earthworm Jim (Europe).zip" ;;
            24) download-game "snes" "Earthworm Jim 2 (Europe).zip" ;;
            25) download-game "snes" "Final Fight (Europe).zip" ;;
            26) download-game "snes" "Flashback - The Quest for Identity (USA) (En,Fr,De).zip" ;;
            27) download-game "snes" "Harvest Moon (Europe).zip" ;;
            28) download-game "snes" "Hyper V-Ball (Europe).zip" ;;
            29) download-game "snes" "James Bond Jr. (Europe).zip" ;;
            30) download-game "snes" "Judge Dredd (Europe).zip" ;;
            31) download-game "snes" "Kirby's Dream Course (Europe).zip" ;;
            32) download-game "snes" "Kirby's Ghost Trap (Europe).zip" ;;
            33) download-game "snes" "Legend of Zelda, The - A Link to the Past (Europe).zip" ;;
            34) download-game "snes" "Lemmings (Europe).zip" ;;
            35) download-game "snes" "Mario Is Missing! (Europe).zip" ;;
            36) download-game "snes" "Mega Man 7 (Europe).zip " ;;
            37) download-game "snes" "Mega Man X3 (Europe).zip" ;;
            38) download-game "snes" "Micro Machines (Europe).zip" ;;
            39) download-game "snes" "Mortal Kombat II (Europe).zip" ;;
            40) download-game "snes" "Mortal Kombat 3 (Europe).zip" ;;
            41) download-game "snes" "Ms. Pac-Man (Europe).zip" ;;
            42) download-game "snes" "Pac-Attack (Europe).zip" ;;
            43) download-game "snes" "Pitfall - The Mayan Adventure (Europe).zip" ;;
            44) download-game "snes" "R-Type III - The Third Lightning (Europe).zip" ;;
            45) download-game "snes" "Secret of Evermore (Europe).zip" ;;
            46) download-game "snes" "Spider-Man & Venom - Maximum Carnage (Europe).zip" ;;
            47) download-game "snes" "Super Bomberman (Europe).zip" ;;
            48) download-game "snes" "Super Mario World (Europe) (Rev 1).zip" ;;
            49) download-game "snes" "Super Mario World 2 - Yoshi's Island (Europe) (En,Fr,De).zip" ;;
            50) download-game "snes" "Tetris Attack (Europe) (En,Ja).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function mugens() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  dialog  --sleep 1 --title "MUGEN EXIT HELP" --msgbox " 
----------------ATTENTION-----------------
-----THIS DOWNLOADS TO ....roms/mugens----
---------IF MUGEN DOES NOT SHOW-----------
-open pixel desktop
-go to home/pi/.emulationstation/es_systems.cfg
-open with text editor
-copy and  paste wine system  
On pasted wine system
-change "wine" to "mugen"
-change paths to .../roms/mugens
-save & exit 
-Reboot system " 0 0
 whiptail --clear --title "MUGEN DOWNLOAD MENU" --separate-output \
                --ok-button Download --cancel-button Back \
                --checklist "Choose:" 0 0 0 \
                "+" "MUGEN NAME                     FILE SIZE" off \
                "1" "Original MUGEN                      8 MB" off \
		"2" "Ultimate Sonic                    200 MB" off \
		 2>/tmp/results
    while read -r choice  
        do
        case $choice in
	       +) none ;;
               1) download-mugens "Retro-Devils_OG-Mugen.zip" ;;
	       2) download-mugens "Retro-Devils_Ultimate-Sonic-Mugen.zip" ;;
	       *) ;;
        esac
        done < /tmp/results
fi
}
pcgames() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "PC/DOS Downloader Help" --msgbox " 

-------------------------------
    PC/DOS DOWNLOADER HELP
-------------------------------
-You must have DosBox installed for this too work 
-lr-dosbox-pure is recommended to play all games.
-Downloads games to $HOME/RetroPie/roms/pc
-Games Includes a run.bat batch to launch from Retropie 
-Games are zipped. Devils Box downloads unzips and does all the work for ya.
-Thanks for using have a good day." 0 0

    whiptail --clear --title "PC/DOS DOWNLOAD MENU" --separate-output \
                --ok-button Download --cancel-button Back \
                --checklist "Choose:" 0 0 0 \
                "+" "GAME NAME                           FILE SIZE" off \
                "1" "Alleycat                                54KMB" off \
                "2" "Batman                                   16MB" off \
                "3" "Batman Returns                          180MB" off \
                "4" "Challenge of the Ancient Empires        666kB" off \
                "5" "Command & Conquer                       1.5GB" off \
                "6" "Command & Conquer Red Alert             2.1GB" off \
                "7" "Doom 1                                  7.4MB" off \
                "8" "Doom 1 - RogueLike                        3MB" off \
                "9" "Doom 2                                   15MB" off \
               "10" "Dragon's Lair                           4.3MB" off \
               "11" "Dragon's Lair 2                           4MB" off \
               "12" "Dragon's Lair 3                           4MB" off \
               "13" "Duke Nukem 2                            3.4MB" off \
               "14" "Duke Nukem 3D                            12MB" off \
               "15" "Dune 1                                  1.8MB" off \
               "16" "Dune 2                                  7.2MB" off \
               "17" "Dynablaster I                           810KB" off \
               "18" "Fable                                   124MB" off \
               "19" "Grand Theft Auto                        109MB" off \
               "20" "Hexxagon II                             649KB" off \
               "21" "Indy Car                                616KB" off \
               "22" "Ironman                                 540KB" off \
               "23" "Lemmings                                440KB" off \
               "24" "Locomotion                              753KB" off \
               "25" "Mech Warrior                            1.2MB" off \
               "26" "Micro Machines 2                       11.2MB" off \
               "27" "Mortal Kombat                          18.5MB" off \
               "28" "Mortal Kombat 2                        18.9MB" off \
               "29" "OpenBOR                                59.8MB" off \
               "30" "Prehistorik                             785KB" off \
               "31" "Prehistorik 2                             1MB" off \
               "32" "Rampage                                 194KB" off \
               "33" "Scorched Earth                          1.5MB" off \
               "34" "SimCity 2000 SE                          18MB" off \
               "35" "Snake 2                                  40KB" off \
               "36" "Star Trek Rites                          40MB" off \
               "37" "Star Wars Dark Forces                    67MB" off \
               "38" "Star Wars X Wing                         12MB" off \
               "39" "Street Rod 1                            689KB" off \
               "40" "Street Rod 2                            1.2MB" off \
               "41" "Super Solvers - Midnight Rescue         630KB" off \
               "42" "Super Solvers - Treasure Mountain       651KB" off \
               "43" "Super-Solvers - Outnumbered             564KB" off \
               "44" "Terep 1                                 149KB" off \
               "45" "Test Drive 1                            288KB" off \
               "46" "The Incredible Machine                  716KB" off \
               "47" "The Incredible Machine 2                4.9MB" off \
               "48" "The Lost Vikings                        1.6MB" off \
               "49" "The Oregon Trail 2                      635KB" off \
               "50" "The Oregon Trail 3                      3.8MB" off \
               "51" "The Settlers                           35.8MB" off \
               "52" "the Settlers 2                          642MB" off \
               "53" "Tie Fighter                              13MB" off \
               "54" "Volfied                                 717KB" off \
               "55" "WarCraft - Orcs and Humans              7.6MB" off \
               "56" "Warcraft 2                               45MB" off \
               "57" "Where in the World Is Carmen San Diego  479KB" off \
               "58" "Wolfeinstein 3D                         2.4MB" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
	       +) none ;;
               1) download-pcgames "Retro-Devils_Alleycat.zip";;
               2) download-pcgames "Retro-Devils_Batman.zip" ;;
               3) download-pcgames "Retro-Devils_Batman-Returns.zip" ;;
               4) download-pcgames "Retro-Devils_challenge-of-the-ancient-empires.zip" ;;
               5) download-pcgames "Retro-Devils_Command-And-Conquer.zip";;
               6) download-pcgames "Retro-Devils_Command-And-Conquer-Red-Alert.zip" ;;
               7) download-pcgames "Retro-Devils_Doom-1.zip" ;;
               8) download-pcgames "Retro-Devils_Doom-1-RogueLike.zip" ;;
               9) download-pcgames "Retro-Devils_Doom-2.zip" ;;
              10) download-pcgames "Retro-Devils_Dragons-Lair.zip" ;;
              11) download-pcgames "Retro-Devils_Dragons-Lair-2.zip" ;;
              12) download-pcgames "Retro-Devils_Dragons-Lair-3.zip" ;;
              13) download-pcgames "Retro-Devils_Duke-Nukem-2.zip" ;;
              14) download-pcgames "Retro-Devils_Duke-Nukem-3D.zip" ;;
              15) download-pcgames "Retro-Devils_Dune-1";;
              16) download-pcgames "Retro-Devils_Dune-2.zip" ;;
              17) download-pcgames "Retro-Devils_Dnyablaster I.zip" ;;
              18) download-pcgames "Retro-Devils_Fable.zip" ;;
              19) download-pcgames "Retro-Devils_GTA" ;;
              20) download-pcgames "Retro-Devils_Heroes2Gold.zip" ;;
              20) download-pcgames "Retro-Devils_Heroes3.zip" ;;
              20) download-pcgames "Retro-Devils_Heroes4.zip" ;;
              20) download-pcgames "Retro-Devils_Hexxagon-II.zip" ;;
              21) download-pcgames "Retro-Devils_Indy-Car.zip" ;;
              22) download-pcgames "Retro-Devils_Ironman.zip" ;;
              23) download-pcgames "Retro-Devils_Lemmings.zip" ;;
              24) download-pcgames "Retro-Devils_Locomotion.zip";;
              25) download-pcgames "Retro-Devils_Mechwarrior.zip"-3 ;;
              26) download-pcgames "Retro-Devils_Micro-Machines-2.zip";;
              27) download-pcgames "Retro-Devils_MortalKombat.zip" ;;
              28) download-pcgames "Retro-Devils_MortalKombat-2.zip" ;;
              29) download-pcgames "Retro-Devils_OPENBOR.zip";;
              30) download-pcgames "Retro-Devils_Prehistorik.zip" ;;
              31) download-pcgames "Retro-Devils_Prehistorik-2.zip" ;;
              32) download-pcgames "Retro-Devils_Rampage.zip" ;;
              33) download-pcgames "Retro-Devils_Scorched-Earth.zip" ;;
              34) download-pcgames "Retro-Devils_SimCity 2000 SE.zip" ;;
              35) download-pcgames "Retro-Devils_Snake 2.zip" ;;
              36) download-pcgames "Retro-Devils_startrek.zip" ;;
              37) download-pcgames "Retro-Devils_Star-Wars-Dark-Forces.zip" ;;
              38) download-pcgames "Retro-Devils_Star-Wars-X-Wing.zip.zip" ;;
              39) download-pcgames "Retro-Devils_Street-Rod.zip" ;;
              40) download-pcgames "Retro-Devils_Street-Rod-2.zip" ;;
              41) download-pcgames "Retro-Devils_Super-Solvers-Midnight-Rescue.zip" ;;
              42) download-pcgames "Retro-Devils_Super-Solvers-Outnumbered.zip" ;;
              43) download-pcgames "Retro-Devils_Super-Solvers-Treasure--Mountain.zip" ;;
              44) download-pcgames "Retro-Devils_Terep-1.zip" ;;
              45) download-pcgames "Retro-Devils_Test-Drive-1.zip" ;;
              46) download-pcgames "Retro-Devils_The-Incredible-Machine.zip" ;;
              47) download-pcgames "Retro-Devils_The-Incredible-Machine-2.zip" ;;
              48) download-pcgames "Retro-Devils_The-Lost-Vikings.zip" ;;
              49) download-pcgames "Retro-Devils_The-Oregan-Trail-2.zip" ;;
              50) download-pcgames "Retro-Devils_The-Oregan-Trail-3.zip" ;;
              51) download-pcgames "Retro-Devils_TheSettlers.zip";;
              52) download-pcgames "Retro-Devils_TheSettlers2.zip";;
              53) download-pcgames "Retro-Devils_Tiefighter.zip" ;;
              54) download-pcgames "Retro-Devils_Volfied.zip" ;;
              55) download-pcgames "Retro-Devils_WarCraft-Orcs-and-Humans.zip" ;;
              56) download-pcgames "Retro-Devils_WarCraft-2.zip" ;;
              57) download-pcgames "Retro-Devils_Where-in-the-World-Is-Carmen-San-Diego.zip" ;;
              58) download-pcgames "Retro-Devils_Wolfeinstein-3D" ;;
               *) ;;
        esac
        done < /tmp/results
fi
}
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
-Downloads games to $HOME/RetroPie/roms/wine/games/.installs
-Games Includes a .sh script to launch from Retropie 
-Games are zipped. Devils Box downloads unzips and does all the work for ya.
-If you move game folder, change .sh script accordingly.
-Thanks for using have a good day." 0 0

    whiptail --clear --title "WINE DOWNLOAD MENU" --separate-output \
                --ok-button Download --cancel-button Back \
                --checklist "Choose:" 0 0 0 \
                "+" "GAME NAME                          FILE SIZE" off \
                "1" "Age Of Empires                         215MB" off \
                "2" "Age Of Empires 2                       6.1GB" off \
                "3" "Angry Birds                              91MB" off \
                "4" "Angry Birds Seasons                    180MB" off \
                "5" "Angry Birds Star Wars 2                110MB" off \
                "6" "Command & Conquer Generals+Zero Hour   2.7GB" off \
                "7" "Cuphead                                 11GB" off \
                "8" "Delta Force Xtreme                     843MB" off \
                "9" "Diablo 2                               1.8GB" off \
               "10" "Fallout                                535MB" off \
               "11" "Fallout 2                              555MB" off \
               "12" "Fallout Tactics                        1.5GB" off \
               "13" "Harry Potter Prisoner of Azkaban       1.5GB" off \
               "14" "Heroes Of might And Magic 2 Gold       738MB" off \
               "15" "Heroes Of might And Magic 3            426MB" off \
               "16" "Heroes Of might And Magic 4              1GB" off \
               "17" "Hydro Thunder                           66MB" off \
               "18" "Silent Hill 2 Director's Cut           2.3GB" off \
               "19" "Silent Hill 3                          4.8GB" off \
               "20" "Silent Hill 4 The Room                 3.4GB" off \
               "21" "Spooky Castle                           10MB" off \
               "22" "Starcraft                              1.2GB" off \
               "23" "Star Wars Battlefront                  2.3GB" off \
               "24" "Street of Rage Remake v5.2             605MB" off \
               "25" "Teenage Muntant Ninja Turtles          1.3GB" off \
               "26" "The House Of The Dead                  299MB" off \
               "27" "The House Of The Dead 2                579MB" off \
               "28" "The Settlers                            26MB" off \
               "29" "The Simpsons Hit & Run                 1.8GB" off \
               "30" "Unreal Anthology                       8.8GB" off \
               "31" "Warcraft 3                             1.9GB" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
	       +) none ;;
               1) download-winegames "Retro-Devils_AoE.zip"; game_fix "Age-of-Empires-no-cd-error-fix.reg" ;;
               2) download-winegames "Retro-Devils_AoE2.zip" ;;
               3) download-winegames "Retro-Devils_AngryBirds.zip" ;;
               4) download-winegames "Retro-Devils_AngryBirdsSeasons.zip" ;;
               5) download-winegames "Retro-Devils_AngryBirdsStarWars2.zip" ;;
               6) download-winegames "Retro-Devils_CNCGENS-ZH.zip"; game_fix "Command-And-Conquer-fix.reg" ;;
               7) download-winegames "Retro-Devils_Cuphead.zip" ;;
               8) download-winegames "Retro-Devils_DeltaForceXtreme.zip" ;;
               9) download-winegames "Retro-Devils_Diablo2.zip" ;;
              10) download-winegames "Retro-Devils_Fallout.zip" ;;
              11) download-winegames "Retro-Devils_Fallout2.zip" ;;
              12) download-winegames "Retro-Devils_FalloutTactics.zip" ;;
              13) download-winegames "Retro-Devils_HPPOA.zip" ;;
              14) download-winegames "Retro-Devils_Heroes2Gold.zip" game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
              15) download-winegames "Retro-Devils_Heroes3.zip" game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
              16) download-winegames "Retro-Devils_Heroes4.zip" game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
              17) download-winegames "Retro-Devils_HydroThunder.zip" ;;
              18) download-winegames "Retro-Devils_SilentHill2DC.zip" ;;
              19) download-winegames "Retro-Devils_SilentHill3.zip" ;;
              20) download-winegames "Retro-Devils_SilentHill4TR.zip"; game_fix "Silent-Hill-4-The-Room-Fix.reg" ;;
              21) download-winegames "Retro-Devils_Spooky-Castle.zip" ;;
              22) download-winegames "Retro-Devils_Starcraft.zip" ;;
              23) download-winegames "Retro-Devils_SWBF.zip" ;;
              24) download-winegames "Retro-Devils_Strees-of-Rage-Remake.zip" ;;
              25) download-winegames "Retro-Devils_TMNT.zip" ;;
              26) download-winegames "Retro-Devils_THOTD.zip" ;;
              27) download-winegames "Retro-Devils_THOTD2.zip" ;;
              28) download-winegames "Retro-Devils_TheSettlers.zip" ;;
              29) download-winegames "Retro-Devils_TheSimpsonsHitandRun.zip" ;;
              30) download-winegames "Retro-Devils_UNREAL.zip"; game_fix "Unreal-Anthology-fix.reg" ;;
              31) download-winegames "Retro-Devils_Warcraft3.zip"-3 ;;
               *) ;;
        esac
        done < /tmp/results
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
#     PEGASUS HELPER FUNCTION      #
function pegasus_help() {
bash "$HOME"/Devils-Box/scripts/Pegasus-Helper.sh
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
      - "---------------------" \
      4 "Devils Box Tools  " \
      - "---------------------" \
      5 "Diablos Arcade Tools " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) audio ;;
    2) emu_tools ;;
    3) hardware_tools ;;
    -) none ;;
    4) db_tools ;;
    5) da_tools ;;
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
      --ok-label Select --cancel-label Back \
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 70 50 \
      + "_____________________Visual Tools__________________________ " \
      1 "Emulation Station Themes---------------------------Retropie " \
      2 "Hursty's Themes--------------------------------------Hursty " \
      3 "Devils Themes and Artwork----------------------Retro Devils " \
      4 "Retro Scrapey----------------------------------Retro Devils " \
      5 "Frontend Switcheroo----------------------------Retro Devils " \
      6 "Pegasus FE Helper------------------------------Retro Devils " \
      - "___________________Audio/Mixed Tools_______________________ " \
      7 "Apply No Audio Fix--------------------------------Anonymous " \
      8 "Install I.M.P-----------------------------------RapiEdwin08 " \
      9 "Install T.A.M.P.O--------------------------------thepitster " \
      - "_____________________ Information__________________________ " \
      10 "I.M.P-------------Integrated Music Player------------------ " \
      11 "T.A.M.P.O --------Theme And Music Plus Overlay------------- " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) hursty-themes ;;
    2) es-themes ;;
    3) devil-themes ;;
    4) retro_scrapey ;;
    5) fe_switch ;;
    6) pegasus_help ;;
    -) none ;;
    7) no-audio ;;
    8) imp ;;
    9) tampo ;;
    10) imp-info ;;
    11) tampo-info ;;
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
      6 "BIOS Files------------------------Retro Devils" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils-ex ;;
    2) rpi-menu ;;
    3) mugen ;;
    4) pikiss ;;
    5) sm3 ;;
    6) download-bios ;;
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
  if [ -d "$HOME/piKiss/" ]; then bash $HOME/piKiss/piKiss.sh;
  else
    cd $HOME/
    curl -sSL https://git.io/JfAPE | bash
    bash $HOME/piKiss/piKiss.sh
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
mkdir home/pi/.emulationstation/backups/
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
echo ${rst}$(tput setaf 1) "This Wil Clear You ES Controller Mappings"
read -n 1 -s -r -p "Press any key to Continue"
sudo rm "$HOME"/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
}

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
  cat "$HOME"/Devils-Box/files/HELP-DB.txt
read -n 1 -s -r -p "Press any key to Continue"
}
#--------------------------_#
#HELP WITH DEVILS BOX #
#---------------------------#
function about_db() {
  clear
  cat "$HOME"/Devils-Box/files/INFO.txt
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
#  REBOOT FUNCTION  #
#-------------------#
function system_reboot() {
clear
read -n 1 -s -r -p "Press any key to Reboot"
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
