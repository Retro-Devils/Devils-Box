#!/bin/bash
clear

if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function Remove-Menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
while true; do
local choice
choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER TO REMOVE PACK" 30 70 50 \
      1 " Remove Amiga" \
      2 " Remove AmigaCD32" \
      3 " Remove Amstrad CPC" \
      4 " Remove Arcade" \
      5 " Remove Arcadia" \
      6 " Remove Astrocade" \
      7 " Remove Atari800" \
      8 " Remove Atari2600" \
      9 " Remove Atari5200" \
      10 " Remove Atari7800" \
      11 " Remove AtariLynx" \
      12 " Remove AtariST" \
      13 " Remove Atomiswave" \
      14 " Remove Commadore64" \
      15 " Remove Colecovision" \
      16 " Remove Dragon32" \
      17 " Remove Dreamcast" \
      18 " Remove Electron" \
      19 " Remove Famicon" \
      20 " Remove Famicom Disk" \
      21 " Remove Game and Watch" \
      22 " Remove Gameboy" \
      23 " Remove Gameboy Advance" \
      24 " Remove Gameboy Color" \
      25 " Remove Gamegear" \
      26 " Remove Intellivision" \
      27 " Remove Lightgun" \
      28 " Remove MarkIII" \
      29 " Remove Mastersystem" \
      30 " Remove Genesis/Megadrive" \
      31 " Remove Genesis/Megadrive-Japan" \
      32 " Remove MSX" \
      33 " Remove MSX 2" \
      34 " Remove Nintendo 64" \
      35 " Remove Naomi" \
      36 " Remove Nintendo DS" \
      37 " Remove NeoGeo" \
      38 " Remove Neo Geo Pocket Color" \
      39 " Remove NES" \
      40 " Remove Openbor" \
      41 " Remove Oric" \
      42 " Remove Pokemini" \
      43 " Remove PlayStation 1" \
      44 " Remove PSP" \
      45 " Remove Sega Saturn" \
      46 " Remove Sega Saturn Japan" \
      47 " Remove ScummVM" \
      48 " Remove Sega32x" \
      49 " Remove SegaCD" \
      50 " Remove Super Famicon" \
      51 " Remove SG-1000" \
      52 " Remove SNES" \
      53 " Remove SNES MSU1" \
      54 " Remove SuperGraffiix" \
      55 " Remove Turbo Graffix 16" \
      56 " Remove Vectrex" \
      57 " Remove VideoPAC" \
      58 " Remove Virtual Boy" \
      59 " Remove Dreamcast" \
      60 " Remove Wonderswan Color" \
      61 " Remove Sharp X1" \
      62 " Remove Sharp X68000" \
      63 " Remove ZMachine" \
      64 " Remove ZXSpectrum" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) remove-packs "amiga" ;;
    2) remove-packs "amigacd32" ;;
    3) remove-packs "amstradcpc" ;;
    4) remove-packs "arcade" ;;
    5) remove-packs "arcadia" ;;
    6) remove-packs "astrocade" ;;
    7) remove-packs "atari800" ;;
    8) remove-packs "atari2600" ;;
    9) remove-packs "atari5200" ;;
    10) remove-packs "atari7800" ;;
    11) remove-packs "atarilynx" ;;
    12) remove-packs "atarist" ;;
    13) remove-packs "atomiswave" ;;
    14) remove-packs "c64" ;;
    15) remove-packs "coleco" ;;
    16) remove-packs "dragon32" ;;
    17) remove-packs "dreamcast" ;;
    18) remove-packs "electron" ;;
    19) remove-packs "famicon" ;;
    20) remove-packs "fds" ;;
    21) remove-packs "gameandwatch" ;;
    22) remove-packs "gb" ;;
    23) remove-packs "gba" ;;
    24) remove-packs "gbc" ;;
    25) remove-packs "gamegear" ;;
    26) remove-packs "intellivision" ;;
    27) remove-packs "lightgun" ;;
    28) remove-packs "markiii" ;;
    29) remove-packs "mastersystem" ;;
    30) remove-packs "megadrive" ;;
    31) remove-packs "megadrive-japan" ;;
    32) remove-packs "msx" ;;
    33) remove-packs "msx2" ;;
    34) remove-packs "n64" ;;
    35) remove-packs "naomi" ;;
    36) remove-packs "nds" ;;
    37) remove-packs "neogeo" ;;
    38) remove-packs "ngpc" ;;
    39) remove-packs "nes" ;;
    40) remove-packs "openbor" ;;
    41) remove-packs "oric" ;;
    42) remove-packs "pokemini" ;;
    43) remove-packs "psx" ;;
    44) remove-packs "psp" ;;
    45) remove-packs "saturn" ;;
    46) remove-packs "saturn-japan" ;;
    47) remove-packs "scummvm" ;;
    48) remove-packs "sega32x" ;;
    49) remove-packs "segacd" ;;
    50) remove-packs "sfc" ;;
    51) remove-packs "sg-1000" ;;
    52) remove-packs "snes" ;;
    53) remove-packs "snes-msu1 ;;
    54) remove-packs "supergrafx" ;;
    55) remove-packs "tg16" ;;
    56) remove-packs "vectrex" ;;
    57) remove-packs "videopac" ;;
    58) remove-packs "virtualboy" ;;
    59) remove-packs "vmu" ;;
    60) remove-packs "wonderswancolor" ;;
    61) remove-packs "x1" ;;
    62) remove-packs "x68000" ;;
    63) remove-packs "zmachine" ;;
    64) remove-packs "zxspectrum" ;;  
     +) none  ;;
     *) break ;;
    esac
   done
fi
}

function remove-packs {
if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "NO GAMES PRESENT " 6 40;
else
clear
sudo rm -R "$HOME"/RetroPie/roms/"${1}"
mk dir "$HOME"/RetroPie/roms/"${1}"
fi
}



Remove-Menu
