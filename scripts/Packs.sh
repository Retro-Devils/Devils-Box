#!/bin/bash
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



omxplayer "$HOME"/Devils-Box/files/videos/console-packs.mp4 > /dev/null 2>&1
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
      45 "Sega Model 3.                     ??GB       15 GAMES" \
      46 "Sega Saturn                      108GB      303 GAMES" \
      47 "Sega Saturn Japan                3.9GB       18 GAMES" \
      48 "ScummVM                          2.5GB       21 GAMES" \
      49 "Sega32x                           63MB       37 GAMES" \
      50 "SegaCD                            11GB       52 GAMES" \
      51 "Super Famicon                    475MB      487 GAMES" \
      52 "SG-1000                            1MB       68 GAMES" \
      53 "SNES                             508MB      603 GAMES" \
      54 "SNES MSU1                         ??MB       ?? GAMES" \
      55 "SuperGraffiix                    2.4MB        5 GAMES" \
      56 "Turbo Graffix 16/PC Engine        20MB       94 GAMES" \
      57 "Vectrex                          201KB       20 GAMES" \
      58 "VideoPAC                         430KB       99 GAMES" \
      59 "Virtual Boy                        8MB       24 GAMES" \
      60 "Dreamcast VMU                      3MB      115 GAMES" \
      61 "Wonderswan Color                 116MB       84 GAMES" \
      62 "Sharp X1                         7.6MB       69 GAMES" \
      63 "Sharp X68000                     504MB      418 GAMES" \
      64 "ZMachine                           4MB       30 GAMES" \
      65 "ZXSpectrum                        38MB     1111 GAMES" \
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
    45) model-3 ;;
    46) download-packs "saturn" ;;
    47) download-packs "saturn-japan" ;;
    48) download-packs "scummvm" ;;
    49) download-packs "sega32x" ;;
    50) download-packs "segacd" ;;
    51) download-packs "sfc" ;;
    52) download-packs "sg-1000" ;;
    53) download-packs "snes" ;;
    54) msu1-pack ;;
    55) download-packs "supergrafx" ;;
    56) tg16-fix ;;
    57) download-packs "vectrex" ;;
    58) download-packs "videopac" ;;
    59) download-packs "virtualboy" ;;
    60) download-packs "svmu" ;;
    61) download-packs "wonderswancolor" ;;
    62) download-packs "x1" ;;
    63) download-packs "x68000" ;;
    64) download-packs "zmachine" ;;
    65) download-packs "zxspectrum" ;;  
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
if [ ! -d "$HOME"/RetroPie/roms/pcengine/ ]; then dialog  --sleep 1 --title "EMU FOLDER MISSING!" --msgbox "Please Install It's Emulator Firstt" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/tg16 -P "$HOME"/RetroPie/roms/pcengine -erobots=off
rm -f "$HOME"/RetroPie/roms/pcengine/index.html.tmp
fi
}
function download-packs() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
}

function download-packs-alt() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
}

Consoles-Menu
