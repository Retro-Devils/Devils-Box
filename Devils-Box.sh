#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="DEVILS BOX"
##-------------------------##
##       HOST SITES        ##
##-------------------------##

#--------ART HOSTS----------#
ART_HOST="https://archive.org/download/devils-box-media-alt"
#ART_HOST2=
#ART_HOST3=
#ART_HOST4=

#--------GAME HOSTS---------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/retro-devils-winegames"
#HOST4=
#HOST5=
#HOST6=

###  INTRO VIDEO     ###
clear
omxplayer ~/Devils-Box/files/intro.mp4
###   NET CHECKER    ###
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  echo "Online ... Downloads Sections Are Availible"
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
    choice=$(dialog --backtitle "$BACKTITLE" --title "|DEVILS BOX 2.3|----|1/19/22|" \
      --ok-label Select --cancel-label Exit-Devils-Box \
      --menu "--DEVILS BOX.......................MAIN MENU--" 25 50 40 \
      - "----Downloaders----" \
      1 "Artwork Packs" \
      2 "Console Packs" \
      3 "Hacked Packs" \
      + "-------Tools-------" \
      4 "Tool Box" \
      5 "Reboot System" \
      6 "Show Disk Space" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) artwork ;;
    2) consoles ;;
    3) hacked ;;
    4) tool_box ;;
    5) system_reboot ;;
    6) show_disk ;;
    -) none ;;
    +) nono ;;
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
                  --PRESS A/ENTER TO DOWNLOAD.......***MEANS COMING SOON" 40 75 60 \
      1 "Amiga Artwork            [*]box  [*]cart  [*]snap  [*]wheel" \
      2 "AmigaCD32 Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
      3 "Arcadia Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      4 "***Astrocade Artwork***  [ ]box  [ ]cart  [*]snap  [ ]wheel" \
      5 "***Atari800 Artwork***   [*]box  [*]cart  [*]snap  [ ]wheel" \
      6 "***Atari2600 Artwork***  [*]box  [*]cart  [*]snap  [*]wheel" \
      7 "***Atari5200 Artwork***  [*]box  [*]cart  [*]snap  [*]wheel" \
      8 "Atari7800 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      9 "AtariLynx Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      10 "***AtariST Artwork***    [*]box  [*]cart  [*]snap  [ ]wheel" \
      11 "Atomiswave               [*]box  [*]cart  [*]snap  [*]wheel" \
      12 "Commadore64 Artwork      [*]box  [*]cart  [*]snap  [*]wheel" \
      13 "Coleco Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      14 "***Daphne Artwork***     [*]box  [*]cart  [*]snap  [ ]wheel" \
      15 "Dragon32 Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      16 "Dreamcast Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      17 "Electron                 [ ]box  [ ]cart  [*]snap  [*]wheel" \
      18 "Famicon Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      19 "FDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      20 "Game & Watch Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      21 "***Gameboy Artwork***    [*]box  [*]cart  [*]snap  [ ]wheel" \
      22 "***GBA Artwork***        [*]box  [*]cart  [*]snap  [ ]wheel" \
      23 "***GBC Artwork***        [*]box  [*]cart  [*]snap  [ ]wheel" \
      24 "***Gamegear Artwork***   [*]box  [*]cart  [*]snap  [ ]wheel" \
      25 "***Genesis Artwork***    [*]box  [*]cart  [*]snap  [ ]wheel" \
      26 "Intellivision Artwork    [*]box  [ ]cart  [ ]snap  [*]wheel" \
      27 "***Lightgun Artwork***   [*]box  [*]cart  [*]snap  [ ]wheel" \
      28 "MarkIII Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      29 "***Mastersystem Artwork**[*]box  [*]cart  [*]snap  [ ]wheel" \
      30 "***Megadrive Artwork***  [*]box  [*]cart  [*]snap  [ ]wheel" \
      31 "MSX2 Artwork             [*]box  [*]cart  [*]snap  [*]wheel" \
      32 "***N64 Artwork***        [*]box  [*]cart  [*]snap  [ ]wheel" \
      33 "Naomi Artwork            [*]box  [*]cart  [*]snap  [*]wheel" \
      34 "NDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      35 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      36 "***NES Artwork***        [*]box  [ ]cart  [*]snap  [ ]wheel" \
      37 "NGPC Artwork             [*]box  [ ]cart  [*]snap  [ ]wheel" \
      38 "Openbor Artwork          [*]box  [ ]cart  [*]snap  [*]wheel" \
      39 "***Oric Artwork***       [*]box  [*]cart  [*]snap  [ ]wheel" \
      40 "***PC Engine Artwork***  [*]box  [*]cart  [*]snap  [ ]wheel" \
      41 "PS1 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      42 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      43 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
      44 "***SNES Artwork***       [*]box  [*]cart  [*]snap  [ ]wheel" \
      45 "***TG 16 Artwork***      [*]box  [*]cart  [*]snap  [ ]wheel" \
      46 "Wine Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      47 "***Wonderswan Artwork*** [*]box  [*]cart  [*]snap  [ ]wheel" \
      48 "zMachine Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) download-art "amiga" "boxart" "cartart" "snap" "wheel" ;;
    2) download-art "amigacd32" "media" ;;
    3) download-art "arcadia" "media" ;;
    4) download-art "astrocade" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    5) download-art "atari800" "boxart" "cartart" "snap" ;;
    6) download-art "atari2600" "boxart" "cartart" "snap" "wheel" ;;
    7) download-art "atari5200" "boxart" "cartart" "snap" "wheel" ;;
    8) download-art "atari7800" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    9) download-art "atarilynx" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    10) download-art "atarist" "boxart" "cartart" "snap" ;;
    11) download-art "atomiswave" "boxart" "flyer" "snap" "wheel" ;;
    12) download-art "c64" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    13) download-art "coleco" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    14) download-art "daphne" "boxart" "cartart" "snap" ;;
    15) download-art "dragon32" "media" ;;
    16) download-art "dreamcast" "images" "videos" ;;
    17) download-art "electron" "snap" "wheel" ;;
    18) download-art "famicon" "media" ;;
    19) download-art "fds" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    20) download-art "gameandwatch" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    21) download-art "gb" "boxart" "cartart" "snap" ;;
    22) download-art "gba" "boxart" "cartart" "snap" ;;
    23) download-art "gbc" "boxart" "cartart" "snap" ;;
    24) download-art "gg" "boxart" "cartart" "snap" ;;
    25) download-art "genesis" "boxart" "cartart" "snap" ;;
    26) download-art "intellivision" "boxart" "wheel" ;;
    27) download-art "lightgun" "boxart" "cartart" "snap" ;;
    28) download-art "markiii" "boxart" "cartart" "snap" ;;
    29) download-art "mastersystem" "boxart" "cartart" "snap" ;;
    30) download-art "megadrive" "boxart" "cartart" "snap" ;;
    31) download-art "msx2" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    32) download-art "n64" "boxart" "cartart" "snap" "wheel" ;;
    33) download-art "naomi" "boxart" "flyer" "snap" "wheel" ;;
    34) download-art "nds" "boxart" "cartart" "snap" ;;
    35) download-art "neogeo" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    36) download-art "nes" "boxart" "cartart" "snap" ;;
    37) download-art "ngpc" "boxart" "cartart" "flyer" "snap" "wheel" ;;
    38) download-art "openbor" "boxart" "cartart" "snap" ;;
    39) download-art "oric" "boxart" "cartart" "snap" ;;
    40) download-art "pc-engine" "boxart" "cartart" "snap" ;;
    41) download-art "ps1" "boxart" "cartart" "snap" ;;
    42) download-art "sega32x" "boxart" "cartart" "snap" ;;
    43) download-art "segacd" "boxart" "cartart" "snap" ;;
    44) download-art "snes" "boxart" "cartart" "snap" ;;
    45) download-art "tg16" "boxart" "cartart" "snap" ;;
    46) download-art "wine" "boxart" "cartart" "snap" ;;
    47) download-art "wonderswan" "boxart" "cartart" "snap" ;;
    48) download-art "zmachine" "boxart" "cartart" "snap" ;;
    *) break ;;
    esac
  done
fi
}

function download-art() {
  for type in "$@"; do
    if [ "${type}" != "${1}" ]; then
      wget -m -r -np -nH -nd -R "index.html" ${ART_HOST}/"${1}"/"${type}"/ -P ~/RetroPie/roms/"${1}"/"${type}" -erobots=off
    fi
  done
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
      --menu "PRESS A/ENTER TO DOWNLOAD PACK..........****MEANS COMING SOON" 40 75 60 \
      1 "Amiga                            300MB      340 GAMES" \
      2 "Arcadia                          201KB       47 GAMES" \
      3 "AmigaCD                          461MB      133 GAMES" \
      4 "Arcade                           8.4GB     2361 GAMES" \
      5 "AmstradPC                        700MB     3624 GAMES" \
      6 "Atari800                         770MB      650 GAMES" \
      7 "Atari2600                        2.6MB      615 GAMES" \
      8 "Atari5200                         70MB      080 GAMES" \
      9 "Atari7800                          2MB       54 GAMES" \
      10 "AtariLynx                         10MB       77 GAMES" \
      11 "Atomiswave                       2.5GB       24 GAMES" \
      12 "Commadore64                      9.5MB      144 GAMES" \
      13 "Colecovision                     2.7MB      146 GAMES" \
      14 "Dragon32                         897KB       51 GAMES" \
      15 "Dreamcast                       12.7GB       19 GAMES" \
      16 "Electron                         2.5MB      152 GAMES" \
      17 "Famicon                           19MB      169 GAMES" \
      18 "FDS                                2MB       43 GAMES" \
      19 "Game and Watch                    48MB       53 GAMES" \
      20 "Gameboy                           42MB      565 GAMES" \
      21 "Gameboy Advance                  3.4GB     1006 GAMES" \
      21 "Gameboy Color                    232MB      538 GAMES" \
      23 "Gamegear                          42MB      249 GAMES" \
      24 "Intellivision                      1MB       62 GAMES" \
      25 "****Lightgun****                  ??GB       ?? GAMES" \
      26 "MarkIII                            6MB       58 GAMES" \
      27 "Mastersystem                      35MB      280 GAMES" \
      28 "Megadrive/Genesis                409MB      561 GAMES" \
      29 "MSX                               30MB      708 GAMES" \
      30 "MSX 2                           6.24MB       83 GAMES" \
      31 "****Mugen****                    9.2GB      009 GAMES" \
      32 "Neo Geo Pocket Color              21MB       40 GAMES" \
      33 "Nintendo 64                      5.0GB      338 GAMES" \
      34 "Naomi                            1.5GB       15 GAMES" \
      35 "Nintendo DS                        4GB      171 GAMES" \
      36 "NeoGeo                           2.3GB      142 GAMES" \
      37 "Nintendo Entertainment System    100MB      850 GAMES" \
      38 "Openbor                         1.84GB       37 GAMES" \
      39 "Oric                             5.4MB      136 GAMES" \
      40 "Pokemini                         5.4MB       44 GAMES" \
      41 "PS1                                3GB       29 GAMES" \
      42 "Sega Saturn                      108GB      303 GAMES" \
      43 "Sega Staurn Japan                3.9GB       18 GAMES" \
      44 "ScummVM                          2.5GB       21 GAMES" \
      45 "Sega32x                           63MB       37 GAMES" \
      46 "SegaCD                            11GB       52 GAMES" \
      47 "Super Famicon                    475MB      487 GAMES" \
      48 "SNES                             500MB      500 GAMES" \
      49 "SuperGraffiix                    2.4MB        5 GAMES" \
      50 "Turbo Graffix 16                  20MB       94 GAMES" \
      51 "Vectrex                          201KB       20 GAMES" \
      52 "VideoPAC                         430KB       99 GAMES" \
      53 "Virtual Boy                        8MB       24 GAMES" \
      54 "Dreamcast VMU                      3MB      115 GAMES" \
      55 "Wine                          SUB-MENU        9 GAMES" \
      56 "Wonderswan Color                 116MB       84 GAMES" \
      57 "Sinclair X1                      7.6MB       69 GAMES" \
      58 "Sharp X68000                     504MB      418 GAMES" \
      59 "ZMachine                           4MB       30 GAMES" \
      60 "ZXSpectrum                        38MB     1111 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) download-packs "amiga" ;;
    2) download-packs "arcadia" ;;
    3) download-packs "amigacd" ;;
    4) download-packs "arcade" ;;
    5) download-packs "amstradpc" ;;
    6) download-packs "atari800" ;;
    7) download-packs "atari2600" ;;
    8) download-packs "atari5200" ;;
    9) download-packs "atari7800" ;;
    10) download-packs "atarilynx" ;;
    11) download-packs "atomiswave" ;;
    12) download-packs "c64" ;;
    13) download-packs "colecovision" ;;
    14) download-packs "dragon32" ;;
    15) download-packs "dreamcast" ;;
    16) download-packs "electron" ;;
    17) download-packs "famicon" ;;
    18) download-packs "fds" ;;
    19) download-packs "gameandwatch" ;;
    20) download-packs "gb" ;;
    21) download-packs "gba" ;;
    22) download-packs "gbc" ;;
    23) download-packs "gg" ;;
    24) download-packs "intellivision" ;;
    25) download-packs "lightgun" ;;
    26) download-packs "mark3" ;;
    27) download-packs "mastersystem" ;;
    28) download-packs "megadrive" ;;
    29) download-packs "msx" ;;
    30) download-packs "msx2" ;;
    31) download-packs "mugen" ;;
    32) download-packs "ngpc" ;;
    33) download-packs "n64" ;;
    34) download-packs "naomi" ;;
    35) download-packs "nds" ;;
    36) download-packs "neogeo" ;;
    37) download-packs "nes" ;;
    38) download-packs "openbor" ;;
    39) download-packs "oric" ;;
    40) download-packs "pokemini" ;;
    41) download-packs "ps1" ;;
    42) download-packs "saturn" ;;
    43) download-packs "saturn-japan" ;;
    44) download-packs "scummvm" ;;
    45) download-packs "sega32" ;;
    46) download-packs "segacd" ;;
    47) download-packs "sfs" ;;
    48) download-packs "snes" ;;
    49) download-packs "supergrafx" ;;
    50) download-packs "tg16" ;;
    51) download-packs "vectrex" ;;
    52) download-packs "videopac" ;;
    53) download-packs "virtual-boy" ;;
    54) download-packs "vmu" ;;
    55) wine "wine" ;;
    56) download-packs "wonderswan" ;;
    57) download-packs "x1" ;;
    58) download-packs "x68000" ;;
    59) download-packs "zmachine" ;;
    60) download-packs "zxspectrum" ;;
    *) break ;;
    esac
   done
fi
}

function download-packs() {
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P ~/RetroPie/roms/"${1}" -erobots=off
}
function download-packs-alt() {
wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/"${1}"/ -P ~/RetroPie/roms/"${1}" -erobots=off
}
#--------------------------------#
#      WINE SUB MENU FUNCTIONS   #
#--------------------------------#
function wine() {
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
-Downloads most games to ~/RetroPie/roms/wine/games/.installs
-Games Includes a exe or.sh script to launch from Retropie 
-Games are zipped. Devils Box downloads unzips and does all the work for ya.
-If you move game folder change .sh script accordingly.
-Thanks for using have a good day." 0 0

    whiptail --clear --title "WINE DOWNLOAD MENU" --separate-output --checklist "Choose:" 0 0 0 \
                "1" "Age Of Empires                    215MB" off \
                "2" "Age Of Empires 2                  6.1GB" off \
                "3" "Command & Conquer TS              1.3GB" off \
                "4" "Diablo 2                          1.8GB" off \
                "5" "Fallout                           535MB" off \
                "6" "Fallout 2                         555MB" off \
                "7" "Fallout Tactics                   1.5GB" off \
                "8" "Starcraft                         1.2GB" off \
                "9" "Warcraft 3                        1.9GB" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
                1) aoe ;;
                2) aoe-2 ;;
                3) cncts  ;;
                4) diablo-2 ;;
                5) fallout ;;
                6) fallout-2 ;;
                7) fallout-tactics ;;
                8) starcraft ;;
                9) warcraft-3 ;;
                *) ;;
        esac
        done < /tmp/results
fi
}
function aoe() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_AoE.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_AoE.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/aoe.sh -f ~/RetroPie/roms/wine/Age-Of-Empires.sh
cp ~/RetroPie/roms/wine/games/aoee.sh -f ~/RetroPie/roms/wine/Age-Of-Empires-Rise-of-Rome.sh
chmod 755 ~/RetroPie/roms/wine/Age-Of-Empires.sh
chmod 755 ~/RetroPie/roms/wine/Age-Of-Empires-The-Rise-Of-Rome.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_AoE.zip
}
function aoe-2() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_AoE2.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_AoE2.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/aoe2.sh -f ~/RetroPie/roms/wine/Age-Of-Empires-2.sh
cp ~/RetroPie/roms/wine/games/aoe2.sh -f ~/RetroPie/roms/wine/Age-Of-Empires-2-The-Conquerors.sh
chmod 755 ~/RetroPie/roms/wine/Age-Of-Empires-2.sh
chmod 755 ~/RetroPie/roms/wine/Age-Of-Empires-2-The-Conquerors.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_AoE2.zip
}
function cncts() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_CNCTS.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_CNCTS.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/cncts.sh -f ~/RetroPie/roms/wine/Command-&-Conquer-TS.sh
chmod 755 ~/RetroPie/roms/wine/Command-&-Conquer-TS.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_CNCTS.zip
}
function diablo-2() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Diablo2.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_Diablo2.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/diablo2.sh -f ~/RetroPie/roms/wine/Diablo-2.sh
chmod 755 ~/RetroPie/roms/wine/Diablo-2.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_Diablo2.zip
}
function fallout() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Fallout.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_Fallout.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/fallout.sh -f ~/RetroPie/roms/wine/Fallout.sh
chmod 755 ~/RetroPie/roms/wine/Fallout.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_Fallout.zip
}
function fallout-2() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Fallout2.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_CNCTS.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/fallout2.sh -f ~/RetroPie/roms/wine/Fallout-2.sh
chmod 755 ~/RetroPie/roms/wine/Fallout-2.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_Fallout2.zip
}
function fallout-tactics() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_FalloutTactics.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_FalloutTactics.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/fallouttactics.sh -f ~/RetroPie/roms/wine/Fallout-Tactics.sh
chmod 755 ~/RetroPie/roms/wine/Fallout-Tactics.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_FalloutTactics.zip
}
function starcraft() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Starcraft.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_Starcraft.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/starcraft.sh -f ~/RetroPie/roms/wine/Starcraft.sh
chmod 755 ~/RetroPie/roms/wine/Starcraft.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_Starcraft.zip
}
function warcraft-3() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Warcraft3.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_Warcraft3.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/warcraft3.sh -f ~/RetroPie/roms/wine/Warcraft-3.sh
chmod 755 ~/RetroPie/roms/wine/Warcraft-3.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_Warcraft3.zip
}
function warcraft-3() {
wget https://archive.org/download/retro-devils-winegames/Retro-Devils_Warcraft3.zip -P ~/RetroPie/roms/wine
unzip -o ~/RetroPie/roms/wine/Retro-Devils_Warcraft3.zip -d ~/RetroPie/roms/wine/games/
cp ~/RetroPie/roms/wine/games/warcraft3.sh -f ~/RetroPie/roms/wine/Warcraft-3.sh
chmod 755 ~/RetroPie/roms/wine/Warcraft-3.sh
sudo rm -r ~/RetroPie/roms/wine/Retro-Devils_Warcraft3.zip
}
###------------------------------###
### HACKED PACKS MENU FUNCTIONS  ###			###HACKED PACKS MENU###
###------------------------------###
function hacked() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED CONSOLES DOWNLOAD MENU " \
      --ok-label Download --cancel-label Main-Menu \
      --menu " PRESS A/ENTER TO DOWNLOAD PACK" 40 75 60 \
      1 "Gameboy Advance Hacks                  195MB     26 GAMES " \
      2 "Gameboy Hacks                            4MB     19 GAMES " \
      3 "Genesis Hacks                          197MB    191 GAMES " \
      4 "Gamegear Hacks                           1MB      4 GAMES " \
      5 "NES Hacks                              962KB      6 GAMES " \
      6 "SNES Hacks                              40MB      37 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
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

###------------------------------###
###    TOOL BOX MENU FUNCTIONS   ###
###------------------------------###
function tool_box() {
  while true; do 
  local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " TOOL BOX MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT TOOLSET AND PRESS A  " 30 50 50 \
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
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 50 50 \
      1 "T.A.M.P.O  (Theme & Music Plus Overlay)        thepitster " \
      2 "Emulation Station Themes                         Retropie " \
      3 "No Audio Fix                                    Anonymous " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) tampo ;;
    2) es-themes ;;
    3) no-audio ;;
    *) break ;;
    esac
  done
}
function tampo() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "Wine Downloader Help" --msgbox " 
OFFLINE!!!

Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
curl -sSL https://git.io/JDfjg | bash
fi
}
function es-themes () {
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch /home/pi/RetroPie/retropiemenu/esthemes.rp
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
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 50 50 \
      1 "Devils Retropie Extras                          Retro Devils" \
      2 "RetroPie Setup Menu                                Retro Pie" \
      3 "PIKISS                                         Jose Cerrejon" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils-ex ;;
    2) rpi-menu ;;
    3) pikiss ;;
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
  sudo ~/RetroPie-Setup/retropie_setup.sh
}
function pikiss() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  if [ -d "~/piKiss/" ]; then sudo home/pi/piKiss/piKiss.sh;
  else curl -sSL https://git.io/JfAPE | bash 
  fi
fi
}

###---------------------------------###
###   HARDWARE TOOLS MENU FUNCTIONS    ###
###---------------------------------###
function hardware_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " HARDWARE TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "CHOOSE KIND OF TOOL " 30 75 60 \
      1 "Cases Tools " \
      2 "Clear Controller Conifg " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) cases ;;
    2) clear_controller ;;
    *) break ;;
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
function cases() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "Wine Downloader Help" --msgbox " 
OFFLINE!!!

Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " CASES TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL PRESS TO APPLY/INSTALL " 30 50 50 \
      1 "Argon1 Case Install & Config " \
      2 "NESPI Case Install         " \
      2 "NESPI Case Uninstall       " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) argon1 ;;
    2) nespi ;;
    3) nespi_u ;;
    *) break ;;
    esac
  done
fi
}

function argon1() {
  curl https://download.argon40.com/argon1.sh | bash &&
    bash /usr/bin/argonone-config
}

function nespi() {
  clear
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
      --menu "SELECT AND APPLY TOOL" 30 50 50 \
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
  cat ~/Devils-Box/files/HELP-DB.txt
  sleep 20
}
#--------------------------_#
#HELP WITH DEVILS BOX #
#---------------------------#
function about_db() {
  clear
  cat ~/Devils-Box/files/INFO.txt
  sleep 20
}
#--------------------------_#
#REMOVE DEVILS BOX #
#---------------------------#
function remove_db() {
  sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh
  sudo rm -R ~/Devils-Box
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
  sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh
  cd ~/Devils-Box
  git pull -f
  cp ~/Devils-Box/Devils-Box.sh -f ~/RetroPie/retropiemenu/
  sudo cp ~/Devils-Box/files/box -f /usr/local/bin/
  sudo cp ~/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
  sudo chmod 755 /usr/local/bin/box
  sudo chmod 755 /usr/local/bin/Devils-Box
  chmod 755 ~/RetroPie/retropiemenu/Devils-Box.sh
  sleep 1
  if [ -d "$HOME/RetroPie/retropiemenu/Devils-Box/" ]; then sudo rm -fR $HOME/RetroPie/retropiemenu/Devils-Box/; fi
  bash ~/RetroPie/retropiemenu/Devils-Box.sh
  exit 1
fi
}
###---------------------------------###
###   MISC DEVILS BOX FUNCTIONS     ###
###---------------------------------###

#----------------------------#
# SHOW DISK SPACE FUNCTION   #
#----------------------------#
function show_disk() {
  clear 
  sleep 1
  free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
  df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB(%s)\n", $3,$2,$5}'
  top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
  cpu_temp=$(</sys/class/thermal/thermal_zone0/temp)
  cpu_temp=$(($cpu_temp / 1000))
  echo Temp: $cpu_tempÂ°C
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
