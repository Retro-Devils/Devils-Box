clear
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine_20221218"
HOST5="https://archive.org/download/devils-dos"
HOST8="https://archive.org/download/the-devils-box-alt/model3"

#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"

#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"

#--------LIGHTGUN HOSTS--------#
LG_HOST1 = "https://archive.org/download/RPI-Lightgun-Games"
LG_HOST2 = "https://archive.org/download/RPI-Lightgun-Games/zips/"


function lightgun_menu() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " AUDIO & VISUAL TOOLS MENU" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT CONSOLE TO DOWNLOAD " 30 70 50 \
      + "<->CONSOLE NAME<---------------->SIZE<----># OF GAMES" \
      1 "NES                              10MB        15 GAMES" \
      2 "SNES                             20MB        18 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) lg-pack "NES" "nes" ;;
    2) lg-pack "SNES" "snes" ;;
    -) none ;;
    *) break ;;
    esac
  done
}

function lg-pack() {
if [ ! -d "$HOME/RetroPie/roms/$2/gun-games" ]; then sudo mkdir "$HOME"/RetroPie/roms/"$2"/gun-games/; fi
wget -m -r -np -nH -nd -R "index.html" "${LG_HOST1}"/"$1"-Gun-Games.zip -P "$HOME"/RetroPie/roms/"$2"/gun-games -erobots=off
unzip "$HOME"/RetroPie/roms/"$2"/"$1"-Gun-Games.zip
sudo rm "$HOME"/RetroPie/roms/"$2"/"$1"-Gun-Games.zip
rm -f "$HOME"/RetroPie/roms/saturn/index.html.tmp
rm -f "$HOME"/RetroPie/roms/"$2"/gun-games/gamelist.xml
}


lightgun_menu
