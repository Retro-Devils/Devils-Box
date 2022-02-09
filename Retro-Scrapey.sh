wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  NETCHECK=0
else
  NETCHECK=1
fi
function main_menu() {
dialog  --sleep 1 --title "Retro Scrapey V:1.00" --msgbox "

Retro Scrapey Info
*So you can use your imported scrapes & scrape online easy. 
*Made By The Retro Devils

Featuring The Following: 
--Scrapes to the following locations:
       BOXART   .../RetroPie/rom/system-name/boxart
       VIDEOS   .../RetroPie/roms/system-name/snap
       MARQUEES .../RetroPie/roms/system-name/wheel
--Skips files you already have. 
--Scrapes info, boxart, marquee. *Attempts to get video.
--Retro Scrapey uses these sources to scrape:
     **The GamesDB 
     **Screenscraper
     **Open Vault Game Database" 0 0
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR !! " --msgbox " 
Offline...Connect Internet To Use Retro Scrapey!" 0 0
else
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "Retro Scrapey" \
     --ok-button Select --cancel-button Exit \
     --menu " Select Type Of Scrapping" 30 50 50 \
      1 "System Select For All Media " \
      2 "System Select For Info Only " \
      3 "Scrape All Systems All Media Now" \
      4 "Scrape All Systems Info ONly Now" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) scrape-media ;;
    2) scrape-info  ;;
    3) all-media    ;;
    4) all-info     ;;
    *) break ;;
    esac
  done
fi
}
function scrape-media() {
local choice
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "Retro Scrapey" \
     --ok-button Scrape --cancel-button Back \
     --menu "SELECT SYSTEM TO SCRAPE" 30 50 50 \
      1 "AmstradCPC" \
      2 "Arcade" \
      3 "Atari800" \
      4 "Atari2600" \
      5 "Atari5200" \
      6 "Atari7800" \
      7 "Atari Lynx" \
      8 "AtomisWave" \
      9 "Daphne" \
      10 "Dreamcast" \
      11 "Final Burn Alpha" \
      12 "Family Disk System" \
      13 "GameGear" \
      14 "Gameboy" \
      15 "Gameboy Advance" \
      16 "Gameboy Advance Hacks" \
      17 "GenesisHacks" \
      18 "GameGear Hacks" \
      19 "MAME " \
      20 "MAME Advance" \
      21 "Mastersytem" \
      22 "MegaDrive" \
      23 "Model 3" \
      24 "Mugens " \
      25 "Nintendo 64 " \
      26 "Naomi" \
      27 "NintendoDS " \
      28 "NeoGEo" \
      29 "NES" \
      30 "NES Hacks" \
      31 "NeoGeo Pocket" \
      32 "PC Engine" \
      33 "Ports" \
      34 "PSP" \
      35 "Playstation" \
      36 "Sega Saturn" \
      37 "Sega32X" \
      38 "SegaCD " \
      39 "SNES" \
      40 "Vectrex" \
      41 "VirtualBoy" \
      42 "Wine" \
      43 "Zxspectrum" \
      2>&1 >/dev/tty)

    case "$choice" in
      1) media "amstradcpc" ;;
      2) media "arcade" ;;
      3) media "atari800" ;;
      4) media "atari2600" ;;
      5) media "atari5200" ;;
      6) media "atari7800" ;;
      7) media "atarilynx" ;;
      8) media "atomiswave" ;;
      9) media "daphne" ;;
      10) media "dreamcast" ;;
      11) media "fba" ;;
      12) media "fds" ;;
      13) media "gamegear" ;;
      14) media "gb" ;;
      15) media "gba" ;;
      16) media "gbah" ;;
      17) media "genh" ;;
      18) media "ggh" ;;
      19) media "mame" ;;
      20) media "mame-advmame" ;;
      21) media "mastersytem" ;;
      22) media "megaDrive" ;;
      23) media "model3" ;;
      24) media "mugens" ;;
      25) media "n64" ;;
      26) media "naomi" ;;
      27) media "nds" ;;
      28) media "neogeo" ;;
      29) media "nes" ;;
      30) media "nesh" ;;
      31) media "ngp" ;;
      32) media "pce" ;;
      33) media "ports" ;;
      34) media "psp" ;;
      35) media "psx" ;;
      36) media "saturn" ;;
      37) media "sega32x" ;;
      38) media "segacd" ;;
      39) media "snes" ;;
      40) media "vectrex" ;;
      41) media "virtualBoy" ;;
      42) media "wine" ;;
      43) media "zxspectrum" ;;
    *) break ;;
    esac
  done
}
function scrape-info() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "Retro Scrapey" \
     --ok-button Scrape --cancel-button Back \
     --menu "SELECT SYSTEM TO SCRAPE" 30 50 50 \
      1 "AmstradCPC" \
      2 "Arcade" \
      3 "Atari800" \
      4 "Atari2600" \
      5 "Atari5200" \
      6 "Atari7800" \
      7 "Atari Lynx" \
      8 "AtomisWave" \
      9 "Daphne" \
      10 "Dreamcast" \
      11 "Final Burn Alpha" \
      12 "Family Disk System" \
      13 "GameGear" \
      14 "Gameboy" \
      15 "Gameboy Advance" \
      16 "Gameboy Advance Hacks" \
      17 "GenesisHacks" \
      18 "GameGear Hacks" \
      19 "MAME " \
      20 "MAME Advance" \
      21 "Mastersytem" \
      22 "MegaDrive" \
      23 "Model 3" \
      24 "Mugens " \
      25 "Nintendo 64 " \
      26 "Naomi" \
      27 "NintendoDS " \
      28 "NeoGEo" \
      29 "NES" \
      30 "NES Hacks" \
      31 "NeoGeo Pocket" \
      32 "PC Engine" \
      33 "Ports" \
      34 "PSP" \
      35 "Playstation" \
      36 "Sega Saturn" \
      37 "Sega32X" \
      38 "SegaCD " \
      39 "SNES" \
      40 "Vectrex" \
      41 "VirtualBoy" \
      42 "Wine" \
      43 "Zxspectrum" \
      2>&1 >/dev/tty)

    case "$choice" in
      1) info "amstradcpc" ;; 
      2) info "arcade" ;;
      3) info "atari800" ;;
      4) info "atari2600" ;;
      5) info "atari5200" ;;
      6) info "atari7800" ;;
      7) info "atarilynx" ;;
      8) info "atomiswave" ;;
      9) info "daphne" ;;
      10) info "dreamcast" ;;
      11) info "fba" ;;
      12) info "fds" ;;
      13) info "gamegear" ;;
      14) info "gb" ;;
      15) info "gba" ;;
      16) info "gbah" ;;
      17) info "genh" ;;
      18) info "ggh" ;;
      19) info "mame" ;;
      20) info "mame-advmame" ;;
      21) info "mastersytem" ;;
      22) info "megadrive" ;;
      23) info "model3" ;;
      24) info "mugens" ;;
      25) info "n64" ;;
      26) info "naomi" ;;
      27) info "nds" ;;
      28) info "neogeo" ;;
      29) info "nes" ;;
      30) info "nesh" ;;
      31) info "ngp" ;;
      32) info "pce" ;;
      33) info "ports" ;;
      34) info "psp" ;;
      35) info "psx" ;;
      36) info "saturn" ;;
      37) info "sega32x" ;;
      38) info "segacd " ;;
      39) info "snes" ;;
      40) info "vectrex" ;;
      41) info "virtualBoy" ;;
      42) info "wine" ;;
      43) info "zxspectrum" ;;
    *) break ;;
    esac
  done
}

function info() {
clear
cd "$HOME"/RetroPie/roms/"${1}"
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
}

function media() {
clear
cd "$HOME"/RetroPie/roms/"${1}"
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=true -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=true -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=true -video_suffix="" -refresh -console_src gdb,ss,ovgdb
}
function all-media() {
clear
cd "$HOME"/RetroPie/roms/
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=true -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=true -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=true -video_suffix="" -refresh -console_src gdb,ss,ovgdb
}
function all-info() {
clear
cd "$HOME"/RetroPie/roms/
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
}

main_menu
