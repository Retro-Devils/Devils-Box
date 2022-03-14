function game_fixes-menu() {
  local choice

  while true; do 
  choice=$(dialog --backtitle "$BACKTITLE" --title " GAME TOOLS/FIXES MENU " \
      --ok-label Select --cancel-label Main-Menu \
      --menu "SELECT TOOL OR FIX AND PRESS A  " 20 50 30 \
      + "--------WINE GAME FIXES-------" \
      1 "Age Of Empires No-CD Error Fix" \
      2 "C&C Generals + Zero Hour Fix" \
      3 "Heroes OF might And Magic Fix" \
      4 "Silent Hill 4 Fix" \
      5 "Unreal Anthology Fix" \
      + "----------GAME TOOLS----------" \
      6 "Qjoy Layout Downloader" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) game_fix "Age-of-Empires-no-cd-error-fix.reg" ;;
    2) game_fix "Command-And-Conquer-fix.reg" ;;
    3) game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
    4) game_fix "Silent-Hill-4-The-Room-Fix.reg" ;;
    5) game_fix "Unreal-Anthology-fix.reg" ;;
    6) download_qjoy ;;
    *) break ;;
    esac
  done
}
#----------------------#
#   WINE GAME FIXES    #
#----------------------#
function game_fix(){
cd ~/
wget https://github.com/ALLRiPPED/Devils-Wine-Updates/raw/main/reg-patches/${1}
wine reg import ${1}
sleep 1
rm -f ${1}
}

#-------------------#
#    GAME TOOLS     #
#-------------------#
function download_qjoy() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
  else
  dialog  --sleep 1 --title "QJOYPAD INFO" --msgbox "
---------------ATTENTION-----------
QJOYPAD MAPS KEYBOARD TO CONTROLLER
QJOYPAD IS USED FOR WINE/MUGEN
THIS DOWNLOADS  PREMADE LAYOUTS
WILL OVERWRITE LAYOUTS WITH SAME NAME" 0 0
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " QJOY DOWNLOADER " \
            --ok-label Select --cancel-label Back \
            --menu "Select Type Of Controller" 30 50 40 \
            1 "Arcade Controller       11 Layouts" \
            2 "PS3 Controller           4 Layouts" \
            + "---------------Info---------------" \
            3 "----Arcade Mapped Games List------" \
            4 "----PS3 Mapped Games List---------" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) qj_arcade  ;;
            2) qj_ps3     ;;
            +) none       ;;
            3) qarcade_info ;;
            4) qps3-info    ;;
            *) break      ;;
        esac
    done
fi 
}
#-----------------------#
#      QJ FUNCTIONS     #
#-----------------------#
function qj_arcade() { 
clear
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-updates/qjoy-arcade.zip -P "$HOME"/.qjoypad3 -erobots=off
unzip -o "$HOME"/.qjoypad3/qjoy-arcade.zip -d "$HOME"/.qjoypad3
sudo rm -R "$HOME"/.qjoypad3/qjoy-ps3.zip
}

function qj_ps3() {
clear
wget -m -r -np -nH -nd -R "index.html" https://archive.org/download/devils-updates/qjoy-ps3.zip -P "$HOME"/.qjoypad3 -erobots=off
unzip -o "$HOME"/.qjoypad3/qjoy-ps3.zip -d "$HOME"/.qjoypad3/
sudo rm -R "$HOME"/.qjoypad3/qjoy-ps3.zip
}

#-------------------------#
#    Q INFO FUNCTIONS     #
#-------------------------#
function qarcade_info() {
dialog  --sleep 1 --title "Mapped Games" --msgbox "
ARCADE MAPPED GAMES
-Angry Birds Seasons
-Baldurs Gate
-Cuphead
-Hydro Thunder
-Mugen
-Simpsons Hit & Run
-Skifree
-Spooky Castle
-Sugar Rush
-TMNT
-Terrordome" 0 0
}
function qps3_info() {
dialog  --sleep 1 --title "Mapped Games" --msgbox "
PS3 MAPPED GAMES
-Baldurs Gate
-Spooky Castle
-Mugen
-Skifree" 0 0
}

game_fixes-menu
