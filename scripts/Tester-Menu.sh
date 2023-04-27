#!/bin/bash
IFS=';'

function correct() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "TESTERS & DEVILS MENU  " \
     --ok-button Select --cancel-button Back \
     --menu " TEST SOMETHING " 30 70 50 \
      + "--FINISHED OR CLOSE TO IT--" \
      + "--UNFINISHED/NOT WORKING--" \
      1 "Collections Helper " \
      2 "Icon Helper " \
      + "--------------- " \
      3 "Update Testers Menu" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) bash "$HOME"/Devils-Box/helpers/emulationstation/Collections.sh ;;
    2) bash "$HOME"/Devils-Box/helpers/emulationstation/Icon-Helper.sh ;;
    +) none ;;
    +) no ;;
    3) update-test ;;
    *) break ;;
    esac
  done
}

function update-test() {
sudo rm "$HOME"/Devils-Box/scripts/Tester-Menu.sh
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Box/main/scripts/Tester-Menu.sh -P "$HOME"/Devils-Box/scripts/
}

echo
read -p "PLEASE ENTER CODE  " useranswer
echo
echo "YOU ENTERED ${useranswer} ..PROCESSING.. "
sleep 2
if [ $useranswer = "420" ]; then correct; else omxplayer "$HOME"/Devils-Box/files/videos/droids.mp4; fi
