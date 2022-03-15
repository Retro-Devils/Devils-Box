#!/bin/bash
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
      51 "Super Famicon Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      52 "SG-1000 Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      53 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
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
      +  "<---------------Consoles-Hacks-Artwork-------------------->" \
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

artwork-menu
