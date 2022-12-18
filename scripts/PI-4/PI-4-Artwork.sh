#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
#-----------INTRO VIDEO-----------#
clear
if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
omxplayer "$HOME"/Devils-Box/files/videos/art-packs.mp4 > /dev/null 2>&1
sleep 1
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
fi

#--------ART HOSTS----------#
ART_HOST="https://archive.org/download/devils-box-media-alt"
ART_HOST2="https://github.com/Retro-Devils-Media"
#ART_HOST3=""
#ART_HOST4=""


if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function artwork-menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
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
      13 "BBC Micro Artwork        [*]box  [ ]cart  [*]snap  [*]wheel" \
      14 "Atomiswave               [*]box  [*]cart  [*]snap  [*]wheel" \
      15 "Commadore64 Artwork      [*]box  [*]cart  [*]snap  [*]wheel" \
      16 "Coleco Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      17 "Daphne Artwork **NEW**   [*]box  [ ]cart  [*]snap  [*]wheel" \
      18 "Dragon32 Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      19 "Dreamcast Artwork        [*]box  [ ]cart  [*]snap  [ ]wheel" \
      20 "Electron                 [ ]box  [ ]cart  [*]snap  [*]wheel" \
      21 "Famicon Artwork          [*]box  [ ]cart  [*]snap  [ ]wheel" \
      22 "FDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      23 "Game & Watch Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      24 "Gameboy Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      25 "GBA Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      26 "GBC Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      27 "Gamegear Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      28 "Intellivision Artwork    [*]box  [ ]cart  [ ]snap  [*]wheel" \
      29 "***Lightgun Artwork***   [*]box  [*]cart  [*]snap  [ ]wheel" \
      30 "MarkIII Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
      31 "Mastersystem Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      32 "Megadrive Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      33 "Megadrive-Japan Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      34 "Model 3 Artwork          [ ]box  [ ]cart  [*]snap  [ ]wheel" \
      35 "MSX Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      36 "MSX2 Artwork             [*]box  [*]cart  [*]snap  [*]wheel" \
      37 "N64 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      38 "Naomi Artwork            [*]box  [ ]cart  [*]snap  [*]wheel" \
      39 "NDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      40 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      41 "NES Artwork              [*]box  [ ]cart  [*]snap  [*]wheel" \
      42 "NGPC Artwork             [*]box  [ ]cart  [*]snap  [ ]wheel" \
      43 "Openbor Artwork          [*]box  [ ]cart  [*]snap  [*]wheel" \
      44 "Oric Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      45 "Pokemini Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      46 "Pokitto Artwork          [*]box  [ ]cart  [*]snap  [ ]wheel" \
      47 "***PC Engine Artwork***  [*]box  [*]cart  [*]snap  [ ]wheel" \
      48 "PS1 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      49 "Saturn Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      50 "Saturn-Japan Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      51 "Scummvm Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      52 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      53 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      54 "Super Famicon Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      55 "SG-1000 Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      56 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      57 "SuperGrafx Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      58 "TurboGrafx 16 Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      59 "Vectrex Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      60 "Videopac Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      61 "Virtualboy Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      62 "VMU Artwork              [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      63 "Wine Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      64 "WonderswanColor Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      65 "Sharp x1 Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      66 "Sharp x68000 Artwork     [*]box  [ ]cart  [*]snap  [*]wheel" \
      67 "ZMachine Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      68 "ZXspectrum Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      +  "<---------------Consoles-Hacks-Artwork-------------------->" \
      69 "GBA Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      70 "GameBoy Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      71 "Genesis Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      72 "Gamegear Hacks Artwork   [*]box  [*]cart  [*]snap  [*]wheel" \
      73 "NES Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      74 "SNES Hacks Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      2<&1 >/dev/tty)

    case "$choice" in
      1) download-art "amiga" "lr-puae" ;;
      2) download-art "amigacd32" "lr-puae" ;;
      3) download-art "amstradcpc" "lr-caprice32" ;;
      4) download-art "arcade" "lr-mame2003" ;;
      5) download-art "arcadia" ;;
      6) download-art "astrocade" ;;
      7) download-art "atari800" ;;
      8) download-art "atari2600" "lr-stella" ;;
      9) download-art "atari5200" "lr-atari800" ;;
      10) download-art"atari7800" "lr-prosystem" ;;
      11) download-art "atarilynx" "lr-beetle-lynx" ;;
      12) download-art"atarist" "lr-hatari" ;;
      13) download-art "atomiswave" ;;
      14) download-bbc-art "bbcmicro" ;;
      15) download-art "c64" ;;
      16) download-art "coleco" "lr-bluemsx" ;;
      17) download-art "daphne" ;;
      18) download-art "dragon32" "xroar" ;;
      19) download-art "dreamcast" "redream" ;;
      20) download-art "electron" ;;
      21) download-art "famicon" ;;
      22) download-art "fds" ;;
      23) download-art "gameandwatch" ;;
      24) download-art "gb" ;;
      25) download-art "gba" "lr-mgba" ;;
      26) download-art "gbc" ;;
      27) download-art "gamegear" "lr-genesis-plus-gx" ;;
      28) download-art "intellivision" "lr-freeintv" ;;
      29) download-art "lightgun" ;;
      30) download-art "markiii" ;;
      31) download-art "mastersystem" ;;
      32) download-art "megadrive" "lr-genesis-plus-gx" ;;
      33) megadrive-japan-art ;;
      34) download-art "model3" ;;
      35) download-art "msx" ;;
      36) download-art "msx2" ;;
      37) download-art "n64" ;;
      38) download-art "naomi" ;;
      39) download-art "nds" ;;
      40) download-art "neogeo" ;;
      41) download-art "nes" ;;
      42) download-art "ngpc" ;;
      43) download-art "openbor" ;;
      44) download-art "oric" ;;
      45) download-art "pokemini" ;;
      46) download-pokitto-art "pokitto" ;;
      47) download-art "pc-engine" ;;
      48) download-art "psx" "lr-pcsx_rearmed" ;;
      49) download-art "saturn" "lr-yabause" ;;
      50) saturn-japan-art ;;
      51) download-art "scummvm" ;;
      52) download-art "sega32x" ;;
      53) download-art "segacd" ;;
      54) download-art "sfc" ;;
      55) download-art "sg-1000" ;;
      56) download-art "snes" ;;
      57) download-art "supergrafx" ;;
      58) download-art "tg16" ;;
      59) download-art "vectrex" ;;
      50) download-art "videopac" ;;
      61) download-art "virtualboy" ;;
      62) download-art "vmu"  ;;
      63) download-art "wine" ;;
      64) download-art "wonderswancolor" ;;
      65) download-art "x1" ;;
      66) download-art "x68000" ;;
      67) download-art "zmachine" ;;
      68) download-art "zxspectrum" ;;
      69) download-art "gbah" ;;
      70) download-art "gbh" ;;
      71) download-art "genh" ;;
      72) download-art "ggh" ;;
      73) download-art "nesh" ;;
      74) download-art "snesh" ;;
      -) nono  ;;
      +) none  ;;
      *) break ;;
    esac
  done
fi
}

function download-art() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL "${1}" EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" ;;
      2) artwork-menu ;;
      *) return ;;
    esac
else
clear
cd "$HOME/RetroPie/roms/"${1}"/"
git init
git remote add origin "${ART_HOST2}/${1}.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
fi
}

function download-bbc-art() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) curl -sSL bit.ly/BBC-Installer | bash ;;
      2) artwork-menu ;;
      *) return ;;
    esac
else
clear
cd "$HOME/RetroPie/roms/"${1}"/"
git init
git remote add origin "${ART_HOST2}/${1}.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
fi
}

function download-pokitto-art() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) curl -sSL https://bit.ly/Pokitto-Installer | bash ;;
      2) artwork-menu ;;
      *) return ;;
    esac
else
clear
cd "$HOME/RetroPie/roms/"${1}"/"
git init
git remote add origin "${ART_HOST2}/${1}.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
fi
}

function saturn-japan-art() {
if [ ! -d "$HOME/RetroPie/roms/saturn/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" ;;
      2) artwork-menu ;;
      *) return ;;
    esac
elseclear
cd "$HOME"/RetroPie/roms/saturn/japan
git init
git remote add origin "${ART_HOST2}/saturn-japan.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
fi
}

function megadrive-japan-art() {
if [ ! -d "$HOME/RetroPie/roms/megadrive/" ]; then choice=$(dialog --backtitle "$BACKTITLE" --title " EMU IS MISSING " \
      --ok-label Download --cancel-label Skip \
      --menu "DO YOU WANT TO INSTALL EMU?" 30 70 50 \
      1 "YES" \
      2 "NO" \
      2<&1 >/dev/tty)
    case "$choice" in
      1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" ;;
      2) artwork-menu ;;
      *) return ;;
    esac
elseclear
cd "$HOME"/RetroPie/roms/megadrive/japan
git init
git remote add origin "${ART_HOST2}/megadrive-japan.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
fi
}

artwork-menu
