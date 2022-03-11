#!/bin/sh
#--------HOSTS------#
HOST1="https://archive.org/download/the-devils-box-alt"

#-------COLORS------#

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\x1b[5m'

clear
#--------MAIN MENU FUNCTIONS--------#

function main-menu() {
while true; do
	selected_option=$(whiptail --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
 "1" "--Downloaders--" ON \
	"2" "Artwork Packs" OFF \
	"3" "Console Packs" OFF \
	"4" "Hacked Packs" OFF \
	"5" "---Tools---" OFF \
	"6" "Emulator Tools" OFF \
  "7" "Frontend Tools" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[1]* ) break;;
		[2]* ) break;;
		[3]* ) break;;
		[4]* ) break;;
		[5]* ) break;;
		[6]* ) break;;
   [7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}

main-menu
#--------SUB MENU FUNCTIONS-------#
function artwork-packs() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
	"A1" "Pack" OFF \
	"A2" "Pack" OFF \
	"A3" "Pack" OFF \
	"A4" "Pack" OFF \
	"A5" "Pack" OFF \
	"A6" "Pack" OFF \
  "A7" "Pack" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[A1]* ) break;;
		[A2]* ) break;;
		[A3]* ) break;;
		[A4]* ) break;;
		[A5]* ) break;;
		[A6]* ) break;;
   [A7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}
function console-packs() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
	"C1" " Pack" ON \
	"C2" " Pack" OFF \
	"C3" " Pack" OFF \
	"C4" " Pack" OFF \
	"C5" " Pack" OFF \
	"C6" " Pack" OFF \
  "C7" " Pack" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[C1]* ) break;;
		[C2]* ) break;;
		[C3]* ) break;;
		[C4]* ) break;;
		[C5]* ) break;;
		[C6]* ) break;;
   [C7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}
function hacked-packs() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
	"H1" "Pack" OFF \
	"H2" "Pack" OFF \
	"H3" "Pack" OFF \
	"H4" "Pack" OFF \
	"H5" "Pack" OFF \
	"H6" "Pack" OFF \
  "H7" "Pack" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[H1]* ) break;;
		[H2]* ) break;;
		[H3]* ) break;;
		[H4]* ) break;;
		[H5]* ) break;;
		[H6]* ) break;;
   [H7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}
function emu-tools() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
	"E1" "Pack" OFF \
	"E2" "Pack" OFF \
	"E3" "Pack" OFF \
	"E4" "Pack" OFF \
	"E5" "Pack" OFF \
	"E6" "Pack" OFF \
  "E7" "Pack" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[E1]* ) break;;
		[E2]* ) break;;
		[E3]* ) break;;
		[E4]* ) break;;
		[E5]* ) break;;
		[E6]* ) break;;
   [E7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}
function frontend-tools() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
	"F1" "Pack" OFF \
	"F2" "Pack" OFF \
	"F3" "Pack" OFF \
	"F4" "Pack" OFF \
	"F5" "Pack" OFF \
	"F6" "Pack" OFF \
  "F7" "Pack" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[F1]* ) break;;
		[F2]* ) break;;
		[F3]* ) break;;
		[F4]* ) break;;
		[F5]* ) break;;
		[F6]* ) break;;
   [F7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}

#--------CHOICES---------#
cancel=main-menu

if [[ $selected_option == "1" ]]
then 
main-menu
fi

if [[ $selected_option == "2" ]]
then
	artwork-packs
fi

if [[ $selected_option == "3" ]]
then
	console-packs
fi

if [[ $selected_option == "4" ]]
then
	 hacked-packs
fi

if [[ $selected_option == "5" ]]
then 
echo 
fi

if [[ $selected_option == "6" ]]
then
	emu-tools 
fi

if [[ $selected_option == "7" ]]
then
	frontend-tools
fi

#-----------Artwork Packs---------#

if [[ $selected_option == "A1" ]]
then
 echo "BLAH BLAH FUCKING BLAH"
fi

if [[ $selected_option == "A2" ]]
then
 echo
fi

if [[ $selected_option == "A3" ]]
then
 echo
fi

if [[ $selected_option == "A4" ]]
then
 echo
fi

if [[ $selected_option == "A5" ]]
then
 echo
fi

if [[ $selected_option == "A6" ]]
then
 echo
fi

if [[ $selected_option == "A7" ]]
then
 echo
fi


#-----------Console Packs---------#

if [[ $selected_option == "C1" ]]
then
"${HOST1}" /amiga/
fi

if [[ $selected_option == "C2" ]]
then
 echo
fi

if [[ $selected_option == "C3" ]]
then
 echo
fi

if [[ $selected_option == "C4" ]]
then
 echo
fi

if [[ $selected_option == "C6" ]]
then
 echo
fi

if [[ $selected_option == "C7" ]]
then
 echo
fi

if [[ $selected_option == "C8" ]]
then
 echo
fi
#-----------Hcked Packs---------#

if [[ $selected_option == "H1" ]]
then
 echo 
fi

if [[ $selected_option == "H2" ]]
then
 echo
fi

if [[ $selected_option == "H3" ]]
then
 echo
fi

if [[ $selected_option == "H4" ]]
then
 echo
fi

if [[ $selected_option == "H5" ]]
then
 echo
fi

if [[ $selected_option == "H6" ]]
then
 echo
fi

if [[ $selected_option == "H7" ]]
then
 echo
fi
#-----------Artwork Packs---------#

if [[ $selected_option == "E1" ]]
then
 echo 
fi

if [[ $selected_option == "E2" ]]
then
 echo
fi

if [[ $selected_option == "E3" ]]
then
 echo
fi

if [[ $selected_option == "E4" ]]
then
 echo
fi

if [[ $selected_option == "E5" ]]
then
 echo
fi

if [[ $selected_option == "E6" ]]
then
 echo
fi

if [[ $selected_option == "E7" ]]
then
 echo
fi

#-----------Frontend Tools ---------#

if [[ $selected_option == "F1" ]]
then
 echo 
fi

if [[ $selected_option == "F2" ]]
then
 echo
fi

if [[ $selected_option == "F3" ]]
then
 echo
fi

if [[ $selected_option == "F4" ]]
then
 echo
fi

if [[ $selected_option == "F5" ]]
then
 echo
fi

if [[ $selected_option == "F6" ]]
then
 echo
fi

if [[ $selected_option == "F7" ]]
then
 echo
fi












