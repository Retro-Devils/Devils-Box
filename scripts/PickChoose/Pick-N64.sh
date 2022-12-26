#!/bin/bash
DB_SETTINGS="$HOME/.devilsbox/db_settings.ini"
##-------------------------##
##       HOST SITES        ##
##-------------------------##
#-----------------DEVILS-GAME HOSTS---------------------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/devils-bios"
HOST4="https://archive.org/download/devils-wine_20221218"
HOST5="https://archive.org/download/devils-dos"
#---------------NON-DEVILS-HOSTS-----------------------#
HOST6="https://archive.org/download/PSP_US_Arquivista"
HOST7="https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0"
HOST8="https://archive.org/download/devils-wine-packs"
#--------PICK & CHOOSE HOST-----#
PC_HOST="https://archive.org/download/the-devils-box-alt"



if grep 'intro_splash_flag=1' "$DB_SETTINGS" > /dev/null 2>&1; then
	omxplayer "$HOME"/Devils-Box/files/videos/pickchoose.mp4 > /dev/null 2>&1
fi
if [ -f "/usr/local/bin/confirm" ]; then
  confirm=0
else
  confirm=1
fi

function pickn64_menu() {
if [ $confirm = 1 ]; then
dialog  --sleep 1 --title "Devils Box ERROR !! " --msgbox " 
PLEASE Install/Update Devils Box" 0 0
else
local choice
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "N64 PICK & CHOOSE MENU" \
      --ok-label Select --cancel-label Main-Menu \
      --menu "HOW WOULD YOU LIKE THE GAMES SORTED? " 20 50 30 \
      1 "All Games" \
      2 "By Genres" \
      3 "By Letter" \
      4 "Top 50" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) all-n64 ;;
    2) bg-n64 ;;
    3) bl-n64 ;;
    4) t50-n64 ;;
    *) break ;;
    esac
  done
fi
}

function bl-n64() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "SORT BY LETTER MENU N64" \
      --ok-label Select --cancel-label Back \
      --menu "PLEASE SELECT LETTER SET TO SORT BY " 30 70 50 \
      0 "# Games" \
      1 "A-E Games" \
      2 "F-K Games" \
      3 "L-P Games" \
      4 "Q-U Games" \
      5 "V-Z Games" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    0) bl_numb ;;
    1) bl_ae ;;
    2) bl_fk ;;
    3) bl_lp ;;
    4) bl_qu ;;
    5) bl_vz ;;
    *) break ;;
    esac
  done
}

function bg-n64() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "SORT BY LETTER MENU N64" \
      --ok-label Select --cancel-label Back \
      --menu "PLEASE SELECT LETTER SET TO SORT BY " 30 70 50 \
      0 "Action" \
      1 "Adventure" \
      2 "Beat Em Up Games" \
      3 "Multiplayer Games" \
      4 "Platform Games" \
      5 "Shooters" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    0) action-n64 ;;
    1) adventure-n64 ;;
    2) beatem-n64 ;;
    3) multip-n64 ;;
    4) platf-n64 ;;
    5) shoot-n64 ;;
    *) break ;;
    esac
  done
}



#######------------------------------------------ DEVILS CHOICE --------------------------------------------------------#######

function t50-n64() {
          whiptail --clear --title "PICK & CHOOSE NINTENDO 64" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "007 - GoldenEye" off \
                "2" "Army Men - Air Combat" off \
                "3" "Army Men - Sarge's Heroes 2" off \
                "4" "Banjo-Kazooie" off \
                "5" "Banjo-Tooie" off \
                "6" "Batman Beyond - Return of the Joker" off \
                "7" "Body Harvest" off \
                "8" "Bomberman 64" off \
                "9" "California Speed" off \
                "10" "Castlevania - Legacy of Darkness" off \
                "11" "Cruis'n USA" off \
                "12" "Destruction Derby 64" off \
                "13" "Diddy Kong Racing" off \
                "14" "Donkey Kong 64" off \
                "15" "Doom 64" off \
                "16" "Duke Nukem 64" off \
                "17" "Earthworm Jim 3D" off \
                "18" "F-Zero X" off \
                "19" "Gex 3 - Deep Cover Gecko" off \
                "20" "Gex 64 - Enter the Gecko" off \
                "21" "Hot Wheels - Turbo Racing" off \
                "22" "Kirby 64 - The Crystal Shards" off \
                "23" "LEGO Racers" off \
                "24" "Legend of Zelda, The - Majora's Mask" off \
                "25" "Legend of Zelda, The - Ocarina of Time" off \
                "26" "Mace - The Dark Age" off \
                "27" "Mario Kart 64" off \
                "28" "Mario Party" off \
                "29" "Mario Party 2" off \
                "30" "Mario Party 3" off \
                "31" "Mega Man 64" off \
                "32" "Mortal Kombat 4" off \
                "33" "Mortal Kombat Trilogy" off \
                "34" "Mortal Kombat Mythologies - Sub-Zero" off \
                "35" "NFL Quarterback Club 99" off \
                "36" "New Tetris, The" off \
                "37" "Paper Mario" off \
                "38" "Pokemon Stadium" off \
                "39" "Quake 64" off \
                "40" "Quake II" off \
                "41" "Quest 64" off \
                "42" "Rayman 2 - The Great Escape" off \
                "43" "Resident Evil 2" off \
                "44" "Road Rash 64" off \
                "45" "Spider-Man" off \
                "46" "Star Fox 64" off \
                "47" "Star Wars - Rogue Squadron" off \
                "48" "Super Mario 64" off \
                "49" "Super Smash Bros." off \
                "50" "Tony Hawk's Pro Skater 3" off \
                "51" "Yoshis Story" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "n64" "007 - GoldenEye (USA).n64" ;;
            2) download-game "n64" "Army Men - Air Combat (USA).n64" ;;
            3) download-game "n64" "Army Men - Sarge's Heroes 2 (USA).n64" ;;
            4) download-game "n64" "Banjo-Kazooie (USA) (Rev A).n64" ;;
            5) download-game "n64" "Banjo-Tooie (USA).n64" ;;
            6) download-game "n64" "Batman Beyond - Return of the Joker (USA).n64" ;;
            7) download-game "n64" "Body Harvest (USA).n64" ;;
            8) download-game "n64" "Bomberman 64 (USA).n64" ;;
            9) download-game "n64" "California Speed (USA).n64" ;;
            10) download-game "n64" "Castlevania - Legacy of Darkness (USA).n64" ;;
            11) download-game "n64" "Cruis'n USA (Europe).n64" ;;
            12) download-game "n64" "Destruction Derby 64 (USA).n64" ;;
            13) download-game "n64" "Diddy Kong Racing (USA) (En,Fr) (Rev A).n64" ;;
            14) download-game "n64" "Donkey Kong 64 (Europe) (En,Fr,De,Es).n64" ;;
            15) download-game "n64" "Doom 64 (USA) (Rev A).n64" ;;
            16) download-game "n64" "Duke Nukem 64 (Europe).n64" ;;
            17) download-game "n64" "Earthworm Jim 3D (USA).n64" ;;
            18) download-game "n64" "F-Zero X (USA).n64" ;;
            19) download-game "n64" "Gex 3 - Deep Cover Gecko (USA).n64" ;;
            20) download-game "n64" "Gex 64 - Enter the Gecko (USA).n64" ;;
            21) download-game "n64" "Hot Wheels - Turbo Racing (USA).n64" ;;
            22) download-game "n64" "Kirby 64 - The Crystal Shards (Europe).n64" ;;
            23) download-game "n64" "LEGO Racers (USA) (En,Fr,De,Es,It,Nl,Sv,No,Da,Fi).n64" ;;
            24) download-game "n64" "Legend of Zelda, The - Majora's Mask (Europe) (En,Fr,De,Es) (Beta).n64" ;;
            25) download-game "n64" "Legend of Zelda, The - Ocarina of Time (Europe) (En,Fr,De) (Rev A).n64" ;;
            26) download-game "n64" "Mace - The Dark Age (USA).n64" ;;
            27) download-game "n64" "Mario Kart 64 (Europe) (Rev A).n64" ;;
            28) download-game "n64" "Mario Party (Europe) (En,Fr,De).n64" ;;
            29) download-game "n64" "Mario Party 2 (USA).n64" ;;
            30) download-game "n64" "Mario Party 3 (USA).n64" ;;
            31) download-game "n64" "Mega Man 64 (USA).n64" ;;
            32) download-game "n64" "Mortal Kombat 4 (USA).n64" ;;
            33) download-game "n64" "Mortal Kombat Trilogy (USA) (Rev B).n64" ;;
            34) download-game "n64" "Mortal Kombat Mythologies - Sub-Zero (USA).n64" ;;
            35) download-game "n64" "NFL Quarterback Club 99 (USA).n64" ;;
            36) download-game "n64" "New Tetris, The (USA).n64" ;;
            37) download-game "n64" "Paper Mario (USA).n64" ;;
            38) download-game "n64" "Pokemon Stadium (USA) (Rev A).n64" ;;
            39) download-game "n64" "Quake 64 (Europe).n64" ;;
            40) download-game "n64" "Quake II (USA).n64" ;;
            41) download-game "n64" "Quest 64 (USA).n64" ;;
            42) download-game "n64" "Rayman 2 - The Great Escape (USA) (En,Fr,De,Es,It).n64" ;;
            43) download-game "n64" "Resident Evil 2 (USA) (Rev A).n64" ;;
            44) download-game "n64" "Road Rash 64 (USA).n64" ;;
            45) download-game "n64" "Spider-Man (USA).n64" ;;
            46) download-game "n64" "Star Fox 64 (USA) (Rev A).n64" ;;
            47) download-game "n64" "Star Wars - Rogue Squadron (USA) (Rev A).n64" ;;
            48) download-game "n64" "Super Mario 64 (USA).n64" ;;
            49) download-game "n64" "Super Smash Bros. (USA).n64" ;;
            50) download-game "n64" "Tony Hawk's Pro Skater 3 (USA).n64" ;;
            51) download-game "n64" "Yoshi's Story (USA) (En,Ja).n64" ;;
            *) ;;
        esac
        done < /tmp/results
}

function download-game() {
  for type in "$@"; do
    if [ "${type}" != "${1}" ]; then
      if [ ! -d "$HOME/RetroPie/roms/"${1}"/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
      else
      clear
      wget -m -r -np -nH -nd -R "index.html" ${PC_HOST}/"${1}"/"${type}" -P "$HOME"/RetroPie/roms/"${1}" -erobots=off
      rm -f "$HOME"/RetroPie/roms/"${1}"/index.html.tmp
fi
fi
done
}


pickn64_menu
