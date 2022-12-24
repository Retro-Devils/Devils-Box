
#!/bin/bash
##-------------------------##
##       HOST SITES        ##
##-------------------------##
HOST1="https://archive.org/download/devils-wine-packs"
HOST2="https://archive.org/download/thing-box"


function Special-Packs() {
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER SUBMENU" 30 70 50 \
      1 "Christmas Hack Packs " \
      2 "COMING SOON" \
      3 "COMING SOON" \
      4 "COMING SOON" \
      5 "COMING SOON" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) christmas-hacks ;;
    2) no ;;
    3) no ;;
    4) no ;;
    5) no ;;
     +) none  ;;
     *) break ;;
    esac
   done
}

function christmas-hacks() {
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " CHRISTMAS PACKS DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER DOWNLOAD PACK" 30 70 50 \
      1 "NES-- GAME PACK " \
      2 "N64-- GAME PACK" \
      3 "SNES--GAME PACK" \
      4 "WINE--Merry Gear Solid Pack" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) xmas-nes-pack "nes" "xmas22-nes.zip" ;;
    2) xmas-n64pack "nes" "xmas22-nes.zip" ;;
    3) xmas-snes-pack "snes" "xmas22-snes-zip" ;;
    4) wine-xmas-pack "Merry-Gear-Solid-Pack.zip" ;;
     +) none  ;;
     *) break ;;
    esac
   done
}

function xmas-nes-pack() {
if [ ! -d "$HOME/RetroPie/roms/nes/" ]; then dialog  --sleep 1 --title "NES FOLDER MISSING!" --msgbox "Please Install EMU First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST2}/xmas22-nes.zip -P "$HOME"/RetroPie/roms/nes -erobots=off
  unzip -o "$HOME"/RetroPie/roms/nes/xmas22-nes.zip -d "$HOME"/RetroPie/roms/nes/
  sudo rm -r "$HOME"/RetroPie/roms/nes/xmas22-nes.zip
fi
}

function xmas-snes-pack() {
if [ ! -d "$HOME/RetroPie/roms/snes/" ]; then dialog  --sleep 1 --title "SNES FOLDER MISSING!" --msgbox "Please Install EMU First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST2}/xmas22-snes.zip -P "$HOME"/RetroPie/roms/snes -erobots=off
  unzip -o "$HOME"/RetroPie/roms/snes/xmas22-snes.zip -d "$HOME"/RetroPie/roms/snes/
  sudo rm -r "$HOME"/RetroPie/roms/nes/xmas22-snes.zip
fi
}

function xmas-n64-pack() {
if [ ! -d "$HOME/RetroPie/roms/n64/" ]; then dialog  --sleep 1 --title "N64 FOLDER MISSING!" --msgbox "Please Install EMU First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST2}/xmas22-n64.zip -P "$HOME"/RetroPie/roms/n64 -erobots=off
  unzip -o "$HOME"/RetroPie/roms/n64/xmas22-n64.zip -d "$HOME"/RetroPie/roms/n64/
  sudo rm -r "$HOME"/RetroPie/roms/nes/xmas22-n64.zip
fi
}


function wine-xmas-pack() {
if [ ! -d "$HOME/RetroPie/roms/wine/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install Wine First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST1}/"${1}" -P "$HOME"/RetroPie/roms/wine -erobots=off
  unzip -o "$HOME"/RetroPie/roms/wine/"${1}" -d "$HOME"/RetroPie/roms/wine/
  chmod 755 "$HOME"/RetroPie/roms/wine/*.sh
  sudo rm -r "$HOME"/RetroPie/roms/wine/"${1}"
fi
}



Special-Packs
