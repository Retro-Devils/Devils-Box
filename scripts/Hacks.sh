#!/bin/bash
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine"
HOST5="https://archive.org/download/devils-dos"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"

if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function hacks-menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
dialog  --sleep 1 --title "HACKS PACKS INFO" --msgbox " 
<-------------WELCOME--------------->
WHATS THIS DO?
-DOWNLOADS GAME PACKS TO CORRECT FOLDERS
-TRYS TO SCRAPE AFTERWARDS 
F.A.Q
WILL THIS OVERWRITE MY GAMES?
NOPE 
 
CAN I STOP MIDWAY THRU?
SURE PRESS CONTROL+C
WILL IT KEEP MY PROGRESS?
YES. GAMES WILL BE THIER 
BUT THEY WONT SCRAPE" 0 0
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED PACKS DOWNLOAD MENU " \
     --ok-button Download --cancel-button Main-Menu \
     --menu " PRESS A/ENTER TO DOWNLOAD PACK" 30 70 50 \
      + "<->CONSOLE NAME<--------------------->SIZE<---># OF GAMES " \
      1 "Gameboy Advance Hacks                  195MB     26 GAMES " \
      2 "Gameboy Hacks                            4MB     19 GAMES " \
      3 "Genesis Hacks                          197MB    191 GAMES " \
      4 "Gamegear Hacks                           1MB      4 GAMES " \
      5 "NES Hacks                              962KB      6 GAMES " \
      6 "SNES Hacks                              40MB     37 GAMES " \
      + "--------------------------------------------------------- " \
      7 "Apply/Update Hacks Configs                      6 Configs " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) download-hacks "gbah" ;;
    2) download-hacks "gbh" ;;
    3) download-hacks "genh" ;;
    4) download-hacks "ggh" ;;
    5) download-hacks "nesh" ;;
    6) download-hacks "snesh" ;;
    7) hacks-config ;;
    *) break ;;
    esac
  done
fi
}

function hacks-config() {
clear
sleep 2 
echo ${bld}$(tput setaf 1)"Copying Your/Default Configs"
sleep 2
cp -r /opt/retropie/configs/gba /opt/retropie/configs/gbah
cp -r /opt/retropie/configs/gb /opt/retropie/configs/gbh
cp -r /opt/retropie/configs/megadrive /opt/retropie/configs/genh
cp -r /opt/retropie/configs/gamegear /opt/retropie/configs/ggh
cp -r /opt/retropie/configs/nes /opt/retropie/configs/nesh
cp -r /opt/retropie/configs/snes /opt/retropie/configs/snesh
sleep 2
echo "Making Directories For Hacks"
sleep 2
mkdir "$HOME"/RetroPie/roms/gbah
mkdir "$HOME"/RetroPie/roms/gb
mkdir "$HOME"/RetroPie/roms/genh
mkdir "$HOME"/RetroPie/roms/ggh
mkdir "$HOME"/RetroPie/roms/nesh
mkdir "$HOME"/RetroPie/roms/snesh
}

function download-hacks() {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Apply Hacks Config" 6 40;
else
clear
wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/"${1}"/ -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
cd "$HOME/RetroPie/roms/"${1}"/"
/opt/retropie/supplementary/scraper/scraper -img_format=png -image_dir="./boxart" -image_path="./boxart" -download_images=false -image_suffix="" -marquee_dir="./wheel" -marquee_path="./wheel" -download_marquees=false -marquee_suffix="" -video_dir="./snap" -video_path="./snap" -download_videos=false -video_suffix="" -refresh -console_src gdb,ss,ovgdb
fi
}

function hacks-config() {
clear
sleep 2 
echo ${bld}$(tput setaf 1)"Copying Your/Default Configs"
sleep 2
cp -r /opt/retropie/configs/gba /opt/retropie/configs/gbah
cp -r /opt/retropie/configs/gb /opt/retropie/configs/gbh
cp -r /opt/retropie/configs/megadrive /opt/retropie/configs/genh
cp -r /opt/retropie/configs/gamegear /opt/retropie/configs/ggh
cp -r /opt/retropie/configs/nes /opt/retropie/configs/nesh
cp -r /opt/retropie/configs/snes /opt/retropie/configs/snesh
sleep 2
echo "Making Directories For Hacks"
sleep 2
mkdir "$HOME"/RetroPie/roms/gbah
mkdir "$HOME"/RetroPie/roms/gb
mkdir "$HOME"/RetroPie/roms/genh
mkdir "$HOME"/RetroPie/roms/ggh
mkdir "$HOME"/RetroPie/roms/nesh
mkdir "$HOME"/RetroPie/roms/snesh
}

hacks-menu
