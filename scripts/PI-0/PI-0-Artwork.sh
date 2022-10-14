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
      1 "Atari800 Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      2 "Atari2600 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      3 "Atari5200 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      4 "Atari7800 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      5 "Dragon32 Artwork         [*]box  [ ]cart  [*]snap  [ ]wheel" \
      6 "Game & Watch Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      7 "Gameboy Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      8 "GBA Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      9 "GBC Artwork              [*]box  [*]cart  [*]snap  [*]wheel" \
      10 "Gamegear Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
      11 "Mastersystem Artwork     [*]box  [*]cart  [*]snap  [*]wheel" \
      12 "Megadrive Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      13 "Megadrive-Japan Artwork  [*]box  [*]cart  [*]snap  [*]wheel" \
      14 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      15 "NES Artwork              [*]box  [ ]cart  [*]snap  [*]wheel" \
      16 "NGPC Artwork             [*]box  [ ]cart  [*]snap  [ ]wheel" \
      17 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      18 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [*]wheel" \
      19 "Super Famicon Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      20 "SG-1000 Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
      21 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
      22 "TurboGrafx 16 Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      +  "<---------------Consoles-Hacks-Artwork-------------------->" \
      23 "GBA Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      24 "GameBoy Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      25 "Genesis Hacks Artwork    [*]box  [*]cart  [*]snap  [*]wheel" \
      26 "Gamegear Hacks Artwork   [*]box  [*]cart  [*]snap  [*]wheel" \
      27 "NES Hacks Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
      28 "SNES Hacks Artwork       [*]box  [*]cart  [*]snap  [*]wheel" \
      2<&1 >/dev/tty)

    case "$choice" in
      1) download-art "atari800" ;;
      2) download-art "atari2600" "lr-stella" ;;
      3) download-art "atari5200" "lr-atari800" ;;
      4) download-art"atari7800" "lr-prosystem" ;;
      5) download-art "dragon32" "xroar" ;;
      6) download-art "gameandwatch" ;;
      7) download-art "gb" ;;
      8) download-art "gba" "lr-mgba" ;;
      9) download-art "gbc" ;;
      10) download-art "gamegear" "lr-genesis-plus-gx" ;;
      11) download-art "mastersystem" ;;
      12) download-art "megadrive" "lr-genesis-plus-gx" ;;
      13) megadrive-japan-art ;;
      14) download-art "neogeo" ;;
      15) download-art "nes" ;;
      16) download-art "ngpc" ;;
      17) download-art "sega32x" ;;
      18) download-art "segacd" ;;
      19) download-art "sfc" ;;
      20) download-art "sg-1000" ;;
      21) download-art "snes" ;;
      22) download-art "tg16" ;;
      23) download-art "gbah" ;;
      24) download-art "gbh" ;;
      25) download-art "genh" ;;
      26) download-art "ggh" ;;
      27) download-art "nesh" ;;
      28) download-art "snesh" ;;
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
      --menu "DO YOU WANT TO INSTALL EMU?" 30 70 50 \
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
