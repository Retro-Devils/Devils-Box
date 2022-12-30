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
      14 "BBC Micro                          5MB       50 GAMES" \
      15 "Commadore64                      9.5MB      144 GAMES" \
      16 "Colecovision                     2.7MB      146 GAMES" \
      17 "Dragon32                         897KB       51 GAMES" \
      18 "Dreamcast                        106GB      271 GAMES" \
      19 "Electron                         2.5MB      152 GAMES" \
      20 "Famicon                           19MB      169 GAMES" \
      21 "Famicom Disk                       2MB       43 GAMES" \
      22 "Game and Watch                    48MB       53 GAMES" \
      23 "Gameboy                           42MB      565 GAMES" \
      24 "Gameboy Advance                  3.4GB     1006 GAMES" \
      25 "Gameboy Color                    232MB      538 GAMES" \
      26 "Gamegear                          42MB      249 GAMES" \
      27 "Intellivision                      1MB       62 GAMES" \
      28 "Jakks                             20MB       25 GAMES" \
      29 "Lightgun Packs Menu------SUB MENU	      SUB MENU " \
      30 "MarkIII                            6MB       58 GAMES" \
      31 "Mastersystem                      35MB      280 GAMES" \
      32 "Genesis/Megadrive                409MB      561 GAMES" \
      33 "Genesis/Megadrive-Japan          149MB      278 GAMES" \
      34 "MSX                               30MB      708 GAMES" \
      35 "MSX 2                           6.24MB       83 GAMES" \
      36 "Nintendo 64                      5.0GB      338 GAMES" \
      37 "Naomi                            1.5GB       15 GAMES" \
      38 "Nintendo DS                        4GB      171 GAMES" \
      39 "NeoGeo                           2.3GB      142 GAMES" \
      40 "Neo Geo Pocket Color              21MB       40 GAMES" \
      41 "Nintendo Entertainment System    100MB      869 GAMES" \
      42 "Openbor                         1.84GB       37 GAMES" \
      43 "Oric                             5.4MB      136 GAMES" \
      44 "Pokemini                         5.4MB       44 GAMES" \
      45 "PlayStation 1                      3GB       29 GAMES" \
      46 "Pokitto			   4.5MB       37 GAMES" \
      47 "PSP                              ???GB      600 GAMES" \
      48 "Sega Model 3.                     ??GB       15 GAMES" \
      49 "Sega Saturn                      108GB      303 GAMES" \
      50 "Sega Saturn Japan                3.9GB       18 GAMES" \
      51 "ScummVM                          2.5GB       21 GAMES" \
      52 "Sega32x                           63MB       37 GAMES" \
      53 "SegaCD                            11GB       52 GAMES" \
      54 "Super Famicon                    475MB      487 GAMES" \
      55 "SG-1000                            1MB       68 GAMES" \
      56 "Special/Themed Packs------SUB MENU	      SUB MENU " \
      57 "SNES                             508MB      603 GAMES" \
      58 "SNES MSU1                         ??MB       ?? GAMES" \
      59 "SuperGraffiix                    2.4MB        5 GAMES" \
      60 "Turbo Graffix 16/PC Engine        20MB       94 GAMES" \
      61 "Vectrex                          201KB       20 GAMES" \
      62 "VideoPAC                         430KB       99 GAMES" \
      63 "Virtual Boy                        8MB       24 GAMES" \
      64 "Dreamcast VMU                      3MB      115 GAMES" \
      65 "Wonderswan Color                 116MB       84 GAMES" \
      66 "Sharp X1                         7.6MB       69 GAMES" \
      67 "Sharp X68000                     504MB      418 GAMES" \
      68 "ZMachine                           4MB       30 GAMES" \
      69 "ZXSpectrum                        38MB     1111 GAMES" \
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
    13) download-packs-alt2 "atomiswave" "lr-flycast" "AtomIsWave" "zip" "ZIP" ;;
    14) download-bbcmicro  ;;
    15) download-packs "c64" "lr-vice" ;;
    16) download-packs "coleco" "lr-bluemsx" ;;
    17) download-packs "dragon32" "xroar" ;;
    18) download-packs "dreamcast" "redream" ;;
    19) download-packs "electron" ;;
    20) download-packs "famicon" "lr-fceumm";;
    21) download-packs "fds" "lr-fbneo" ;;
    22) download-packs "gameandwatch" "lr-gw" ;;
    23) download-packs "gb" "lr-mgba" ;;
    24) download-packs "gba" "lr-mgba" ;;
    25) download-packs "gbc" "lr-gambatte" ;;
    26) download-packs "gamegear" "lr-genesis-plus-gx" ;;
    27) download-packs "intellivision" "lr-freeintv" ;;
    28) download-jakks ;;
    29) lightgun-packs ;;
    30) download-packs "markiii" "lr-genesis-plus-gx" ;;
    31) download-packs "mastersystem" "lr-picodrive" ;;
    32) download-packs "megadrive" "lr-genesis-plus-gx" ;;
    33) megadrive-japan ;;
    34) download-packs "msx" "lr-bluemsx" ;;
    35) download-packs "msx2" "lr-bluemsx" ;;
    36) download-packs "n64" "lr-mupen64plus" ;;
    37) atomiswave-pack "naomi" "lr-flycast" ;;
    38) download-packs "nds" "drastic" ;;
    39) download-packs "neogeo" ;;
    40) download-packs "ngpc" "lr-beetle-ngp" ;;
    41) download-packs "nes" "lr-nestopia" ;;
    42) download-packs "openbor" ;;
    43) download-packs "oric" "oricutron" ;;
    44) download-packs "pokemini" ;;
    45) download-packs "psx" "lr-pcsx_rearmed" ;;
    46) download-pokitto ;;
    47) psp-pack ;;
    48) model-3 ;;
    49) download-packs "saturn" "yabasanshiro" ;;
    50) saturn-japan "saturn-japan" "yabasanshiro" ;;
    51) download-packs "scummvm" "scummvm" ;;
    52) download-packs "sega32x" "lr-picodrive" ;;
    53) download-packs "segacd" "lr-picodrive" ;;
    54) download-packs "sfc" ;;
    55) download-packs "sg-1000" "lr-genesis-plus-gx" ;;
    56) special-packs ;;
    57) download-packs "snes" "lr-snes9x" ;;
    58) msu1-pack ;;
    59) download-packs "supergrafx" "lr-beetle" ;;
    60) tg16-fix ;;
    61) download-packs "vectrex" "lr-vecx" ;;
    62) download-packs "videopac" "lr-o2em" ;;
    63) download-packs "virtualboy" "lr-beetle-vb" ;;
    64) download-packs "svmu" ;;
    65) download-packs "wonderswancolor" "lr-beetle-wswan" ;;
    66) download-packs "x1" ;;
    67) download-packs "x68000" ;;
    68) download-packs "zmachine""frotz"  ;;
    69) download-packs "zxspectrum" "lr-fuse" ;;
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

function download-packs-alt2() {
if [ ! -d "$HOME/RetroPie/roms/dreamcast/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
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
if [ ! -d "$HOME/RetroPie/roms/$1/" ]; then mkdir "$HOME/RetroPie/roms/$1/"; else echo "YOU GOOD" ; fi 
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
if [ ! -d "opt/retropie/configs/"$1"" ]; then sudo cp -R opt/retropie/conifgs/dreamcast opt/retropie/conifgs/"$1" ; fi
if [ ! -s "$HOME/.emulationstation/es_systems.cfg" ]; then sudo rm -f $HOME/.emulationstation/es_systems.cfg; fi
if [ ! -f "$HOME/.emulationstation/es_systems.cfg" ]; then cp $HOME/.emulationstation/es_systems.cfg $HOME/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="\t<system>\n\t\t  <name>"$1"</name>\n\t\t  <fullname>"$3"</fullname> \n\t\t  <path>/home/pi/RetroPie/roms/"$1"</path> \n\t\t  <extension>"$4" "$5"</extension> \n\t\t<command>/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ "$1" %ROM%</command> \n\t\t  <platform>"$1"</platform> \n\t\t  <theme>"$1"</theme> \n\t\t</system>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q model3 "$HOME/.emulationstation/es_systems.cfg"; then echo "es_systems.cfg entry confirmed"
else
	sed "/<\/system>/ s/.*/${C1}\n&/" $HOME/.emulationstation/es_systems.cfg > $HOME/temp
	cat $HOME/temp > $HOME/.emulationstation/es_systems.cfg
	rm -f $HOME/temp
fi
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
      1) mess-system "jakks" ;;
      2) Consoles-Menu ;;
      *) return ;;
    esac
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/jakks/ -P "$HOME"/RetroPie/roms/plugnplay -erobots=off
rm -f "$HOME"/RetroPie/roms/plugnplay/index.html.tmp
fi
}

function mess-system() {
dialog  --sleep 1 --title "MESS System Installer FYI" --msgbox " 
--------------------------------------------
---------------INSTALLER FYI----------------
-------THIS IS A LONG READ PLEASE READ IT---
--------------------------------------------
Taken from here:
https://github.com/FollyMaddy/RetroPie-Share/blob/main/readme-post-one-thread.md
--------------------------------------------
Run RetroPie-Setup and go to :
Configuration / tools
add-mamedev-systems
Now you can install :

lr-mess/mame <-- make sure you do this first, otherwise you can't add systems !
lr-mess/mame systems
the handhelds by @DTEAM
link to the handheld and plug & play systems of @DTEAM
special systems with added slot-devices (for example : nes_datach,famicom_disksys,famicom_famibs3)
other systems that are mentioned in the threads
download retropie-gamelists
download mame-artwork
create overlays from mame-artwork for running handhelds with lr-mess
(make sure you put the BIOS files in -->> ~/RetroPie/BIOS/mame
--------------------------------------------
To install "$1"
In MAMEDEV Systems Menu
- Install System Default Settings
- Predefined Sorts List
- Upoun Systems
- "$1" " 0 0
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

function download-bbcmicro() {
if [ ! -d "$HOME/RetroPie/roms/bbcmicro/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL BBC MICRO EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) curl -sSL bit.ly/BBC-Installer | bash ;;
      2) Consoles-Menu ;;
      *) return ;;
    esac
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/bbcmicro/ -P "$HOME"/RetroPie/roms/bbcmicro -erobots=off
rm -f "$HOME"/RetroPie/roms/bbcmicro/index.html.tmp
fi
}

function download-pokitto() {
if [ ! -d "$HOME/RetroPie/roms/pokitto/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL POKITTO EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) curl -sSL bit.ly/Pokitto-Installer | bash ;;
      2) Consoles-Menu ;;
      *) return ;;
    esac
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/bbcmicro/ -P "$HOME"/RetroPie/roms/bbcmicro -erobots=off
rm -f "$HOME"/RetroPie/roms/bbcmicro/index.html.tmp
fi
}

function lightgun-packs() {
bash "$HOME"/Devils-Box/scripts/PI-4/PI-4-Lightgun-Packs.sh
}


function special-packs() {
bash "$HOME"/Devils-Box/scripts/Special-Packs.sh
}


Consoles-Menu
