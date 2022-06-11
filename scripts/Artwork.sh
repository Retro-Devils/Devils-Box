#!/bin/bash
#-----------INTRO VIDEO-----------#
clear
omxplayer "$HOME"/Devils-Box/files/videos/art-packs.mp4 > /dev/null 2>&1

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
      33 "Model 3 Artwork          [ ]box  [ ]cart  [*]snap  [ ]wheel" \
      34 "MSX Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      35 "MSX2 Artwork             [*]box  [*]cart  [*]snap  [*]wheel" \
      36 "N64 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      37 "Naomi Artwork            [*]box  [ ]cart  [*]snap  [*]wheel" \
      38 "NDS Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      39 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      40 "NES Artwork              [*]box  [ ]cart  [*]snap  [*]wheel" \
      41 "NGPC Artwork             [*]box  [ ]cart  [*]snap  [ ]wheel" \
      42 "Openbor Artwork          [*]box  [ ]cart  [*]snap  [*]wheel" \
      43 "Oric Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      44 "Pokemini Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      45 "***PC Engine Artwork***  [*]box  [*]cart  [*]snap  [ ]wheel" \
      46 "PS1 Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      47 "Saturn Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      48 "Saturn-Japan Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      49 "Scummvm Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      50 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      51 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      52 "Super Famicon Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      53 "SG-1000 Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      54 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      55 "SuperGrafx Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      56 "TurboGrafx 16 Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      57 "Vectrex Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      58 "Videopac Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      59 "Virtualboy Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      60 "VMU Artwork              [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      61 "Wine Artwork             [*]box  [ ]cart  [ ]snap  [ ]wheel" \
      62 "WonderswanColor Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      63 "Sharp x1 Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      64 "Sharp x68000 Artwork     [*]box  [ ]cart  [*]snap  [*]wheel" \
      65 "ZMachine Artwork         [*]box  [*]cart  [*]snap  [*]wheel" \
      66 "ZXspectrum Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      +  "<---------------Consoles-Hacks-Artwork-------------------->" \
      67 "GBA Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      68 "GameBoy Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      69 "Genesis Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      70 "Gamegear Hacks Artwork   [*]box  [*]cart  [*]snap  [*]wheel" \
      71 "NES Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      72 "SNES Hacks Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
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
      33) download-art "model3" ;;
      34) download-art "msx" ;;
      35) download-art "msx2" ;;
      36) download-art "n64" ;;
      37) download-art "naomi" ;;
      38) download-art "nds" ;;
      39) download-art "neogeo" ;;
      40) download-art "nes" ;;
      41) download-art "ngpc" ;;
      42) download-art "openbor" ;;
      43) download-art "oric" ;;
      44) download-art "pokemini" ;;
      45) download-art "pc-engine" ;;
      46) download-art "psx" ;;
      47) download-art "saturn" ;;
      48) download-art "saturn-japan" ;;
      49) download-art "scummvm" ;;
      50) download-art "sega32x" ;;
      51) download-art "segacd" ;;
      52) download-art "sfc" ;;
      53) download-art "sg-1000" ;;
      54) download-art "snes" ;;
      55) download-art "supergrafx" ;;
      56) tg16-art ;;
      57) download-art "vectrex" ;;
      58) download-art "videopac" ;;
      59) download-art "virtualboy" ;;
      60) download-art "vmu"  ;;
      61) download-art "wine" ;;
      62) download-art "wonderswancolor" ;;
      63) download-art "x1" ;;
      64) download-art "x68000" ;;
      65) download-art "zmachine" ;;
      66) download-art "zxspectrum" ;;
      67) download-art "gbah" ;;
      68) download-art "gbh" ;;
      69) download-art "genh" ;;
      70) download-art "ggh" ;;
      71) download-art "nesh" ;;
      72) download-art "snesh" ;;
      -) nono  ;;
      +) none  ;;
      *) break ;;
    esac
  done
fi
}

function download-art() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40; else
clear
cd "$HOME/RetroPie/roms/"${1}"/"
git init
git remote add origin "${ART_HOST2}/${1}.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
fi
}
function tg16-art() {
if [ ! -d "$HOME/RetroPie/roms/pcengine/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40; else
clear
cd "$HOME/RetroPie/roms/pcengine/"
git init
git remote add origin "${ART_HOST2}/${1}.git"
git fetch
git pull origin main
rm -fr "$HOME"/RetroPie/roms/"${1}"/.git
fi
}
artwork-menu
