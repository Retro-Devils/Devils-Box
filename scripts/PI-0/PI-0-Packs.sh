#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
clear
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine"
HOST5="https://archive.org/download/devils-dos"
HOST8="https://archive.org/download/the-devils-box-alt/model3"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"


if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
	omxplayer "$HOME"/Devils-Box/files/videos/console-packs.mp4 > /dev/null 2>&1
fi
if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function Consoles-Menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER TO DOWNLOAD PACK..........****MEANS COMING SOON" 30 70 50 \
      + "<->CONSOLE NAME<---------------->SIZE<----># OF GAMES" \
      1 "Atari800                        5.21MB      100 GAMES" \
      2 "Atari2600                        2.6MB      615 GAMES" \
      3 "Atari5200                        928KB       81 GAMES" \
      4 "Atari7800                          2MB       54 GAMES" \
      5 "Dragon32                         897KB       51 GAMES" \
      6 "Game and Watch                    48MB       53 GAMES" \
      7 "Gameboy                           42MB      565 GAMES" \
      8 "Gameboy Advance                  3.4GB     1006 GAMES" \
      9 "Gameboy Color                    232MB      538 GAMES" \
      10 "Gamegear                          42MB      249 GAMES" \
      11 "Mastersystem                      35MB      280 GAMES" \
      12 "Genesis/Megadrive                409MB      561 GAMES" \
      13 "Genesis/Megadrive-Japan          149MB      278 GAMES" \
      14 "NeoGeo                           2.3GB      142 GAMES" \
      15 "Neo Geo Pocket Color              21MB       40 GAMES" \
      16 "Nintendo Entertainment System    100MB      869 GAMES" \
      17 "Sega32x                           63MB       37 GAMES" \
      18 "SegaCD                            11GB       52 GAMES" \
      19 "Super Famicon                    475MB      487 GAMES" \
      20 "SG-1000                            1MB       68 GAMES" \
      21 "SNES                             508MB      603 GAMES" \
      22 "SNES MSU1                         ??MB       ?? GAMES" \
      23 "Turbo Graffix 16/PC Engine        20MB       94 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) download-packs "atari800" "lr-atari800" ;;
    2) download-packs "atari2600" "lr-stella" ;;
    3) download-packs "atari5200" "lr-atari800" ;;
    4) download-packs "atari7800" "lr-prosystem";;
    5) download-packs "dragon32" "xroar" ;;
    6) download-packs "gameandwatch" "lr-gw" ;;
    7) download-packs "gb" "lr-mgba" ;;
    8) download-packs "gba" "lr-mgba" ;;
    9) download-packs "gbc" "lr-gambatte" ;;
    10) download-packs "gamegear" "lr-genesis-plus-gx" ;;
    11) download-packs "mastersystem" "lr-picodrive" ;;
    12) download-packs "megadrive" "lr-genesis-plus-gx" ;;
    13) megadrive-japan ;;
    14) download-packs "neogeo" ;;
    15) download-packs "ngpc" "lr-beetle-ngp" ;;
    16) download-packs "nes" "lr-nestopia" ;;
    17) download-packs "sega32x" "lr-picodrive" ;;
    18) download-packs "segacd" "lr-picodrive" ;;
    19) download-packs "sfc" ;;
    20) download-packs "sg-1000" "lr-genesis-plus-gx" ;;
    21) download-packs "snes" "lr-snes9x" ;;
    22) msu1-pack ;;
    23) tg16-fix ;;   
     +) none  ;;
     *) break ;;
    esac
   done
fi
}

#----------------------#
#  PSP GAMES FUNCTIONS  #
#----------------------#
function psp-pack() {
if [ ! -d "$HOME"/RetroPie/roms/psp/ ]; then dialog  --sleep 1 --title "PSP FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST6}"/ -P "$HOME"/RetroPie/roms/psp -erobots=off
rm -f "$HOME"/RetroPie/roms/psp/index.html.tmp
fi
}

function model-3() {
if [ ! -d "$HOME"/RetroPie/roms/model3/ ]; then dialog  --sleep 1 --title "MODEL 3 FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST8}"/ -P "$HOME"/RetroPie/roms/model3 -erobots=off
rm -f "$HOME"/RetroPie/roms/model3/index.html.tmp
fi
}

function msu1-pack() {
if [ ! -d "$HOME"/RetroPie/roms/snesmsu1/ ]; then dialog  --sleep 1 --title "MSU1 FOLDER MISSING!" --msgbox "Please Run MSU1 Setup First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST7}"/ -P "$HOME"/RetroPie/roms/snesmsu1 -erobots=off
rm -f "$HOME"/RetroPie/roms/msu1/index.html.tmp
fi
}
function tg16-fix() {
if [ ! -d "$HOME"/RetroPie/roms/pcengine/ ]; then dialog  --sleep 1 --title "EMU FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/tg16 -P "$HOME"/RetroPie/roms/pcengine -erobots=off
rm -f "$HOME"/RetroPie/roms/pcengine/index.html.tmp
fi
}
function download-packs() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL "${2}"?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" ;;
      2) Consoles-Menu ;;
      *) return ;;
    esac
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
}

function download-packs-alt() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL "${2}"?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" ;;
      2) Consoles-Menu ;;
      *) return ;;
    esac
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
}

function download-jakks() {
if [ ! -d "$HOME/RetroPie/roms/plugnplay/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL PLUG N PLAY EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) wget https://bit.ly/PlugNPlay-Emu -P $HOME/RetroPie-Setup/ ; cd $HOME/RetroPie-Setup ; sudo ./retropie_packages.sh lr-mess-plugnplay ;;
      2) Consoles-Menu ;;
      *) return ;;
    esac
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/jakks/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
}

function saturn-japan() {
if [ ! -d "$HOME/RetroPie/roms/saturn/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
sudo mkdir "$HOME"/RetroPie/roms/saturn/Japanese/
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/saturn-japan/ -P "$HOME"/RetroPie/roms/saturn/Japanese/ -erobots=off
rm -f "$HOME"/RetroPie/roms/saturn/index.html.tmp
fi
}

function megadrive-japan() {
if [ ! -d "$HOME/RetroPie/roms/megadrive/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
sudo mkdir "$HOME"/RetroPie/roms/megadrive/Japanese/
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/megadrive-japan/ -P "$HOME"/RetroPie/roms/megadrive/Japanese/ -erobots=off
rm -f "$HOME"/RetroPie/roms/saturn/index.html.tmp
fi
}
Consoles-Menu
