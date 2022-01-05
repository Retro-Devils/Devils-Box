#!/bin/bash
export NCURSES_NO_UTF8_ACS=1

#----------------------------------------#
#-----------HOST SITES-------------------#


##------------ART HOSTS-----------------##
ART_HOST="https://archive.org/download/devils-box-media"
#ART_HOST1=
#ART_HOST2=
#ART_HOST4=

##-------------GAME HOSTS---------------##
HOST1="https://archive.org/download/the-devils-box_202112"
HOST2="https://archive.org/download/the-devil-box"
#HOST3=
#HOST4=

###-----------------------###
### MAIN MENU FUNCTIONS   ###
###-----------------------###

function main_menu() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " REMOTE DEVILS BOX " \
      --ok-label Select --cancel-label Exit-Devils-Box \
      --menu "DEVILS BOX MAIN MENU" 25 50 40 \
      1 "Artwork Packs" \
      2 "Console Packs" \
      3 "Hacked Packs" \
      4 "Tool Box" \
      5 "Reboot System" \
      6 "Show Disk Space" \
      7 "Run Devils Box Installer " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) artwork      ;;
    2) consoles     ;;
    3) hacked       ;;
    4) tool_box     ;;
    5) system_reboot;;
    6) show_disk    ;;
    7) db_install   ;;
    
    *) break ;;
    esac
  done
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
      1 "Amiga Artwork            [*]box  [*]cart  [*]snap  [*]wheel" \
      2 "AmigaCD Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      3 "Arcadia Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      4 "Astrocade Artwork        [ ]box  [ ]cart  [*]snap  [ ]wheel" \
      5 "Atari800 Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      6 "Atari2600 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      7 "Atari5200 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      8 "Atari7800 Artwork        [ ]box  [*]cart  [*]snap  [*]wheel" \
      9 "AtariLynx Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
      10 "AtariST Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      11 "Commadore64 Artwork      [*]box  [*]cart  [*]snap  [ ]wheel" \
      12 "Coleco Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
      13 "Daphne Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
      14 "Dragon32 Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      15 "Dreamcast Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
      16 "Famicon Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      17 "Game & Watch Artwork     [*]box  [*]cart  [*]snap  [ ]wheel" \
      18 "Gameboy Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      19 "GBA Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
      20 "GBC Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
      21 "Gamegear Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      22 "Genesis Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      23 "Intellivision Artwork    [*]box  [*]cart  [*]snap  [ ]wheel" \
      24 "Lightgun Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      25 "MarkIII Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      26 "Mastersystem Artwork     [*]box  [*]cart  [*]snap  [ ]wheel" \
      27 "Megadrive Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
      28 "Mugen Artwork            [*]box  [*]cart  [*]snap  [ ]wheel" \
      29 "N64 Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
      30 "Naomi Artwork            [*]box  [*]cart  [*]snap  [ ]wheel" \
      31 "NDS Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
      32 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
      33 "NES Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
      34 "Openbor Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      35 "Oric Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      36 "PC Engine Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
      37 "PS1 Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
      38 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      39 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
      40 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      41 "TG 16 Artwork            [*]box  [*]cart  [*]snap  [ ]wheel" \
      42 "Wine Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      43 "Wonderswan Artwork       [*]box  [*]cart  [*]snap  [ ]wheel" \
      44 "ZMachine Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) download-art "amiga" "boxart" "cartart" "snap" "wheel" ;;
    2) download-art "amigacd" "boxart" "cartart" "snap" ;;
    3) download-art "arcadia" "boxart" "cartart" "snap" "wheel" ;;
    4) download-art "astrocade" "snap" ;;
    5) download-art "atari800" "boxart" "cartart" "snap" ;;
    6) download-art "atari2600" "boxart" "cartart" "snap" "wheel" ;;
    7) download-art "atari5200" "boxart" "cartart" "snap" "wheel" ;;
    8) download-art "atari7800" "cartart" "snap" "wheel" ;;
    9) download-art "atarilynx" "boxart" "cartart" "snap" ;;
    10) download-art "atarist" "boxart" "cartart" "snap" ;;
    11) download-art "c64" "boxart" "cartart" "snap" ;;
    12) download-art "colecovision" "boxart" "cartart" "snap" ;;
    13) download-art "daphne" "boxart" "cartart" "snap" ;;
    14) download-art "dragon32" "boxart" "cartart" "snap" ;;
    15) download-art "dreamcast" "boxart" "cartart" "snap" ;;
    16) download-art "famicon" "boxart" "cartart" "snap" ;;
    17) download-art "gameandwatch" "boxart" "cartart" "snap" ;;
    18) download-art "gb" "boxart" "cartart" "snap" ;;
    19) download-art "gba" "boxart" "cartart" "snap" ;;
    20) download-art "gbc" "boxart" "cartart" "snap" ;;
    21) download-art "gg" "boxart" "cartart" "snap" ;;
    22) download-art "genesis" "boxart" "cartart" "snap" ;;
    23) download-art "intellivision" "boxart" "cartart" "snap" ;;
    24) download-art "lightgun" "boxart" "cartart" "snap" ;;
    25) download-art "markiii" "boxart" "cartart" "snap" ;;
    26) download-art "mastersystem" "boxart" "cartart" "snap" ;;
    27) download-art "megadrive" "boxart" "cartart" "snap" ;;
    28) download-art "mugen" "boxart" "wheel" "snap" ;;
    29) download-art "n64" "boxart" "cartart" "snap" ;;
    30) download-art "naomi" "boxart" "cartart" "snap" ;;
    31) download-art "nds" "boxart" "cartart" "snap" ;;
    32) download-art "neogeo" "boxart" "cartart" "snap" ;;
    33) download-art "nes" "boxart" "cartart" "snap" ;;
    34) download-art "openbor" "boxart" "cartart" "snap" ;;
    35) download-art "oric" "boxart" "cartart" "snap" ;;
    36) download-art "pc-engine" "boxart" "cartart" "snap" ;;
    37) download-art "ps1" "boxart" "cartart" "snap" ;;
    38) download-art "sega32x" "boxart" "cartart" "snap" ;;
    39) download-art "segacd" "boxart" "cartart" "snap" ;;
    40) download-art "snes" "boxart" "cartart" "snap" ;;
    41) download-art "tg16" "boxart" "cartart" "snap" ;;
    42) download-art "wine" "boxart" "cartart" "snap" ;;
    43) download-art "wonderswan" "boxart" "cartart" "snap" ;;
    44) download-art "zmachine" "boxart" "cartart" "snap" ;;
    *) break ;;
    esac
  done
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
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU " \
      --ok-label Download --cancel-label Back \
      --menu "PRESS A/ENTER TO DOWNLOAD PACK" 40 75 60 \
      1 "Amiga                             ??GB       ?? GAMES" \
      2 "AmigaCD                           01GB      090 GAMES" \
      3 "Arcadia                           ??GB      050 GAMES" \
      4 "Astrocade                         50MB      650 GAMES" \
      5 "Atari800                          770MB     650 GAMES" \
      6 "Atari2600                         ??GB      650 GAMES" \
      7 "Atari5200                         70MB      080 GAMES" \
      8 "Atari7800                         ??GB      ??? GAMES" \
      9 "AtariLynx                         ??GB      ??? GAMES" \
      10 "AtariST                           ??GB      ??? GAMES" \
      11 "Commadore64                       3.2GB    3000 GAMES" \
      12 "Colecovision                      150MB     140 GAMES" \
      13 "Daphne                            ??GB      ??? GAMES" \
      14 "Dragon32                          ??GB      ??? GAMES" \
      15 "Dreamcast                         10GB      010 GAMES" \
      16 "Famicon                           ??GB      ??? GAMES" \
      17 "Game and Watch                    ??GB      ??? GAMES" \
      18 "Gameboy                          1.4GB      800 GAMES" \
      19 "Gameboy Advance                   05GB     1000 GAMES" \
      20 "Gameboy Color                     1.4GB     420 GAMES" \
      21 "Gamegear                          800MB     337 GAMES" \
      22 "Genesis                           2.5GB     900 GAMES" \
      23 "Intellivision                     ??GB      ??? GAMES" \
      24 "Lightgun                          ??GB      ??? GAMES" \
      25 "MarkIII                           ??GB      ??? GAMES" \
      26 "Mastersystem                      700MB     300 GAMES" \
      27 "Megadrive                         586MB     900 GAMES" \
      28 "Mugen                             9.2GB     009 GAMES" \
      29 "Nintendo 64                       5.0GB     300 GAMES" \
      30 "Naomi                             ??GB      ??? GAMES" \
      31 "Nintendo DS                       21GB      750 GAMES" \
      32 "NeoGeo                            ??GB      ??? GAMES" \
      33 "Nintendo Entertainment System    100MB      850 GAMES" \
      34 "Openbor                           ??GB      ??? GAMES" \
      35 "Oric                              ??GB      ??? GAMES" \
      36 "PC Engine                         ??GB      ??? GAMES" \
      37 "PS1                                13GB      40 GAMES" \
      38 "Sega32x                           ??GB      ??? GAMES" \
      39 "SegaCD                            ??GB      ??? GAMES" \
      40 "SNES                              500MB     500 GAMES" \
      41 "Turbo Graffix 16                  ??GB      ??? GAMES" \
      42 "Wine                              ??GB      ??? GAMES" \
      43 "Wonderswan                        ??GB      ??? GAMES" \
      44 "ZMachine                 121      ??GB      ??? GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) amiga ;;
    2) amigacd ;;
    3) arcadia ;;
    4) astrocade ;;
    5) atari800 ;;
    6) atari2600 ;;
    7) atari5200 ;;
    8) atari7800 ;;
    9) atarilynx ;;
    10) atarist ;;
    11) c64 ;;
    12) colecovision ;;
    13) daphne ;;
    14) dragon32 ;;
    15) dreamcast ;;
    16) famicon ;;
    17) gameandwatch ;;
    18) gb ;;
    19) gba ;;
    20) gbc ;;
    21) gg ;;
    22) genesis ;;
    23) intellivision ;;
    24) lightgun ;;
    25) markiii ;;
    26) mastersystem ;;
    27) megadrive ;;
    28) mugen ;;
    29) n64 ;;
    30) naomi ;;
    31) nds ;;
    32) neogeo ;;
    33) nes ;;
    34) openbor ;;
    35) oric ;;
    36) pc-engine ;;
    37) ps1 ;;
    38) sega32x ;;
    39) segacd ;;
    40) snes ;;
    41) tg16 ;;
    42) wine ;;
    43) wonderswan ;;
    44) zmachine ;;
    *) break ;;
    esac
  done
}
function amiga() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/amiga/ -P ~/RetroPie/roms/amiga -erobots=off
}

function amigacd() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/amigacd/ -P ~/RetroPie/roms/amigacd -erobots=off
}
function arcadia() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/arcadia/ -P ~/RetroPie/roms/arcadia -erobots=off
}

function astrocade() {
  wget -m -r -np -nH -nd -R "index.html" "${ROM_HOST}"/astrocade/ -P ~/RetroPie/roms/astrocade -erobots=off
}
function atari800() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atari800/ -P ~/RetroPie/roms/atari800 -erobots=off
}

function atari2600() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atari2600/ -P ~/RetroPie/roms/atari2600 -erobots=off
}
function atari5200() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atari5200/ -P ~/RetroPie/roms/atari5200 -erobots=off
}

function atari7800() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atari7800/ -P ~/RetroPie/roms/atari7800 -erobots=off
}
function atarilynx() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atarilynx/ -P ~/RetroPie/roms/atarilynx -erobots=off
}

function atarist() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atarist/ -P ~/RetroPie/roms/atarist -erobots=off
}
function c64() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/c64/ -P ~/RetroPie/roms/c64 -erobots=off
}

function colecovision() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/coleco/ -P ~/RetroPie/roms/coleco -erobots=off
}
function daphne() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/daphne/ -P ~/RetroPie/roms/daphne -erobots=off
}
function dragon32() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/dragon32/ -P ~/RetroPie/roms/dragon32 -erobots=off
}

function dreamcast() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/dreamcast/ -P ~/RetroPie/roms/dreamcast -erobots=off
}

function fds() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/fds/ -P ~/RetroPie/roms/fds -erobots=off
}
function gameandwatch() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/gameandwatch/ -P ~/RetroPie/roms/gameandwatch -erobots=off
}
function gb() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gb/ -P ~/RetroPie/roms/gb -erobots=off
}
function gba() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gba/ -P ~/RetroPie/roms/gba -erobots=off
}

function gbc() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gbc/ -P ~/RetroPie/roms/gbc -erobots=off
}
function gamegear() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gamegear/ -P ~/RetroPie/roms/gamegear -erobots=off
}

function genesis() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/genesis/ -P ~/RetroPie/roms/genesis -erobots=off
}
function intellivision() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function lightgun() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/lightgun/ -P ~/RetroPie/roms/lightgun -erobots=off
}
function markiii() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/markiii/ -P ~/RetroPie/roms/markiii -erobots=off
}

function mastersystem() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/mastersystem/ -P ~/RetroPie/roms/mastersystem -erobots=off
}
function megadrive() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/megadrive/ -P ~/RetroPie/roms/megadrive -erobots=off
}
function mugen() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/mugen/ -P ~/RetroPie/roms/wine/mugens -erobots=off
}
function n64() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/N64/ -P ~/RetroPie/roms/n64 -erobots=off
}

function naomi() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/naomi/ -P ~/RetroPie/roms/naomi -erobots=off
}
function nds() {
  wget -m -r -np -nH -nd -R "index.html" "${ROM_HOST}"/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function neogeo() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/neogeo/ -P ~/RetroPie/roms/neogeo -erobots=off
}
function nes() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/nes/ -P ~/RetroPie/roms/nes -erobots=off
}

function openbor() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/openbonbor/ -P ~/RetroPie/roms/openbor -erobots=off
}
function oric() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/oric/ -P ~/RetroPie/roms/oric -erobots=off
}

function pcengine() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/pce/ -P ~/RetroPie/roms/pce -erobots=off
}
function ps1() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/ps1/ -P ~/RetroPie/roms/psx -erobots=off
}

function sega32x() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/sega32x/ -P ~/RetroPie/roms/sega32x -erobots=off
}
function segacd() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/segacd/ -P ~/RetroPie/roms/segacd -erobots=off
}
function snes() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/snes/ -P ~/RetroPie/roms/snes -erobots=off
}
function tg16() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/tg16/ -P ~/RetroPie/roms/tg16 -erobots=off
}
function wine() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/wine/ -P ~/RetroPie/roms/wine -erobots=off
}
function wonderswan() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/wonderswan/ -P ~/RetroPie/roms/wonderswan -erobots=off
}

function zmachine() {
  wget -m -r -np -nH -nd -R "index.html" "$HOST1}"/zmachine/ -P ~/RetroPie/roms/zmachine -erobots=off
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
      1 "Gameboy Hacks                           04MB    019 GAMES " \
      2 "NES Hacks                               20MB    190 GAMES " \
      3 "Gameboy Hacks                           04MB    019 GAMES " \
      4 "NES Hacks                               20MB    190 GAMES " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) gbh ;;
    2) nesh ;;
    *) break ;;
    esac
  done
}
function gbh() {
  wget -m -r -np -nH -nd -R "index.html" "${ROM_HOST}"/gbh/ -P ~/RetroPie/roms/gbh -erobots=off
}
function nesh() {
  wget -m -r -np -nH -nd -R "index.html" "${ROM_HOST}"/nesh/ -P ~/RetroPie/roms/nesh -erobots=off
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
      2>&1 >/dev/tty)

    case "$choice" in
    1) community_tools ;;
    2) emu_tools ;;
    3) other_tools ;;
    4) db_tools ;;
    *) break ;;
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
###-----------------------------------###
###  COMMUNITY TOOLS MENU FUNCTIONS   ###
###-----------------------------------###
function community_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " COMMUNITY TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 75 60 \
      1 "RetroPie Extras                                      Zero Jay   " \
      2 "T.A.M.P.O                                            The Pitster" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) rp-extras ;;
    2) tampo ;;
    *) break ;;
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
curl -sSL https://git.io/JDfjg | bash
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
      2>&1 >/dev/tty)

    case "$choice" in
    1) community_emu ;;
    2) rpi_menu ;;
    *) break ;;
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
      1 "Mugen                                  PI 4    Supreme Team " \
      2 "Sega Model 3                           PI 4    Retro Devils " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) mugen ;;
    2) sm3   ;;
    *) break ;;
    esac
  done
}

#----------------------------------#
#       MUGEN EMU FUNCTIONS        #
#----------------------------------#
function mugen() {
curl -sSL https://git.io/Jz903 | bash
}

#----------------------------------#
#       SM3 EMU FUNCTIONS        #
#----------------------------------#
function sm3() {
curl -sSL https://git.io/JSDOy | bash
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
      2>&1 >/dev/tty)

    case "$choice" in
    1) hardware ;;
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
function hardware() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " HARDWARE TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL PRESS TO APPLY/INSTALL " 30 60 60 \
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
      2>&1 >/dev/tty)

    case "$choice" in
    1) about_db ;;
    2) remove_db ;;
    3) update_db ;;
    *) break ;;
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
  cpu_temp=$(</sys/class/thermal/thermal_zone0/temp)
  cpu_temp=$(($cpu_temp / 1000))
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
