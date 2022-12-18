#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
clear
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine_20221218"
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
      17 "Dreamcast                        106GB      271 GAMES" \
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
      34 "Nintendo DS                        4GB      171 GAMES" \
      35 "NeoGeo                           2.3GB      142 GAMES" \
      36 "Neo Geo Pocket Color              21MB       40 GAMES" \
      37 "Nintendo Entertainment System    100MB      869 GAMES" \
      38 "Pokemini                         5.4MB       44 GAMES" \
      39 "PlayStation 1                      3GB       29 GAMES" \
      40 "PSP                              ???GB      600 GAMES" \
      41 "Sega32x                           63MB       37 GAMES" \
      42 "SegaCD                            11GB       52 GAMES" \
      43 "Super Famicon                    475MB      487 GAMES" \
      44 "SG-1000                            1MB       68 GAMES" \
      45 "SNES                             508MB      603 GAMES" \
      46 "SNES MSU1                         ??MB       ?? GAMES" \
      47 "SuperGraffiix                    2.4MB        5 GAMES" \
      48 "Turbo Graffix 16/PC Engine        20MB       94 GAMES" \
      49 "Vectrex                          201KB       20 GAMES" \
      50 "VideoPAC                         430KB       99 GAMES" \
      51 "Virtual Boy                        8MB       24 GAMES" \
      52 "Dreamcast VMU                      3MB      115 GAMES" \
      53 "Wonderswan Color                 116MB       84 GAMES" \
      54 "Sharp X1                         7.6MB       69 GAMES" \
      55 "Sharp X68000                     504MB      418 GAMES" \
      56 "ZMachine                           4MB       30 GAMES" \
      57 "ZXSpectrum                        38MB     1111 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) download-packs "amiga" "lr-puae" ;;
    2) download-packs "amigacd32" "lr-puae" ;;
    3) download-packs "amstradcpc" "lr-caprice32" ;;
    4) download-packs "arcade" "lr-mame2003" ;;
    5) download-packs "arcadia" ;;
    6) download-packs "astrocade" ;;
    7) download-packs "atari800" "lr-atari800" ;;
    8) download-packs "atari2600" "lr-stella" ;;
    9) download-packs "atari5200" "lr-atari800" ;;
    10) download-packs "atari7800" "lr-prosystem";;
    11) download-packs "atarilynx" "lr-beetle-lynx" ;;
    12) download-packs "atarist" "lr-hatari" ;;
    13) download-packs "atomiswave" "lr-flycast";;
    14) download-packs "c64" "lr-vice" ;;
    15) download-packs "coleco" "lr-bluemsx" ;;
    16) download-packs "dragon32" "xroar" ;;
    17) download-packs "dreamcast" "redream" ;;
    18) download-packs "electron" ;;
    19) download-packs "famicon" "lr-fceumm";;
    20) download-packs "fds" "lr-fbneo" ;;
    21) download-packs "gameandwatch" "lr-gw" ;;
    22) download-packs "gb" "lr-mgba" ;;
    23) download-packs "gba" "lr-mgba" ;;
    24) download-packs "gbc" "lr-gambatte" ;;
    25) download-packs "gamegear" "lr-genesis-plus-gx" ;;
    26) download-packs "intellivision" "lr-freeintv" ;;
    27) download-packs "lightgun" "mame" ;;
    28) download-packs "markiii" "lr-genesis-plus-gx" ;;
    29) download-packs "mastersystem" "lr-picodrive" ;;
    30) download-packs "megadrive" "lr-genesis-plus-gx" ;;
    31) megadrive-japan ;;
    32) download-packs "msx" "lr-bluemsx" ;;
    33) download-packs "msx2" "lr-bluemsx" ;;
    34) download-packs "nds" "drastic" ;;
    35) download-packs "neogeo" ;;
    36) download-packs "ngpc" "lr-beetle-ngp" ;;
    37) download-packs "nes" "lr-nestopia" ;;
    38) download-packs "pokemini" ;;
    39) download-packs "psx" "lr-pcsx_rearmed" ;;
    40) download-packs "scummvm" "scummvm" ;;
    41) download-packs "sega32x" "lr-picodrive" ;;
    42) download-packs "segacd" "lr-picodrive" ;;
    43) download-packs "sfc" ;;
    44) download-packs "sg-1000" "lr-genesis-plus-gx" ;;
    45) download-packs "snes" "lr-snes9x" ;;
    46) msu1-pack ;;
    47) download-packs "supergrafx" "lr-beetle" ;;
    48) tg16-fix ;;
    49) download-packs "vectrex" "lr-vecx" ;;
    50) download-packs "videopac" "lr-o2em" ;;
    51) download-packs "virtualboy" "lr-beetle-vb" ;;
    52) download-packs "svmu" ;;
    53) download-packs "wonderswancolor" "lr-beetle-wswan" ;;
    54) download-packs "x1" ;;
    55) download-packs "x68000" ;;
    56) download-packs "zmachine""frotz"  ;;
    57) download-packs "zxspectrum" "lr-fuse" ;;
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
