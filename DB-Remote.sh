#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
##-------------GAME HOSTS---------------##
HOST1="https://archive.org/download/the-devils-box-alt
HOST2="https://archive.org/download/the-devils-box_202112"
#HOST3=
#HOST4=

###-----------------------###
### MAIN MENU FUNCTIONS   ###
###-----------------------###

function main_menu() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " REMOTE DEVILS BOX V2.2.   1/11/22" \
      --ok-label Select --cancel-label Exit-Devils-Box \
      --menu "DEVILS BOX MAIN MENU" 25 50 40 \
      1 "Console Packs" \
      2 "Tool Box" \
      3 "Reboot System" \
      4 "Show Disk Space" \
      5 "Run Devils Box Installer " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) consoles     ;:
    2) tool_box     ;;
    3) system_reboot;;
    4) show_disk    ;;
    ) db_install   ;;
    
    *) break ;;
    esac
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
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/astrocade/ -P ~/RetroPie/roms/astrocade -erobots=off
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
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/fds/ -P ~/RetroPie/roms/fds -erobots=off
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
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/genesis/ -P ~/RetroPie/roms/genesis -erobots=off
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
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/nds/ -P ~/RetroPie/roms/nds -erobots=off
}
function neogeo() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/neogeo/ -P ~/RetroPie/roms/neogeo -erobots=off
}
function nes() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/nes/ -P ~/RetroPie/roms/nes -erobots=off
}

function openbor() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/openbor/ -P ~/RetroPie/roms/openbor -erobots=off
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
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/zmachine/ -P ~/RetroPie/roms/zmachine -erobots=off
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
      2 "Genesis Hacks                           20MB    190 GAMES " \
      3 "Gamegear Hacks                          04MB    019 GAMES " \
      4 "NES Hacks                               20MB    190 GAMES " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) gbh ;;
    2) genh ;;
    3) ggh ;;
    4) nesh ;;
    *) break ;;
    esac
  done
}
function gbh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gbh/ -P ~/RetroPie/roms/gbh -erobots=off
}
function nesh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/genh/ -P ~/RetroPie/roms/nesh -erobots=off
}
function gbh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/ggh/ -P ~/RetroPie/roms/gbh -erobots=off
}
function nesh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/nesh/ -P ~/RetroPie/roms/nesh -erobots=off
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
      2>&1 >/dev/tty)

    case "$choice" in
    1) community_tools ;;
    2) emu_tools ;;
    3) other_tools ;;
    *) break ;;
    esac
  done
}
#---------------------------#
#INSTALL DEVILS BOX #
#---------------------------#
function db_install() {
if [ -f "$HOME/RetroPie/retropiemenu/Devils-Box.sh" ]; then 
sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh; fi
if [ -d "$HOME/Devils-Box/" ]; then 
sudo rm -R ~/Devils-Box/; fi
git clone https://github.com/Retro-Devils/Devils-Box
cp ~/Devils-Box/Devils-Box.sh -f ~/RetroPie/retropiemenu/
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
      2 "T.A.M.P.O                                            thepitster" \
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
curl -sSL https://git.io/Jz9O3 | bash
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
