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
      5 "Update Retro Scrapey" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) scrape-media ;;
    2) scrape-info  ;;
    3) all-media    ;;
    4) all-info     ;;
    5) up-scrapey   ;;
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
      1 "Amiga" \
      2 "AmstradCPC" \
      3 "Arcade" \
      4 "Atari800" \
      5 "Atari2600" \
      6 "Atari5200" \
      7 "Atari7800" \
      8 "Atari Lynx" \
      9 "AtomisWave" \
      10 "Daphne" \
      11 "Dreamcast" \
      12 "Final Burn Alpha" \
      13 "Family Disk System" \
      14 "GameGear" \
      15 "Gameboy" \
      16 "Gameboy Advance" \
      17 "Gameboy Advance Hacks" \
      18 "GenesisHacks" \
      19 "GameGear Hacks" \
      20 "MAME " \
      21 "MAME Advance" \
      22 "Mastersytem" \
      23 "MegaDrive" \
      24 "Model 3" \
      25 "Mugens " \
      26 "Nintendo 64 " \
      27 "Naomi" \
      28 "NintendoDS " \
      29 "NeoGEo" \
      30 "NES" \
      31 "NES Hacks" \
      32 "NeoGeo Pocket" \
      33 "PC Engine" \
      34 "Ports" \
      35 "PSP" \
      36 "Playstation" \
      37 "Sega Saturn" \
      38 "Sega32X" \
      39 "SegaCD " \
      40 "SNES" \
      41 "Vectrex" \
      42 "VirtualBoy" \
      43 "Wine" \
      44 "Zxspectrum" \
      2>&1 >/dev/tty)

    case "$choice" in
      1) media "amiga" ;;
      2) media "amstradcpc" ;;
      3) media "arcade" ;;
      4) media "atari800" ;;
      5) media "atari2600" ;;
      6) media "atari5200" ;;
      7) media "atari7800" ;;
      8) media "atarilynx" ;;
      9) media "atomiswave" ;;
      10) media "daphne" ;;
      11) media "dreamcast" ;;
      12) media "fba" ;;
      13) media "fds" ;;
      14) media "gamegear" ;;
      15) media "gb" ;;
      16) media "gba" ;;
      17) media "gbah" ;;
      18) media "genh" ;;
      19) media "ggh" ;;
      20) media "mame" ;;
      21) media "mame-advmame" ;;
      22) media "mastersytem" ;;
      23) media "megaDrive" ;;
      24) media "model3" ;;
      25) media "mugens" ;;
      26) media "n64" ;;
      27) media "naomi" ;;
      28) media "nds" ;;
      29) media "neogeo" ;;
      30) media "nes" ;;
      31) media "nesh" ;;
      32) media "ngp" ;;
      33) media "pce" ;;
      34) media "ports" ;;
      35) media "psp" ;;
      36) media "psx" ;;
      37) media "saturn" ;;
      38) media "sega32x" ;;
      39) media "segacd" ;;
      40) media "snes" ;;
      41) media "vectrex" ;;
      42) media "virtualBoy" ;;
      43) media "wine" ;;
      44) media "zxspectrum" ;;
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
      1 "Amiga" \
      2 "AmstradCPC" \
      3 "Arcade" \
      4 "Atari800" \
      5 "Atari2600" \
      6 "Atari5200" \
      7 "Atari7800" \
      8 "Atari Lynx" \
      9 "AtomisWave" \
      10 "Daphne" \
      11 "Dreamcast" \
      12 "Final Burn Alpha" \
      13 "Family Disk System" \
      14 "GameGear" \
      15 "Gameboy" \
      16 "Gameboy Advance" \
      17 "Gameboy Advance Hacks" \
      18 "GenesisHacks" \
      19 "GameGear Hacks" \
      20 "MAME " \
      21 "MAME Advance" \
      22 "Mastersytem" \
      23 "MegaDrive" \
      24 "Model 3" \
      25 "Mugens " \
      26 "Nintendo 64 " \
      27 "Naomi" \
      28 "NintendoDS " \
      29 "NeoGEo" \
      30 "NES" \
      31 "NES Hacks" \
      32 "NeoGeo Pocket" \
      33 "PC Engine" \
      34 "Ports" \
      35 "PSP" \
      36 "Playstation" \
      37 "Sega Saturn" \
      38 "Sega32X" \
      39 "SegaCD " \
      40 "SNES" \
      41 "Vectrex" \
      42 "VirtualBoy" \
      43 "Wine" \
      44 "Zxspectrum" \
      2>&1 >/dev/tty)

    case "$choice" in
      1) info "amiga" ;;
      2) info "amstradcpc" ;; 
      3) info "arcade" ;;
      4) info "atari800" ;;
      5) info "atari2600" ;;
      6) info "atari5200" ;;
      7) info "atari7800" ;;
      8) info "atarilynx" ;;
      9) info "atomiswave" ;;
      10) info "daphne" ;;
      11) info "dreamcast" ;;
      12) info "fba" ;;
      13) info "fds" ;;
      14) info "gamegear" ;;
      15) info "gb" ;;
      16) info "gba" ;;
      17) info "gbah" ;;
      18) info "genh" ;;
      19) info "ggh" ;;
      20) info "mame" ;;
      21) info "mame-advmame" ;;
      22) info "mastersytem" ;;
      23) info "megadrive" ;;
      24) info "model3" ;;
      25) info "mugens" ;;
      26) info "n64" ;;
      27) info "naomi" ;;
      28) info "nds" ;;
      29) info "neogeo" ;;
      30) info "nes" ;;
      31) info "nesh" ;;
      32) info "ngp" ;;
      33) info "pce" ;;
      34) info "ports" ;;
      35) info "psp" ;;
      36) info "psx" ;;
      37) info "saturn" ;;
      38) info "sega32x" ;;
      39) info "segacd " ;;
      40) info "snes" ;;
      41) info "vectrex" ;;
      42) info "virtualBoy" ;;
      43) info "wine" ;;
      44) info "zxspectrum" ;;
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
function up-scrapey() {
echo "---UPDATING RETRO SCRAPEY NOW---"
sleep 5
sudo rm -r "$HOME"/RetroPie/retropiemenu/Retro-Scrapey.sh
sudo rm -r /usr/local/bin/scrapey
wget https://raw.githubusercontent.com/Retro-Devils/Retro-Scrapey/main/Retro-Scrapey.sh -P "$HOME"/RetroPie/retropiemenu/
chmod 755 "$HOME"/RetroPie/retropiemenu/Retro-Scrapey.sh
sudo cp "$HOME"/RetroPie/retropiemenu/Retro-Scrapey.sh -f /usr/local/bin/scrapey
}

main_menu
