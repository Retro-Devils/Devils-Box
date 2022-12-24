
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
      1 "Christmas Packs " \
      2 "COMING SOON" \
      3 "COMING SOON" \
      4 "COMING SOON" \
      5 "COMING SOON" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) christmas-packs ;;
    2) no ;;
    3) no ;;
    4) no ;;
    5) no ;;
     +) none  ;;
     *) break ;;
    esac
   done
fi
}

function christmas-packs() {
    while true; do
    local choice
    choice=$(dialog --backtitle "$BACKTITLE" --title " CHRISTMAS PACKS DOWNLOAD MENU" \
      --ok-label Download --cancel-label Main-Menu \
      --menu "PRESS A/ENTER DOWNLOAD PACK" 30 70 50 \
      1 "NES PACK " \
      2 "N64 PACK" \
      3 "SNES PACK" \
      4 "WINE PACK" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) download-xmas-pack "nes" "xmas22-nes.zip" ;;
    2) download-xmas-pack "nes" "xmas22-nes.zip" ;;
    3) download-xmas-pack "snes" "xmas22-snes-zip" ;;
    4) wine-xmas-pack "xmas22-wine-pack.zip" ;;
     +) none  ;;
     *) break ;;
    esac
   done
fi
}

function download-xmas-pack() {
if [ ! -d "$HOME/RetroPie/roms/wine/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install Wine First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST2}/"${1}"/xmas22-"{$1}".zip -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
  unzip -o "$HOME"/RetroPie/roms/"{$1}"/"${2}" -d "$HOME"/RetroPie/roms/"{$1}"/
  sudo rm -r "$HOME"/RetroPie/roms/"{$1}"/"${2}"
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
