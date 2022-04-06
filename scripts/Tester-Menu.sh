#!/bin/bash
echo 
read -p "PLEASE ENTER CODE & HIT <enter> : " useranswer
sleep 1
echo "You have chosen option ${useranswer}."

echo "....Processing...."
sleep 5 
if [[ $useranswer == 420" ]]; then
function tester-menu() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "TESTERS & DEVILS MENU  " \
     --ok-button Download --cancel-button Main-Menu \
     --menu " PRESS SOMETHING " 30 70 50 \
      + "--FINISHED NEEDS MORE TESTS--" \
      1 "Collections Helper " \
      2 "Loading Images " \
      3 "Loading Videos  " \
      4 "--------------- " \
      + "--UNFINISHED BUT MOSTLY THIER--" \
      6 "--------------- " \
      7 "--------------- " \
      8 "--------------- " \
      2>&1 >/dev/tty)

    case "$choice" in
    +) none ;;
    1) bash "$HOME"/Devils-Box/helpers/emulationstation/Collections.sh ;;
    2) bash "$HOME"/Devils-Box/scripts/Launch-Images.sh ;;
    3) bash "$HOME"/Devils-Box/scripts/Launch-Videos.sh ;;
    +) none ;;
    4) no ;;
    5) wait bro  ;;
    6) no ;;
    7) no ;;
    8) no ;;
    *) break ;;
    esac
  done
fi
}

tester-menu 

else 
echo "INCORRECT PLEASE CONTECT THE DEVILS IF YOU WANNA TEST!!!!"
sleep 4




