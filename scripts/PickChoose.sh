##-------------------------##
##       HOST SITES        ##
##-------------------------##

#--------ART HOSTS----------#
ART_HOST="https://archive.org/download/devils-box-media-alt"
ART_HOST2="https://github.com/Retro-Devils-Media"
#ART_HOST3=""
#ART_HOST4=""

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
function pick_menu() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "PICK & CHOOSE INFO" --msgbox " 
<-------------WELCOME--------------->
WHATS THIS DO?
-DOWNLOADS GAMES YOU SELECT
HOW TO USE?
-PICK A SYSTEM
-CHOOSE YOUR GAME(S) 
-CLICK DOWNLOAD" 0 0
local choice
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PICK & CHOOSE MENU" \
      --ok-label Select --cancel-label Main-Menu \
      --menu "PICK CONSOLE & CHOOSE GAME(S) " 20 50 30 \
      1 "AtomisWave" \
      2 "Dreamcast" \
      3 "GameBoy Advance" \
      4 "MegaDrive" \
      5 "Mugens" \
      6 "Nintendo 64" \
      7 "Nintendo DS" \
      8 "NES" \
      9 "PC DOS Games" \
      10 "Playstation 1" \
      11 "PSP" \
      12 "Saturn" \
      13 "Super Nintendo" \
      14 "Wine" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) atomiswave ;;
    2) dreamcast ;;
    3) gba ;;
    4) megadrive ;;
    5) mugens ;;
    6) n64 ;;
    7) nds ;;
    8) nes ;;
    9) pcgames ;;
    10) psx ;;
    11) psp ;;
    12) saturn ;;
    13) snes ;;
    14) winegames ;;
    *) break ;;
    esac
  done
fi
}

function atomiswave() {
        local choice
    whiptail --clear --title "PICK & CHOOSE ATOMISWAVE" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Animal Basket" off \
                "2" "Demolish Fist" off \
                "3" "Dirty Pigskin Football" off \
                "4" "Dolphin Blue" off \
                "5" "Fist of the North Star (Hokuto No Ken)" off \
                "6" "Faster Than Speed" off \
                "7" "gamelist.xml" off \
                "8" "Guilty Gear Isuka" off \
                "9" "Guilty Gear X Ver. 1.5" off \
                "10" "King Of Fighters NeoWave" off \
                "11" "King Of Fighters NeoWaveJ" off \
                "12" "King Of Fighters XI" off \
                "13" "Knights Of Valour" off \
                "14" "Maximum Speed" off \
                "15" "Metal Slug 6" off \
                "16" "Neo-Geo Battle Coliseum" off \
                "17" "Ranger Mission" off \
                "18" "Rumble Fish" off \
                "19" "Rumble Fish 2" off \
                "20" "Salary Man Kintaro" off \
                "21" "Samurai Shodown VI" off \
                "22" "Sushi Bar USA" off \
                "23" "Victory Furlong Horse Racing" off \
                "24" "Extrme Hunt 2" off \
                "25" "Extrme Hunt" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
           1) download-game "atomiswave" "anmlbskt.zip" ;;
           2) download-game "atomiswave" "demofist.zip" ;;
           3) download-game "atomiswave" "dirtypig.zip" ;;
           4) download-game "atomiswave" "dolphin.zip" ;;
           5) download-game "atomiswave" "fotns.zip" ;;
           6) download-game "atomiswave" "ftspeed.zip" ;;
           7) download-game "atomiswave" "gamelist.xml" ;;
           8) download-game "atomiswave" "ggisuka.zip" ;;
           9) download-game "atomiswave" "ggx15.zip" ;;
           10) download-game "atomiswave" "kofnw.zip" ;; 
           11) download-game "atomiswave" "kofnwj.zip" ;;
           12) download-game "atomiswave" "kofxi.zip" ;;
           13) download-game "atomiswave" "kov7sprt.zip" ;;
           14) download-game "atomiswave" "maxspeed.zip" ;;
           15) download-game "atomiswave" "mslug6.zip" ;;
           16) download-game "atomiswave" "ngbc.zip"  ;;
           17) download-game "atomiswave" "rangrmsn.zip" ;;
           18) download-game "atomiswave" "rumblef.zip" ;;
           19) download-game "atomiswave" "rumblef2.zip" ;;
           20) download-game "atomiswave" "samsptk.zip" ;;
           21) download-game "atomiswave" "sprtshot.zip" ;;
           22) download-game "atomiswave" "sushibar.zip" ;;
           23) download-game "atomiswave" "vfurlong.zip" ;;
           24) download-game "atomiswave" "xtrmhnt2.zip" ;;
           25) download-game "atomiswave" "xtrmhunt.zip" ;;	
            *) ;;
        esac
        done < /tmp/results
}
function dreamcast() {
        local choice
      whiptail --clear --title "PICK & CHOOSE DREAMCAST" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Capcom VS SNK          " off \
                "2" "Capcom VS SNK 2        " off \
                "3" "Confindentl Mission    " off \
                "4" "Crazy Taxi             " off \
                "5" "Crazy Taxi 2           " off \
                "6" "Dead Or Alive 2        " off \
                "7" "Jet Grind Radio        " off \
                "8" "Marvel VS Capcom 2       " off \
                "9" "Power Stone 2            " off \
                "10" "Psychic Force 2012       " off \
                "11" "Resident Evil Veronica CD1" off \
                "12" "Resident Evil Veronica CD2" off \
                "13" "Shenmue Disc 1            " off \
                "14" "Shenmue Disc 2            " off \
                "15" "Shenmue Disc 3            " off \
                "16" "Sonic Adventure      " off \
                "17" "Sonic Adventures 2   " off \
                "18" "Soul Calibur         " off \
                "19" "gamelist.xml          " off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "dreamcast" "CapcomvsSNK.cdi" ;;
            2) download-game "dreamcast" "Capcom vs. SNK 2 - Millionaire Fighting 2001 (Japan).cdi" ;;
            3) download-game "dreamcast" "Confidential Mission (USA).chd" ;;
            4) download-game "dreamcast" "Crazy Taxi (USA).chd" ;;
            5) download-game "dreamcast" "Crazy Taxi 2 (USA).cdi" ;;
            6) download-game "dreamcast" "Dead or Alive 2 (USA).cdi" ;;
            7) download-game "dreamcast" "Jet Grind Radio (USA).cdi" ;;
            8) download-game "dreamcast" "Marvel vs. Capcom 2 (USA).cdi" ;;
            9) download-game "dreamcast" "Power Stone 2 (USA).cdi" ;;
            10) download-game "dreamcast" "Psychic Force 2012 (USA).cdi" ;;
            11) download-game "dreamcast" "Resident Evil Code - Veronica (Disc 1) (USA).cdi" ;;
            12) download-game "dreamcast" "Resident Evil Code - Veronica (Disc 2) (USA).cdi" ;;
            13) download-game "dreamcast" "Shenmue (USA) (Disc 1).cdi" ;;
            14) download-game "dreamcast" "Shenmue (USA) (Disc 2).cdi" ;;
            15) download-game "dreamcast" "Shenmue (USA) (Disc 3).cdi" ;;
            16) download-game "dreamcast" "Sonic Adventure (USA).cdi" ;;
            17) download-game "dreamcast" "Sonic Adventure 2 (USA).cdi" ;;
            18) download-game "dreamcast" "Soul Calibur (USA).cdi" ;;
            19) download-game "dreamcast" "gamelist.xml" ;;
            *)  ;;
        esac
        done < /tmp/results
}
function gba() {
          whiptail --clear --title "PICK & CHOOSE GBA" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Astro Boy - Omega Factor" off \
                "2" "Bomberman Tournament" off \
                "3" "Broken Sword: Shadow Of the Templars" off \
                "4" "Boktai - The Sun Is in Your Hand" off \
                "5" "Castlevania - Aria of Sorrow" off \
                "6" "Castlevania - Harmony of Dissonance" off \
                "7" "Drill Dozer" off \
                "8" "Dragon Ball Z - The Legacy of Goku" off \
                "9" "Fire Emblem - The Sacred Stones" off \
                "10" "Fire Emblem" off \
                "11" "F-Zero - Maximum Velocity" off \
                "12" "F-Zero - GP Legend" off \
                "13" "Golden Sun" off \
                "14" "Gradius Galaxies" off \
                "15" "Harvest Moon - More Friends of Mineral Town" off \
                "16" "Harvest Moon - Friends of Mineral Town" off \
                "17" "Iridion 3D" off \
                "18" "Iridion II" off \
                "19"  "Kirby - Nightmare in Dream Land" off \
                "20" "Kirby & the Amazing Mirror" off \
                "21" "Legend of Zelda, The - The Minish Cap" off \
                "22" "Legend of Zelda, The - A Link to the Past & Four Swords" off \
                "23" "Legend of Spyro, The - The Eternal Night" off \
                "24" "Lunar Legend" off \
                "25" "Mario & Luigi - Superstar Saga" off \
                "26" "Mario Kart - Super Circuit" off \
                "27" "Mario Party Advance" off \
                "28" "Mario vs. Donkey Kong" off \
                "29" "Mega Man Zero" off \
                "30" "Metroid - Zero Mission" off \
                "31" "Metal Slug Advance" off \
                "32" "Ninja Five-0" off \
                "33" "Nicktoons - Battle for Volcano Island" off \
                "34" "Pac-Man Collection" off \
                "35" "Pokemon - Leaf Green Version" off \
                "36" "Pokemon - Emerald Version" off \
                "37" "Puyo Pop" off \
                "38" "R-Type III - The Third Lighting" off \
                "39" "Rayman - Hoodlum's Revenge" off \
                "40" "Rayman Advance" off \
                "41" "SD Gundum Force" off \
                "42" "Sega Rally Championship" off \
                "43" "Sonic Advance" off \
                "44" "Sonic Advance 2" off \
                "45" "Spider-Man - Mysterio's Menace" off \
                "46" "Spyro - Attack of the Rhynocs" off \
                "47" "Super Mario Advance" off \
                "48" "Teenage Mutant Ninja Turtles" off \
                "49" "Tony Hawk's Pro Skater 4" off \
                "50" "Ultimate Card Games" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "gba" "Astro Boy - Omega Factor (USA) (En,Ja,Fr,De,Es,It).zip" ;;
            2) download-game "gba" "Bomberman Tournament(USA, Europe).zip" ;;
            3) download-game "gba" "Broken Sword - The Shadow of the Templars (USA) (En,Fr,De,Es,It).zip" ;;
            4) download-game "gba" "Boktai - The Sun Is in Your Hand (USA).zip" ;;
            5) download-game "gba" "Castlevania - Aria of Sorrow (USA).zip " ;;
            6) download-game "gba" "Castlevania - Harmony of Dissonance (USA).zip " ;;
            7) download-game "gba" "Drill Dozer (USA).zip" ;;
            8) download-game "gba" "Dragon Ball Z - The Legacy of Goku (USA).zip" ;;
            9) download-game "gba" "Fire Emblem - The Sacred Stones (USA, Australia).zip" ;;
            10) download-game "gba" "Fire Emblem (USA, Australia).zip" ;;
            11) download-game "gba" "F-Zero - Maximum Velocity (USA, Europe).zip" ;;
            12) download-game "gba" "F-Zero - GP Legend (USA).zip" ;;
            13) download-game "gba" "Golden Sun (USA, Europe).zip" ;;
            14) download-game "gba" "Gradius Galaxies (USA).zip" ;;
            15) download-game "gba" "Harvest Moon - More Friends of Mineral Town (USA).zip" ;;
            16) download-game "gba" "Harvest Moon - Friends of Mineral Town (USA).zip" ;;
            17) download-game "gba" "Iridion 3D (USA, Europe).zip" ;;
            18) download-game "gba" "Iridion II (USA).zip" ;;
            19) download-game "gba" "Kirby - Nightmare in Dream Land (USA).zip.zip" ;;
            20) download-game "gba" "Kirby & the Amazing Mirror (USA).zip" ;;
            21) download-game "gba" "Legend of Zelda, The - The Minish Cap (USA).zip" ;;
            22) download-game "gba" "Legend of Zelda, The - A Link to the Past & Four Swords (USA, Australia).zip" ;;
            23) download-game "gba" "Legend of Spyro, The - The Eternal Night (USA) (En,Fr).zip" ;;
            24) download-game "gba" "Lunar Legend (USA).zip" ;;
            25) download-game "gba" "Mario & Luigi - Superstar Saga (USA, Australia).zip" ;;
            26) download-game "gba" "Mario Kart - Super Circuit (USA).zip" ;;
            27) download-game "gba" "Mario Party Advance (USA).zip" ;;
            28) download-game "gba" "Mario vs. Donkey Kong (USA, Australia).zip" ;;
            29) download-game "gba" "Mega Man Zero (USA, Europe).zip" ;;
            30) download-game "gba" "Metroid - Zero Mission (USA).zip" ;;
            31) download-game "gba" "Metal Slug Advance (USA).zip" ;;
            32) download-game "gba" "Ninja Five-0 (USA).zip " ;;
            33) download-game "gba" "Nicktoons - Battle for Volcano Island (USA).zip" ;;
            34) download-game "gba" "Pac-Man Collection (USA).zip" ;;
            35) download-game "gba" "Pokemon - Leaf Green Version (USA).zip" ;;
            36) download-game "gba" "Pokemon - Emerald Version (USA, Europe).zip" ;;
            37) download-game "gba" "Puyo Pop (USA) (En,Ja).zip" ;;
            38) download-game "gba" "R-Type III - The Third Lightning (USA).zip" ;;
            39) download-game "gba" "Rayman - Hoodlum's Revenge (USA) (En,Fr,Es).zip" ;;
            40) download-game "gba" "Rayman Advance (USA) (En,Fr,De,Es,It).zip" ;;
            41) download-game "gba" "SD Gundam Force (USA).zip" ;;
            42) download-game "gba" "Sega Rally Championship (USA).zip" ;;
            43) download-game "gba" "Sonic Advance (USA) (En,Ja).zip" ;;
            44) download-game "gba" "Sonic Advance 2 (USA) (En,Ja,Fr,De,Es,It).zip" ;;
            45) download-game "gba" "Spider-Man - Mysterio's Menace (USA, Europe).zip" ;;
            46) download-game "gba" "Spyro - Attack of the Rhynocs (USA).zip" ;;
            47) download-game "gba" "Super Mario Advance (USA, Europe).zip" ;;
            48) download-game "gba" "Teenage Mutant Ninja Turtles (USA).zip" ;;
            49) download-game "gba" "Tony Hawk's Pro Skater 4 (USA, Europe).zip" ;;
            50) download-game "gba" "Ultimate Card Games (USA, Europe).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function megadrive() {
          whiptail --clear --title "PICK & CHOOSE MEGADRIVE" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Altered Beast" off \
                "2" "Castlevania - The New Generation" off \
                "3" "Comix Zone" off \
                "4" "Disneys Aladdin" off \
                "5" "Dr. Robotnik's Mean Bean Machine" off \
                "6" "Earthworm Jim" off \
                "7" "Earthworm Jim 2" off \
                "8" "Ecco the Dolphin" off \
                "9" "Fantasia" off \
                "10" "Ghouls'n Ghosts" off \
                "11" "Golden Axe" off \
                "12" "Golden Axe II" off \
                "13" "Gunstar Heroes" off \
                "14" "Immortal, The" off \
                "15" "James Bond 007 - The Duel" off \
                "16" "Justice League Task Force" off \
                "17" "Krusty's Super Fun House" off \
                "18" "Madden NFL 96" off \
                "19" "Madden NFL 95" off \
                "20" "Micro Machines 2 - Turbo Tournament" off \
                "21" "Mortal Kombat" off \
                "22" "Mortal Kombat II" off \
                "23" "Mutant League Football" off \
                "24" "Ms. Pac-Man" off \
                "25" "NBA Jam" off \
                "26" "Oh Mummy Genesis" off \
                "27" "OutRun 2019" off \
                "28" "Pac-Panic" off \
                "29" "Pac-Mania" off \
                "30" "Phantasy Star II" off \
                "31" "Phantasy Star IV" off \
                "32" "Revolution X" off \
                "33" "RoboCop VS The Terminator" off \
                "34" "Shining Force" off \
                "35" "Shining Force II" off \
                "36" "Shinobi III - Return of the Ninja Master" off \
                "37" "Sonic & Knuckles" off \
                "38" "Strider II" off \
                "39" "Street Fighter II' - Champion Edition " off \
                "40" "Vectorman" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "megadrive" "Altered Beast (USA, Europe).zip" ;;
            2) download-game "megadrive" "Castlevania - The New Generation (Europe).zip" ;;
            3) download-game "megadrive" "Comix Zone (Europe) (En,Fr,De,Es).zip" ;;
            4) download-game "megadrive" "Aladdin (Europe).zip" ;;
            5) download-game "megadrive" "Dr. Robotnik's Mean Bean Machine (Europe).zip" ;;
            6) download-game "megadrive" "Earthworm Jim (Europe).zip" ;;
            7) download-game "megadrive" "Earthworm Jim 2 (Europe).zip" ;;
            8) download-game "megadrive" "Ecco the Dolphin (USA, Europe).zip" ;;
            9) download-game "megadrive" "Fantasia (World).zip" ;;
            10) download-game "megadrive" "Ghouls'n Ghosts (USA, Europe).zip" ;;
            11) download-game "megadrive" "Golden Axe (World).zip" ;;
            12) download-game "megadrive" "Golden Axe II (World).zip" ;;
            13) download-game "megadrive" "Gunstar Heroes (Europe).zip" ;;
            14) download-game "megadrive" "Immortal, The (USA, Europe).zip" ;;
            15) download-game "megadrive" "James Bond 007 - The Duel (Europe) (Rev A).zip" ;;
            16) download-game "megadrive" "Justice League Task Force (World).zip" ;;
            17) download-game "megadrive" "Krusty's Super Fun House (USA, Europe).zip" ;;
            18) download-game "megadrive" "Madden NFL 96 (USA, Europe).zip" ;;
            19) download-game "megadrive" "Madden NFL 95 (USA, Europe).zip" ;;
            20) download-game "megadrive" "Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).zip" ;;
            21) download-game "megadrive" "Mortal Kombat (World) (v1.1).zip" ;;
            22) download-game "megadrive" "Mortal Kombat II (World).zip" ;;
            23) download-game "megadrive" "Mutant League Football (USA, Europe).zip" ;;
            24) download-game "megadrive" "Ms. Pac-Man (USA, Europe).zip " ;;
            25) download-game "megadrive" "NBA Jam (USA, Europe).zip" ;;
            26) download-game "megadrive" "Oh Mummy Genesis (World) (Unl).zip" ;;
            27) download-game "megadrive" "OutRun 2019 (Europe).zip" ;;
            28) download-game "megadrive" "Pac-Panic (Europe).zip" ;;
            29) download-game "megadrive" "Pac-Mania (USA, Europe).zip" ;;
            30) download-game "megadrive" "Phantasy Star II (USA, Europe) (Rev A).zip" ;;
            31) download-game "megadrive" "Phantasy Star IV (Europe).zip" ;;
            32) download-game "megadrive" "Revolution X (USA, Europe).zip" ;;
            33) download-game "megadrive" "RoboCop versus The Terminator (Europe).zip" ;;
            34) download-game "megadrive" "Shining Force (Europe).zip" ;;
            35) download-game "megadrive" "Shining Force II (Europe).zip" ;;
            36) download-game "megadrive" "Shinobi III - Return of the Ninja Master (Europe).zip" ;;
            37) download-game "megadrive" "Sonic & Knuckles (World).zip" ;;
            38) download-game "megadrive" "Strider II (Europe).zip" ;;
            39) download-game "megadrive" "Street Fighter II' - Special Champion Edition (Europe).zip" ;;
            40) download-game "megadrive" "Vectorman (USA, Europe).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function n64() {
          whiptail --clear --title "PICK & CHOOSE NINTENDO 64" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "007 - GoldenEye (USA).n64" off \
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
function nds() {
          whiptail --clear --title "PICK & CHOOSE NINTENDO DS" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Astro Boy - The Video Game" off \
                "2" "Asphalt - Urban GT 2" off \
                "3" "Assassin's Creed II" off \
                "4" "Bomberman 2" off \
                "5" "Castlevania" off \
                "6" "Dragon Ball - Origins" off \
                "7" "Final Fantasy XII - Revenant Wings" off \
                "8" "LEGO Batman - The Videogame" off \
                "9" "Mario Kart DS" off \
                "10" "Mario Party DS" off \
                "11" "Mega Man Star Force 3 - Red Joker" off \
                "12" "Need for Speed - Most Wanted" off \
                "13" "Pokemon - Diamond Version" off \
                "14" "Puchi Puchi Virus" off \
                "15" "Shaun the Sheep" off \
                "16" "Sonic & Sega All-Stars Racing" off \
                "17" "Sonic Classic Collection" off \
                "18" "Spider-Man - Edge of Time" off \
                "19" "Spider-Man - Shattered Dimensions" off \
                "20" "Spider-Man - Web of Shadows" off \
                "21" "Spider-Man 2" off \
                "22" "Spider-Man 3" off \
                "23" "Star Wars - Battlefront - Elite Squadron" off \
                "24" "Star Wars - Episode III - Revenge of the Sith" off \
                "25" "Star Wars - Lethal Alliance" off \
                "26" "Star Wars - The Force Unleashed" off \
                "27" "Super Mario 64 DS" off \
                "28" "Tetris DS" off \
                "29" "Tetris Party Deluxe" off \
                "30" "Tony Hawk's Downhill Jam" off \
                "31" "Tony Hawk's Motion" off \
                "32" "Transformers - Dark of the Moon - Autobots" off \
                "33" "Transformers - Dark of the Moon - Decepticons" off \
                "34" "Underground Pool" off \
                "35" "Warhammer 40,000 - Squad Command" off \
                "36" "Wario - Master of Disguise" off \
                "37" "Wipeout - The Game" off \
                "38" "X-Men - Destiny" off \
                "39" "X-Men - The Official Game" off \
                "40" "Yoshi's Island DS" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "nds" "Astro Boy - The Video Game (USA) (En,Fr,De,Es,It).zip" ;;
            2) download-game "nds" "Asphalt - Urban GT 2 (USA) (En,Fr,Es).zip" ;;
            3) download-game "nds" "Assassin's Creed II - Discovery (USA) (En,Fr,Es) (NDSi Enhanced) [b].zip" ;;
            4) download-game "nds" "Bomberman 2 (Europe) (En,Fr,De,Es,It).zip" ;;
            5) download-game "nds" "Castlevania - Order of Ecclesia (USA) (En,Fr).zip" ;;
            6) download-game "nds" "Dragon Ball - Origins (USA).zip" ;;
            7) download-game "nds" "Final Fantasy XII - Revenant Wings (USA).zip" ;;
            8) download-game "nds" "LEGO Batman - The Videogame (USA) (En,Fr,Es).zip" ;;
            9) download-game "nds" "Mario Kart DS (USA) (En,Fr,De,Es,It).zip" ;;
            10) download-game "nds" "Mario Party DS (USA).zip" ;;
            11) download-game "nds" "Mega Man Star Force 3 - Red Joker (USA).zip" ;;
            12) download-game "nds" "Need for Speed - Most Wanted (USA).zip" ;;
            13) download-game "nds" "Pokemon - Diamond Version (USA) (Rev 5).zip" ;;
            14) download-game "nds" "Puchi Puchi Virus (USA).zip" ;;
            15) download-game "nds" "Shaun the Sheep (USA) (En,Ja,Fr,De,Es,It) [b].zip" ;;
            16) download-game "nds" "Sonic & Sega All-Stars Racing (USA) (En,Fr,Es).zip" ;;
            17) download-game "nds" "Sonic Classic Collection (USA) (En,Fr,Es) (NDSi Enhanced) [b].zip" ;;
            18) download-game "nds" "Spider-Man - Edge of Time (USA) (En,Fr).zip" ;;
            19) download-game "nds" "Spider-Man - Shattered Dimensions (USA) (En,Fr).zip" ;;
            20) download-game "nds" "Spider-Man - Web of Shadows (USA) (En,Fr) [b].zip" ;;
            21) download-game "nds" "Spider-Man 2 (USA).zip" ;;
            22) download-game "nds" "Spider-Man 3 (USA).zip" ;;
            23) download-game "nds" "Star Wars - Battlefront - Elite Squadron (USA) (En,Fr) [b].zip" ;;
            24) download-game "nds" "Star Wars - Episode III - Revenge of the Sith (USA) (En,Fr,De,Es,It,Nl).zip" ;;
            25) download-game "nds" "Star Wars - Lethal Alliance (USA) (En,Fr,De,Es,It).zip" ;;
            26) download-game "nds" "Star Wars - The Force Unleashed (USA) (En,Fr,De,Es,It).zip" ;;
            27) download-game "nds" "Super Mario 64 DS (USA).zip" ;;
            28) download-game "nds" "Tetris DS (USA).zip" ;;
            29) download-game "nds" "Tetris Party Deluxe (USA) (En,Fr,Es).zip" ;;
            30) download-game "nds" "Tony Hawk's Downhill Jam (USA).zip" ;;
            31) download-game "nds" "Tony Hawk's Motion (USA).zip " ;;
            32) download-game "nds" "Transformers - Dark of the Moon - Autobots (USA) (En,Fr).zip" ;;
            33) download-game "nds" "Transformers - Dark of the Moon - Decepticons (USA) (En,Fr).zip" ;;
            34) download-game "nds" "Underground Pool (USA).zip" ;;
            35) download-game "nds" "Warhammer 40,000 - Squad Command (USA) (En,Fr).zip" ;;
            36) download-game "nds" "Wario - Master of Disguise (USA).zip" ;;
            37) download-game "nds" "Wipeout - The Game (USA).zip" ;;
            38) download-game "nds" "X-Men - Destiny (USA).zip" ;;
            39) download-game "nds" "X-Men - The Official Game (USA).zip" ;;
            40) download-game "nds" "Yoshi's Island DS (USA).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function nes() {
        local choice
    whiptail --clear --title "PICK & CHOOSE NES" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "10-Yard Fight" off \
                "2" "3-D WorldRunner" off \
                "3" "Advanced D&D - DragonStrike" off \
                "4" "Advanced D&D - Heroes of the Lance" off \
                "5" "Adventure Island 3" off \
                "6" "Airwolf" off \
                "7" "Aladdin" off \
                "8" "Arkanoid" off \
                "9" "Asterix" off \
                "10" "Bad News Baseball" off \
                "11" "Batman - Return of the Joker" off \
                "12" "Battletoads" off \
                "13" "Battletoads-Double Dragon" off \
                "14" "Blues Brothers, The " off \
                "15" "Bomberman" off \
                "16" "Bubble Bobble" off \
                "17" "BurgerTime" off \
                "18" "Captain Comic - The Adventure" off \
                "19" "Castlevania" off \
                "20" "Castlevania III - Dracula's Curse" off \
                "21" "Cliffhanger" off \
                "22" "Dig Dug II - Trouble in Paradise" off \
                "23" "Donkey Kong" off \
                "24" "Double Dragon" off \
                "25" "Double Dragon III - The Sacred Stones" off \
                "26" "Dr. Mario" off \
                "27" "Duck Hunt" off \
                "28" "Excitebike" off \
                "29" "Fire 'n Ice" off \
                "30" "G.I. Joe - A Real American Hero" off \
                "31" "Galaga - Demons of Death" off \
                "32" "Gradius" off \
                "33" "Ikari Warriors II - Victory Road" off \
                "34" "Jurassic Park" off \
                "35" "Karate Kid, The" off \
                "36" "Kid Icarus" off \
                "37" "Kirby's Adventure" off \
                "38" "Legend of Zelda, The" off \
                "39" "Mario Bros." off \
                "40" "Mega Man 6" off \
                "41" "Metroid" off \
                "42" "Mike Tyson's Punch-Out!!" off \
                "43" "Ninja Gaiden" off \
                "44" "Pac-Man" off \
                "45" "Platoon" off \
                "46" "Q-bert" off \
                "47" "Rad Racer" off \
                "48" "RoboCop" off \
                "49" "Super Mario Bros." off \
                "50" "Super Mario Bros. 2" off \
                "51" "Super Mario Bros. 3" off \
                "52" "Super Spy Hunter" off \
                "53" "Teenage Mutant Ninja Turtles" off \
                "54" "Tetris" off \
                "55" "Zelda II - The Adventure of Link" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "nes" "10-Yard Fight (USA, Europe).zip" ;;
            2) download-game "nes" "3-D WorldRunner (USA).zip" ;;
            3) download-game "nes" "Advanced Dungeons & Dragons - DragonStrike (USA).zip" ;;
            4) download-game "nes" "Advanced Dungeons & Dragons - Heroes of the Lance (USA).zip" ;;
            5) download-game "nes" "Adventure Island 3 (USA).zip" ;;
            6) download-game "nes" "Airwolf (USA).zip" ;;
            7) download-game "nes" "Aladdin (Europe).zip" ;;
            8) download-game "nes" "Arkanoid (USA).zip" ;;
            9) download-game "nes" "Asterix (Europe).zip" ;;
            10) download-game "nes" "Bad News Baseball (USA).zip" ;;
            11) download-game "nes" "Batman - Return of the Joker (USA).zip" ;;
            12) download-game "nes" "Battletoads (USA).zip" ;;
            13) download-game "nes" "Battletoads-Double Dragon (USA).zip" ;;
            14) download-game "nes" "Blues Brothers, The (USA).zip" ;;
            15) download-game "nes" "Bubble Bobble (USA).zip" ;;
            16) download-game "nes" "BurgerTime (USA).zip" ;;
            17) download-game "nes" "Captain Comic - The Adventure (USA) (Unl).zip" ;;
            18) download-game "nes" "Castlevania (USA).zip" ;;
            19) download-game "nes" "Castlevania III - Dracula's Curse (USA).zip" ;;
            20) download-game "nes" "Cliffhanger (USA).zip" ;;
            21) download-game "nes" "Dig Dug II - Trouble in Paradise (USA).zip" ;;
            22) download-game "nes" "Donkey Kong (World) (Rev A).zip" ;;
            23) download-game "nes" "Double Dragon (USA).zip" ;;
            24) download-game "nes" "Double Dragon III - The Sacred Stones (USA).zip" ;;
            25) download-game "nes" "Dr. Mario (Japan, USA).zip" ;;
            26) download-game "nes" "Duck Hunt (World).zip" ;;
            27) download-game "nes" "Excitebike (Japan, USA).zip" ;;
            28) download-game "nes" "Fire 'n Ice (USA).zip" ;;
            29) download-game "nes" "G.I. Joe - A Real American Hero (USA).zip" ;;
            30) download-game "nes" "Galaga - Demons of Death (USA).zip" ;;
            31) download-game "nes" "Gradius (USA).zip" ;;
            32) download-game "nes" "Ice Climber (USA, Europe).zip" ;;
            33) download-game "nes" "Ikari Warriors II - Victory Road (USA).zip" ;;
            34) download-game "nes" "Jurassic Park (USA).zip" ;;
            35) download-game "nes" "Karate Kid, The (USA).zip" ;;
            36) download-game "nes" "Kid Icarus (USA, Europe).zip" ;;
            37) download-game "nes" "Kirby's Adventure (USA).zip" ;;
            38) download-game "nes" "Legend of Zelda, The (USA).zip" ;;
            39) download-game "nes" "Mario Bros. (World).zip" ;;
            40) download-game "nes" "Mega Man 6 (USA).zip" ;;
            41) download-game "nes" "Metroid (USA).zip" ;;
            42) download-game "nes" "Mike Tyson's Punch-Out!! (Japan, USA).zip" ;;
            43) download-game "nes" "Ninja Gaiden (USA).zip" ;;
            44) download-game "nes" "Pac-Man (USA).zip" ;;
            45) download-game "nes" "Platoon (USA).zip" ;;
            46) download-game "nes" "Q-bert (USA).zip" ;;
            47) download-game "nes" "Rad Racer (USA).zip" ;;
            48) download-game "nes" "RoboCop (USA).zip" ;;
            49) download-game "nes" "Super Mario Bros. (World).zip" ;;
            50) download-game "nes" "Super Mario Bros. 2 (USA) (Rev A).zip" ;;
            51) download-game "nes" "Super Mario Bros. 3 (USA).zip" ;;
            52) download-game "nes" "Super Spy Hunter (USA).zip" ;;
            53) download-game "nes" "Teenage Mutant Ninja Turtles (USA).zip" ;;
            54) download-game "nes" "Tetris (USA).zip" ;;
            55) download-game "nes" "Zelda II - The Adventure of Link (USA).zip" ;;
             *) ;;
        esac
        done < /tmp/results
}
function psx() {
        local choice
          whiptail --clear --title "PICK & CHOOSE PS1" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Alone in the Dark - One-Eyed Jack's Revenge" off \
                "2" "Castlevania - Symphony of the Night" off \
                "3" "Castlevania Chronicles" off \
                "4" "Cool Boarders 2" off \
                "5" "Crash Bandicoot" off \
                "6" "Crash Bandicoot - Warped" off \
                "7" "Crash Bash" off \
                "8" "Dead or Alive" off \
                "9" "Destruction Derby 2" off \
                "10" "Doom" off \
                "11" "Dragon Ball GT - Final Bout" off \
                "12" "Dragon Ball Z - Ultimate Battle 22" off \
                "13" "Duke Nukem - Time to Kill" off \
                "14" "FIFA - Road to World Cup 98" off \
                "15" "Grand Theft Auto 2" off \
                "16" "Hydro Thunder" off \
                "17" "JoJo's Bizarre Adventure" off \
                "18" "Marvel VS Street Fighter" off \
                "19" "Metal Slug X" off \
                "20" "NBA Jam Extreme" off \
                "21" "Oddworld - Abe's Oddysee" off \
                "22" "Quake II" off \
                "23" "Rayman" off \
                "24" "Tekken 3" off \
                "25" "Tony Hawk's Pro Skater" off \
                "26" "Tony Hawk's Pro Skater 2" off \
                "27" "Tony Hawk's Pro Skater 3" off \
                "28" "Tony Hawk's Pro Skater 4" off \
                "29" "Twisted Metal" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "psx" "Alone in the Dark - One-Eyed Jack's Revenge (USA).pbp" ;;
            2) download-game "psx" "Castlevania - Symphony of the Night (USA).pbp" ;;
            3) download-game "psx" "Castlevania Chronicles (USA).pbp" ;;
            4) download-game "psx" "Cool Boarders 2 (USA).pbp" ;;
            5) download-game "psx" "Crash Bandicoot (USA).pbp" ;;
            6) download-game "psx" "Crash Bandicoot - Warped (USA).pbp" ;;
            7) download-game "psx" "Crash Bash (USA).pbp" ;;
            8) download-game "psx" "Dead or Alive (USA).pbp" ;;
            9) download-game "psx" "Destruction Derby 2 (USA).pbp" ;;
            10) download-game "psx" "Doom (USA).pbp" ;;
            11) download-game "psx" "Dragon Ball GT - Final Bout (USA).pbp" ;;
            12) download-game "psx" "Dragon Ball Z - Ultimate Battle 22 (USA).pbp" ;;
            13) download-game "psx" "Duke Nukem - Time to Kill (USA).pbp" ;;
            14) download-game "psx" "FIFA - Road to World Cup 98 (USA).pbp" ;;
            15) download-game "psx" "Grand Theft Auto 2 (USA).pbp" ;;
            16) download-game "psx" "Hydro Thunder (USA).pbp" ;;
            17) download-game "psx" "JoJo's Bizarre Adventure (USA).pbp" ;;
            18) download-game "psx" "Marvel Super Heroes vs. Street Fighter (USA).pbp" ;;
            19) download-game "psx" "Metal Slug X (USA).pbp" ;;
            20) download-game "psx" "NBA Jam Extreme (USA).pbp" ;;
            21) download-game "psx" "Oddworld - Abe's Oddysee (USA).pbp" ;;
            22) download-game "psx" "Quake II (USA).pbp" ;;
            23) download-game "psx" "Rayman (USA).pbp" ;;
            24) download-game "psx" "Tekken 3 (USA).pbp" ;;
            25) download-game "psx" "Tony Hawk's Pro Skater (USA).pbp" ;;
            26) download-game "psx" "Tony Hawk's Pro Skater 2 (USA).pbp" ;;
            27) download-game "psx" "Tony Hawk's Pro Skater 3 (USA).pbp" ;;
            28) download-game "psx" "Tony Hawk's Pro Skater 4 (USA).pbp" ;;
            29) download-game "psx" "Twisted Metal (USA).pbp" ;;
            *) ;;
        esac
        done < /tmp/results
}
function psp() {
        local choice
    whiptail --clear --title "PICK & CHOOSE PSP" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
            "1" "Aliens vs Predator - Requiem" off \
            "2" "Ape Escape - On the Loose" off \
            "3" "Assassins Creed - Bloodlines" off \
            "4" "Astro Boy - The Video Game" off \
            "5" "BlazBlue - Calamity Trigger" off \
            "6" "Blazing Souls Accelate" off \
            "7" "Bomberman Land" off \
            "8" "Brave Story - New Traveler" off \
            "9" "Burnout Legends" off \
            "10" "Cabela Dangerous Hunts - Ultimate Challenge" off \
            "11" "Capcom Classics Collection Reloaded" off \
            "12" "Castlevania - The Dracula X Chronicles" off \
            "13" "Cladun - This is an RPG!" off \
            "14" "Crystal Defenders" off \
            "15" "Dantes Inferno" off \
            "16" "Daxter" off \
            "17" "Dead Head Fred" off \
            "18" "Death Jr. 2 - Root of Evil" off \
            "19" "Dragon Ball Z - Shin Budokai" off \
            "20" "Dragon Ball Z - Tenkaichi Tag Team" off \
            "21" "Dungeon Explorer - Warriors of Ancient Arts" off \
            "22" "Dungeon Maker - Hunting Ground" off \
            "23" "Dynasty Warriors" off \
            "24" "EA Replay" off \
            "25" "FIFA Soccer 10" off \
            "26" "Family Guy - Video Game!" off \
            "27" "Frogger - Helmet Chaos" off \
            "28" "G.I. Joe - The Rise of Cobra" off \
            "29" "Ghost in the Shell - Stand Alone Complex" off \
            "30" "Gradius Collection" off \
            "31" "Gran Turismo" off \
            "32" "Grand Theft Auto - Chinatown Wars" off \
            "33" "Grand Theft Auto - Liberty City Stories" off \
            "34" "Guilty Gear Judgment" off \
            "35" "Guilty Gear XX Accent Core Plus" off \
            "36" "Half-Minute Hero" off \
            "37" "Hard Rock Casino (US).iso" off \
            "38" "Harvest Moon - Hero of Leaf Valley" off \
            "39" "Invizimals (US).iso" off \
            "40" "Jak and Daxter - The Lost Frontier" off \
            "41" "Justice League Heroes" off \
            "42" "LEGO Star Wars 2 - The Original Trilogy" off \
            "43" "Legend of the Dragon (US).iso" off \
            "44" "Lumines - Puzzle Fusion" off \
            "45" "Marvel - Ultimate Alliance 2" off \
            "46" "Metal Gear Ac!d 2" off \
            "47" "Metal Gear Solid - Portable Ops" off \
            "48" "Monster Hunter Freedom" off \
            "49" "NBA 08 (US)" off \
            "50" "NHL 07 (US).iso" off \
            2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-psp "Aliens vs Predator - Requiem (US).iso" ;;
            2) download-psp "Ape Escape - On the Loose (US).iso" ;;
            3) download-psp "Assassins Creed - Bloodlines (US).iso" ;;
            4) download-psp "Astro Boy - The Video Game (US).iso" ;;
            5) download-psp "BlazBlue - Calamity Trigger (US).iso" ;;
            6) download-psp "Blazing Souls Accelate (US).iso" ;;
            7) download-psp "Bomberman Land (US).iso" ;;
            8) download-psp "Brave Story - New Traveler (US).iso" ;;
            9) download-psp "Burnout Legends (US).iso" ;;
            10) download-psp "Cabela Dangerous Hunts - Ultimate Challenge (US).iso" ;;
            11) download-psp "Capcom Classics Collection Reloaded (US).iso" ;;
            12) download-psp "Castlevania - The Dracula X Chronicles (US).iso" ;;
            13) download-psp "Cladun - This is an RPG! (US).iso" ;;
            14) download-psp "Crystal Defenders (US).iso" ;;
            15) download-psp "Dantes Inferno (US).iso" ;;
            16) download-psp "Daxter (US).iso" ;;
            17) download-psp "Dead Head Fred (US).iso" ;;
            18) download-psp "Death Jr. 2 - Root of Evil (US).iso" ;;
            19) download-psp "Dragon Ball Z - Shin Budokai (US).iso" ;;
            20) download-psp "Dragon Ball Z - Tenkaichi Tag Team (USA) (En,Fr,Es).iso" ;;
            21) download-psp "Dungeon Explorer - Warriors of Ancient Arts (US).iso" ;;
            22) download-psp "Dungeon Maker - Hunting Ground (US).iso" ;;
            23) download-psp "Dynasty Warriors (US).iso" ;;
            24) download-psp "EA Replay (US).iso" ;;
            25) download-psp "FIFA Soccer 10 (US).iso" ;;
            26) download-psp "Family Guy - Video Game! (US).iso" ;;
            27) download-psp "Frogger - Helmet Chaos (US).iso" ;;
            28) download-psp "G.I. Joe - The Rise of Cobra (US).iso" ;;
            29) download-psp "Ghost in the Shell - Stand Alone Complex (US).iso" ;;
            30) download-psp "Gradius Collection (US).iso" ;;
            31) download-psp "Gran Turismo (US).iso" ;;
            32) download-psp "Grand Theft Auto - Chinatown Wars (US).iso" ;;
            33) download-psp "Grand Theft Auto - Liberty City Stories (US).iso" ;;
            34) download-psp "Guilty Gear Judgment (US).iso" ;;
            35) download-psp "Guilty Gear XX Accent Core Plus (US).iso" ;;
            36) download-psp "Half-Minute Hero (US).iso" ;;
            37) download-psp "Hard Rock Casino (US).iso" ;;
            38) download-psp "Harvest Moon - Hero of Leaf Valley (US).iso" ;;
            39) download-psp "Invizimals (US).iso" ;;
            40) download-psp "Jak and Daxter - The Lost Frontier (US).iso" ;;
            41) download-psp "Justice League Heroes (US).iso" ;;
            42) download-psp "LEGO Star Wars 2 - The Original Trilogy (US).iso" ;;
            43) download-psp "Legend of the Dragon (US).iso" ;;
            44) download-psp "Lumines - Puzzle Fusion (US).iso" ;;
            45) download-psp "Marvel - Ultimate Alliance 2 (US).iso" ;;
            46) download-psp "Metal Gear Ac!d 2 (US).iso" ;;
            47) download-psp "Metal Gear Solid - Portable Ops (US).iso" ;;
            48) download-psp "Monster Hunter Freedom (US).iso" ;;
            49) download-psp "NBA 08 (US).iso" ;;
            50) download-psp "NHL 07 (US).iso" ;;
            *) ;;
        esac
        done < /tmp/results
}
function saturn() {
          whiptail --clear --title "PICK & CHOOSE SATURN" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
	        --ok-button Download --cancel-button Back \
                "1" "Albert Odyssey - Legend of Eldean" off \
                "2" "Area 51" off \
                "3" "Burning Rangers" off \
                "4" "Daytona USA" off \
                "5" "Dead or Alive (Japan)" off \
                "6" "Die Hard Arcade" off \
                "7" "DonPachi (Japan)" off \
                "8" "Dragon Ball Z" off \
                "9" "Duke Nukem 3D" off \
                "10" "Dragon Force" off \
                "11" "Earthworm Jim 2" off \
                "12" "Fighters Megamix" off \
                "13" "Galactic Attack" off \
                "14" "Guardian Heroes" off \
                "15" "Hi-Octane - The Track Fights Back!" off \
                "16" "House of the Dead" off \
                "17" "Impact Racing" off \
                "18" "King of Fighters '95" off \
                "19" "Lost World, The - Jurassic Park" off \
                "20" "Manx TT SuperBike" off \
                "21" "Marvel Super Heroes" off \
                "22" "Mortal Kombat II" off \
                "23" "Megaman X4" off \
                "24" "Nights Into Dreams..." off \
                "25" "Panzer Dragoon" off \
                "26" "Panzer Dragoon II - Zwei" off \
                "27" "Rayman" off \
                "28" "Resident Evil" off \
                "29" "Robotica" off \
                "30" "Sega Rally Championship" off \
                "31" "Saturn Bomber Man" off \
                "32" "Sonic 3D Blast" off \
                "33" "Street Fighter Alpha - Warrior's Dreams" off \
                "34" "Street Fighter Alpha 2" off \
                "35" "Thunder Force V" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "saturn" "Albert Odyssey - Legend of Eldean (USA).chd" ;;
            2) download-game "saturn" "Area 51 (USA).zip" ;;
            3) download-game "saturn" "Burning Rangers (USA).zip" ;;
            4) download-game "saturn" "Daytona USA (USA).zip" ;;
            5) download-game "saturn" "Dead or Alive (Japan).zip" ;;
            6) download-game "saturn" "Die Hard Arcade (USA).zip.zip" ;;
            7) download-game "saturn" "DonPachi (Japan).zip" ;;
            8) download-game "saturn" "Dragon Ball Z - The Legend (Europe).zip" ;;
            9) download-game "saturn" "Duke Nukem 3D (Europe).zip" ;;
            10) download-game "saturn" "Dragon Force (USA).zip" ;;      
            11) download-game "saturn" "Earthworm Jim 2 (USA).zip" ;;
            12) download-game "saturn" "Fighters Megamix (USA).zip" ;;
            13) download-game "saturn" "Galactic Attack (USA).chd" ;;
            14) download-game "saturn" "Guardian Heroes (USA).chd" ;;
            15) download-game "saturn" "Hi-Octane - The Track Fights Back! (USA).zip" ;;
            16) download-game "saturn" "House of the Dead, The (USA).zip" ;;
            17) download-game "saturn" "Impact Racing (USA).zip" ;;
            18) download-game "saturn" "King of Fighters '95, The (Europe).zip" ;;
            19) download-game "saturn" "Lost World, The - Jurassic Park (USA).zip" ;;
            20) download-game "saturn" "Manx TT SuperBike (USA).chd" ;;
            21) download-game "saturn" "Marvel Super Heroes (USA).zip" ;;
            22) download-game "saturn" "Mortal Kombat II (USA).zip" ;;
            23) download-game "saturn" "Megaman X4 (USA).zip" ;;
            24) download-game "saturn" "Nights Into Dreams... (USA).zip" ;;
            25) download-game "saturn" "Panzer Dragoon (USA).chd" ;;
            26) download-game "saturn" "Panzer Dragoon II - Zwei (USA).zip" ;;
            27) download-game "saturn" "Rayman (USA).zip" ;;
            28) download-game "saturn" "Resident Evil (USA).zip" ;;
            29) download-game "saturn" "Robotica (USA).zip" ;;
            30) download-game "saturn" "Sega Rally Championship (USA).zip" ;;
            31) download-game "saturn" "Saturn Bomber Man (Europe).chd" ;;
            32) download-game "saturn" "Sonic 3D Blast (USA).zip" ;;
            33) download-game "saturn" "Street Fighter Alpha - Warrior's Dreams (USA).zip" ;;
            34) download-game "saturn" "Street Fighter Alpha 2 (USA).chd" ;;
            35) download-game "saturn" "Thunder Force V (Japan).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function snes() {
          whiptail --clear --title "PICK & CHOOSE SNES" --separate-output --checklist "Choose Game(s) and click Download:" 0 0 0 \
      --ok-button Download --cancel-button Back \
                "1" "Adventures of Batman & Robin, The" off \
                "2" "Adventures of Kid Kleets, The" off \
                "3" "Aero the Acro-Bat" off \
                "4" "Alien 3" off \
                "5" "Alien vs. Predator" off \
                "6" "Asterix & Obelix" off \
                "7" "Batman Forever" off \
                "8" "Battletoads & Double Dragon - The Ultimate Team" off \
                "9" "Battletoads in Battlemaniacs" off \
                "10" "Biker Mice from Mars" off \
                "11" "Blackhawk" off \
                "12" "Brawl Brothers - Rival Turf! 2" off \
                "13" "Captain America and the Avengers (Europe).zip" off \
                "14" "Castlevania - Vampire's Kiss" off \
                "15" "Corn Buster" off \
                "16" "Donkey Kong Country" off \
                "17" "Donkey Kong Country 2 - Diddy's Kong Quest" off \
                "18" "Donkey Kong Country 3 - Dixie Kong's Double Trouble!" off \
                "19" "Doom" off \
                "10" "Double Dragon V - The Shadow Falls" off \
                "21" "Dragon - The Bruce Lee Story" off \
                "22" "Dungeon Master" off \
                "23" "Earthworm Jim" off \
                "24" "Earthworm Jim 2" off \
                "25" "Final Fight" off \
                "26" "Flashback - The Quest for Identity" off \
                "27" "Harvest Moon" off \
                "28" "Hyper V-Ball" off \
                "29" "James Bond Jr." off \
                "30" "Judge Dredd" off \
                "31" "Kirby's Dream Course" off \
                "32" "Kirby's Ghost Trap" off \
                "33" "Legend of Zelda -A Link to the Past" off \
                "34" "Lemmings" off \
                "35" "Mario Is Missing!" off \
                "36" "Mega Man 7" off \
                "37" "Mega Man X3" off \
                "38" "Micro Machines" off \
                "39" "Mortal Kombat II" off \
                "40" "Mortal Kombat III" off \
                "41" "Ms. Pac-Man" off \
                "42" "Pac-Attack" off \
                "43" "Pitfall - The Mayan Adventure" off \
                "44" "R-Type III - The Third Lightning" off \
                "45" "Secret of Evermore" off \
                "46" "Spider-Man & Venom - Maximum Carnage" off \
                "47" "Super Bomberman" off \
                "48" "Super Mario World" off \
                "49" "Super Mario World 2 - Yoshi's Island" off \
                "50" "Tetris Attack" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
            1) download-game "snes" "Adventures of Batman & Robin, The (Europe).zip" ;;
            2) download-game "snes" "Adventures of Kid Kleets, The (USA) (En,Fr,Es).zip" ;;
            3) download-game "snes" "Aero the Acro-Bat (Europe).zip" ;;
            4) download-game "snes" "Alien 3 (Europe).zip" ;;
            5) download-game "snes" "Alien vs. Predator (Europe).zip" ;;
            6) download-game "snes" "Asterix & Obelix (Europe) (En,Fr,De,Es).zip" ;;
            7) download-game "snes" "Batman Forever (Europe).zip" ;;
            8) download-game "snes" "Battletoads & Double Dragon - The Ultimate Team (Europe).zip" ;;
            9) download-game "snes" "Battletoads in Battlemaniacs (Europe).zip" ;;
            10) download-game "snes" "Biker Mice from Mars (Europe).zip" ;;
            11) download-game "snes" "Blackhawk (Europe) (En,Fr,De).zip" ;;
            12) download-game "snes" "Brawl Brothers - Rival Turf! 2 (Europe).zip" ;;
            13) download-game "snes" "Captain America and the Avengers (Europe).zip" ;;
            14) download-game "snes" "Castlevania - Vampire's Kiss (Europe).zip" ;;
            15) download-game "snes" "Corn Buster (Europe) (Proto).zip" ;;
            16) download-game "snes" "Donkey Kong Country (Europe) (En,Fr,De) (Rev 1).zip" ;;
            17) download-game "snes" "Donkey Kong Country 2 - Diddy's Kong Quest (Europe) (En,Fr) (Rev 1).zip" ;;
            18) download-game "snes" "Donkey Kong Country 3 - Dixie Kong's Double Trouble! (Europe) (En,Fr,De).zip" ;;
            19) download-game "snes" "Doom (Europe).zip" ;;
            20) download-game "snes" "Double Dragon V - The Shadow Falls (Europe).zip" ;;
            21) download-game "snes" "Dragon - The Bruce Lee Story (Europe).zip" ;;
            22) download-game "snes" "Dungeon Master (Europe).zip" ;;
            23) download-game "snes" "Earthworm Jim (Europe).zip" ;;
            24) download-game "snes" "Earthworm Jim 2 (Europe).zip" ;;
            25) download-game "snes" "Final Fight (Europe).zip" ;;
            26) download-game "snes" "Flashback - The Quest for Identity (USA) (En,Fr,De).zip" ;;
            27) download-game "snes" "Harvest Moon (Europe).zip" ;;
            28) download-game "snes" "Hyper V-Ball (Europe).zip" ;;
            29) download-game "snes" "James Bond Jr. (Europe).zip" ;;
            30) download-game "snes" "Judge Dredd (Europe).zip" ;;
            31) download-game "snes" "Kirby's Dream Course (Europe).zip" ;;
            32) download-game "snes" "Kirby's Ghost Trap (Europe).zip" ;;
            33) download-game "snes" "Legend of Zelda, The - A Link to the Past (Europe).zip" ;;
            34) download-game "snes" "Lemmings (Europe).zip" ;;
            35) download-game "snes" "Mario Is Missing! (Europe).zip" ;;
            36) download-game "snes" "Mega Man 7 (Europe).zip " ;;
            37) download-game "snes" "Mega Man X3 (Europe).zip" ;;
            38) download-game "snes" "Micro Machines (Europe).zip" ;;
            39) download-game "snes" "Mortal Kombat II (Europe).zip" ;;
            40) download-game "snes" "Mortal Kombat 3 (Europe).zip" ;;
            41) download-game "snes" "Ms. Pac-Man (Europe).zip" ;;
            42) download-game "snes" "Pac-Attack (Europe).zip" ;;
            43) download-game "snes" "Pitfall - The Mayan Adventure (Europe).zip" ;;
            44) download-game "snes" "R-Type III - The Third Lightning (Europe).zip" ;;
            45) download-game "snes" "Secret of Evermore (Europe).zip" ;;
            46) download-game "snes" "Spider-Man & Venom - Maximum Carnage (Europe).zip" ;;
            47) download-game "snes" "Super Bomberman (Europe).zip" ;;
            48) download-game "snes" "Super Mario World (Europe) (Rev 1).zip" ;;
            49) download-game "snes" "Super Mario World 2 - Yoshi's Island (Europe) (En,Fr,De).zip" ;;
            50) download-game "snes" "Tetris Attack (Europe) (En,Ja).zip" ;;
            *) ;;
        esac
        done < /tmp/results
}
function mugens() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
  dialog  --sleep 1 --title "MUGEN EXIT HELP" --msgbox " 
----------------ATTENTION-----------------
-----THIS DOWNLOADS TO ....roms/mugens----
---------IF MUGEN DOES NOT SHOW-----------
-open pixel desktop
-go to home/pi/.emulationstation/es_systems.cfg
-open with text editor
-copy and  paste wine system  
On pasted wine system
-change "wine" to "mugen"
-change paths to .../roms/mugens
-save & exit 
-Reboot system " 0 0
 whiptail --clear --title "MUGEN DOWNLOAD MENU" --separate-output \
                --ok-button Download --cancel-button Back \
                --checklist "Choose:" 0 0 0 \
                "+" "MUGEN NAME                     FILE SIZE" off \
		"1" "Famicon Fighters                  100 MB" off \
                "2" "Original MUGEN                      8 MB" off \
		"3" "Sonic Freedom Fighter              15 MB" off \
		"4" "SpiderMan Web Of Freedom          2.3 GB" off \
		"5" "Ultimate Sonic                    200 MB" off \
		 2>/tmp/results
    while read -r choice  
        do
        case $choice in
	       +) none ;;
	       1) download-mugens "Retro-Devils_Famicon-Fighters-Mugen.zip" ;;
               2) download-mugens "Retro-Devils_OG-Mugen.zip" ;;
	       3) download-mugens "Retro-Devils_Sonic-Freedom-Fighters-Mugen.zip" ;;
	       4) download-mugens "Retro-Devils_Spiderman-WoF-Mugen.zip" ;;
	       5) download-mugens "Retro-Devils_Ultimate-Sonic-Mugen.zip" ;;
	       *) ;;
        esac
        done < /tmp/results
fi
}
pcgames() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "PC/DOS Downloader Help" --msgbox " 
-------------------------------
    PC/DOS DOWNLOADER HELP
-------------------------------
-You must have DosBox installed for this too work 
-lr-dosbox-pure is recommended to play all games.
-Downloads games to $HOME/RetroPie/roms/pc
-Games Includes a run.bat batch to launch from Retropie 
-Games are zipped. Devils Box downloads unzips and does all the work for ya.
-Thanks for using have a good day." 0 0

    whiptail --clear --title "PC/DOS DOWNLOAD MENU" --separate-output \
                --ok-button Download --cancel-button Back \
                --checklist "Choose:" 0 0 0 \
                "+" "GAME NAME                           FILE SIZE" off \
                "1" "Alleycat                                54KMB" off \
                "2" "Batman                                   16MB" off \
                "3" "Batman Returns                          180MB" off \
                "4" "Challenge of the Ancient Empires        666kB" off \
                "5" "Command & Conquer                       1.5GB" off \
                "6" "Command & Conquer Red Alert             2.1GB" off \
                "7" "Doom 1                                  7.4MB" off \
                "8" "Doom 1 - RogueLike                        3MB" off \
                "9" "Doom 2                                   15MB" off \
               "10" "Dragon's Lair                           4.3MB" off \
               "11" "Dragon's Lair 2                           4MB" off \
               "12" "Dragon's Lair 3                           4MB" off \
               "13" "Duke Nukem 2                            3.4MB" off \
               "14" "Duke Nukem 3D                            12MB" off \
               "15" "Dune 1                                  1.8MB" off \
               "16" "Dune 2                                  7.2MB" off \
               "17" "Dynablaster I                           810KB" off \
               "18" "Fable                                   124MB" off \
               "19" "Grand Theft Auto                        109MB" off \
               "20" "Hexxagon II                             649KB" off \
               "21" "Indy Car                                616KB" off \
               "22" "Ironman                                 540KB" off \
               "23" "Lemmings                                440KB" off \
               "24" "Locomotion                              753KB" off \
               "25" "Mech Warrior                            1.2MB" off \
               "26" "Micro Machines 2                       11.2MB" off \
               "27" "Mortal Kombat                          18.5MB" off \
               "28" "Mortal Kombat 2                        18.9MB" off \
               "29" "OpenBOR                                59.8MB" off \
               "30" "Prehistorik                             785KB" off \
               "31" "Prehistorik 2                             1MB" off \
               "32" "Rampage                                 194KB" off \
               "33" "Scorched Earth                          1.5MB" off \
               "34" "SimCity 2000 SE                          18MB" off \
               "35" "Snake 2                                  40KB" off \
               "36" "Star Trek Rites                          40MB" off \
               "37" "Star Wars Dark Forces                    67MB" off \
               "38" "Star Wars X Wing                         12MB" off \
               "39" "Street Rod 1                            689KB" off \
               "40" "Street Rod 2                            1.2MB" off \
               "41" "Super Solvers - Midnight Rescue         630KB" off \
               "42" "Super Solvers - Treasure Mountain       651KB" off \
               "43" "Super-Solvers - Outnumbered             564KB" off \
               "44" "Terep 1                                 149KB" off \
               "45" "Test Drive 1                            288KB" off \
               "46" "The Incredible Machine                  716KB" off \
               "47" "The Incredible Machine 2                4.9MB" off \
               "48" "The Lost Vikings                        1.6MB" off \
               "49" "The Oregon Trail 2                      635KB" off \
               "50" "The Oregon Trail 3                      3.8MB" off \
               "51" "The Settlers                           35.8MB" off \
               "52" "the Settlers 2                          642MB" off \
               "53" "Tie Fighter                              13MB" off \
               "54" "Volfied                                 717KB" off \
               "55" "WarCraft - Orcs and Humans              7.6MB" off \
               "56" "Warcraft 2                               45MB" off \
               "57" "Where in the World Is Carmen San Diego  479KB" off \
               "58" "Wolfeinstein 3D                         2.4MB" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
	       +) none ;;
               1) download-pcgames "Retro-Devils_Alleycat.zip";;
               2) download-pcgames "Retro-Devils_Batman.zip" ;;
               3) download-pcgames "Retro-Devils_Batman-Returns.zip" ;;
               4) download-pcgames "Retro-Devils_challenge-of-the-ancient-empires.zip" ;;
               5) download-pcgames "Retro-Devils_Command-And-Conquer.zip";;
               6) download-pcgames "Retro-Devils_Command-And-Conquer-Red-Alert.zip" ;;
               7) download-pcgames "Retro-Devils_Doom-1.zip" ;;
               8) download-pcgames "Retro-Devils_Doom-1-RogueLike.zip" ;;
               9) download-pcgames "Retro-Devils_Doom-2.zip" ;;
              10) download-pcgames "Retro-Devils_Dragons-Lair.zip" ;;
              11) download-pcgames "Retro-Devils_Dragons-Lair-2.zip" ;;
              12) download-pcgames "Retro-Devils_Dragons-Lair-3.zip" ;;
              13) download-pcgames "Retro-Devils_Duke-Nukem-2.zip" ;;
              14) download-pcgames "Retro-Devils_Duke-Nukem-3D.zip" ;;
              15) download-pcgames "Retro-Devils_Dune-1";;
              16) download-pcgames "Retro-Devils_Dune-2.zip" ;;
              17) download-pcgames "Retro-Devils_Dnyablaster I.zip" ;;
              18) download-pcgames "Retro-Devils_Fable.zip" ;;
              19) download-pcgames "Retro-Devils_GTA" ;;
              20) download-pcgames "Retro-Devils_Heroes2Gold.zip" ;;
              20) download-pcgames "Retro-Devils_Heroes3.zip" ;;
              20) download-pcgames "Retro-Devils_Heroes4.zip" ;;
              20) download-pcgames "Retro-Devils_Hexxagon-II.zip" ;;
              21) download-pcgames "Retro-Devils_Indy-Car.zip" ;;
              22) download-pcgames "Retro-Devils_Ironman.zip" ;;
              23) download-pcgames "Retro-Devils_Lemmings.zip" ;;
              24) download-pcgames "Retro-Devils_Locomotion.zip";;
              25) download-pcgames "Retro-Devils_Mechwarrior.zip"-3 ;;
              26) download-pcgames "Retro-Devils_Micro-Machines-2.zip";;
              27) download-pcgames "Retro-Devils_MortalKombat.zip" ;;
              28) download-pcgames "Retro-Devils_MortalKombat-2.zip" ;;
              29) download-pcgames "Retro-Devils_OPENBOR.zip";;
              30) download-pcgames "Retro-Devils_Prehistorik.zip" ;;
              31) download-pcgames "Retro-Devils_Prehistorik-2.zip" ;;
              32) download-pcgames "Retro-Devils_Rampage.zip" ;;
              33) download-pcgames "Retro-Devils_Scorched-Earth.zip" ;;
              34) download-pcgames "Retro-Devils_SimCity 2000 SE.zip" ;;
              35) download-pcgames "Retro-Devils_Snake 2.zip" ;;
              36) download-pcgames "Retro-Devils_startrek.zip" ;;
              37) download-pcgames "Retro-Devils_Star-Wars-Dark-Forces.zip" ;;
              38) download-pcgames "Retro-Devils_Star-Wars-X-Wing.zip.zip" ;;
              39) download-pcgames "Retro-Devils_Street-Rod.zip" ;;
              40) download-pcgames "Retro-Devils_Street-Rod-2.zip" ;;
              41) download-pcgames "Retro-Devils_Super-Solvers-Midnight-Rescue.zip" ;;
              42) download-pcgames "Retro-Devils_Super-Solvers-Outnumbered.zip" ;;
              43) download-pcgames "Retro-Devils_Super-Solvers-Treasure--Mountain.zip" ;;
              44) download-pcgames "Retro-Devils_Terep-1.zip" ;;
              45) download-pcgames "Retro-Devils_Test-Drive-1.zip" ;;
              46) download-pcgames "Retro-Devils_The-Incredible-Machine.zip" ;;
              47) download-pcgames "Retro-Devils_The-Incredible-Machine-2.zip" ;;
              48) download-pcgames "Retro-Devils_The-Lost-Vikings.zip" ;;
              49) download-pcgames "Retro-Devils_The-Oregon-Trail-2.zip" ;;
              50) download-pcgames "Retro-Devils_The-Oregon-Trail-3.zip" ;;
              51) download-pcgames "Retro-Devils_TheSettlers.zip";;
              52) download-pcgames "Retro-Devils_TheSettlers2.zip";;
              53) download-pcgames "Retro-Devils_Tiefighter.zip" ;;
              54) download-pcgames "Retro-Devils_Volfied.zip" ;;
              55) download-pcgames "Retro-Devils_WarCraft-Orcs-and-Humans.zip" ;;
              56) download-pcgames "Retro-Devils_WarCraft-2.zip" ;;
              57) download-pcgames "Retro-Devils_Where-in-the-World-Is-Carmen-San-Diego.zip" ;;
              58) download-pcgames "Retro-Devils_Wolfeinstein-3D" ;;
               *) ;;
        esac
        done < /tmp/results
fi
}
function winegames() {
if [ $NETCHECK  = 1 ]; then
dialog  --sleep 1 --title "OFFLINE ERROR!!" --msgbox " 
Offline ... Downloads not Availible Please Connect To Internet!" 0 0
else
dialog  --sleep 1 --title "Wine Downloader Help" --msgbox " 
-------------------------------
       WINE DOWNLOADER HELP
-------------------------------
-You must have wine/box86 installed for this too work 
-Whats WINE? Wine/box86 play old pc games.
-Downloads games to $HOME/RetroPie/roms/wine/games/.installs
-Games Includes a .sh script to launch from Retropie 
-Games are zipped. Devils Box downloads unzips and does all the work for ya.
-If you move game folder, change .sh script accordingly.
-Thanks for using have a good day." 0 0

    whiptail --clear --title "WINE DOWNLOAD MENU" --separate-output \
                --ok-button Download --cancel-button Back \
                --checklist "Choose:" 0 0 0 \
                "+" "GAME NAME                          FILE SIZE" off \
                "1" "Age Of Empires                         215MB" off \
                "2" "Age Of Empires 2                       6.1GB" off \
                "3" "Angry Birds                              91MB" off \
                "4" "Angry Birds Seasons                    180MB" off \
                "5" "Angry Birds Star Wars 2                110MB" off \
                "6" "Command & Conquer Generals+Zero Hour   2.7GB" off \
                "7" "Cuphead                                 11GB" off \
                "8" "Delta Force Xtreme                     843MB" off \
                "9" "Diablo 2                               1.8GB" off \
               "10" "Fallout                                535MB" off \
               "11" "Fallout 2                              555MB" off \
               "12" "Fallout Tactics                        1.5GB" off \
               "13" "Harry Potter Prisoner of Azkaban       1.5GB" off \
               "14" "Heroes Of might And Magic 2 Gold       738MB" off \
               "15" "Heroes Of might And Magic 3            426MB" off \
               "16" "Heroes Of might And Magic 4              1GB" off \
               "17" "Hydro Thunder                           66MB" off \
               "18" "Silent Hill 2 Director's Cut           2.3GB" off \
               "19" "Silent Hill 3                          4.8GB" off \
               "20" "Silent Hill 4 The Room                 3.4GB" off \
               "21" "Spooky Castle                           10MB" off \
               "22" "Starcraft                              1.2GB" off \
               "23" "Star Wars Battlefront                  2.3GB" off \
               "24" "Street of Rage Remake v5.2             605MB" off \
               "25" "Teenage Muntant Ninja Turtles          1.3GB" off \
               "26" "The House Of The Dead                  299MB" off \
               "27" "The House Of The Dead 2                579MB" off \
               "28" "The Settlers                            26MB" off \
               "29" "The Simpsons Hit & Run                 1.8GB" off \
               "30" "Unreal Anthology                       8.8GB" off \
               "31" "Warcraft 3                             1.9GB" off \
                2>/tmp/results
    while read -r choice  
        do
        case $choice in
	       +) none ;;
               1) download-winegames "Retro-Devils_AoE.zip"; game_fix "Age-of-Empires-no-cd-error-fix.reg" ;;
               2) download-winegames "Retro-Devils_AoE2.zip" ;;
               3) download-winegames "Retro-Devils_AngryBirds.zip" ;;
               4) download-winegames "Retro-Devils_AngryBirdsSeasons.zip" ;;
               5) download-winegames "Retro-Devils_AngryBirdsStarWars2.zip" ;;
               6) download-winegames "Retro-Devils_CNCGENS-ZH.zip"; game_fix "Command-And-Conquer-fix.reg" ;;
               7) download-winegames "Retro-Devils_Cuphead.zip" ;;
               8) download-winegames "Retro-Devils_DeltaForceXtreme.zip" ;;
               9) download-winegames "Retro-Devils_Diablo2.zip" ;;
              10) download-winegames "Retro-Devils_Fallout.zip" ;;
              11) download-winegames "Retro-Devils_Fallout2.zip" ;;
              12) download-winegames "Retro-Devils_FalloutTactics.zip" ;;
              13) download-winegames "Retro-Devils_HPPOA.zip" ;;
              14) download-winegames "Retro-Devils_Heroes2Gold.zip" game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
              15) download-winegames "Retro-Devils_Heroes3.zip" game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
              16) download-winegames "Retro-Devils_Heroes4.zip" game_fix "Heroes-of-Might-and-Magic-fix.reg" ;;
              17) download-winegames "Retro-Devils_HydroThunder.zip" ;;
              18) download-winegames "Retro-Devils_SilentHill2DC.zip" ;;
              19) download-winegames "Retro-Devils_SilentHill3.zip" ;;
              20) download-winegames "Retro-Devils_SilentHill4TR.zip"; game_fix "Silent-Hill-4-The-Room-Fix.reg" ;;
              21) download-winegames "Retro-Devils_Spooky-Castle.zip" ;;
              22) download-winegames "Retro-Devils_Starcraft.zip" ;;
              23) download-winegames "Retro-Devils_SWBF.zip" ;;
              24) download-winegames "Retro-Devils_Strees-of-Rage-Remake.zip" ;;
              25) download-winegames "Retro-Devils_TMNT.zip" ;;
              26) download-winegames "Retro-Devils_THOTD.zip" ;;
              27) download-winegames "Retro-Devils_THOTD2.zip" ;;
              28) download-winegames "Retro-Devils_TheSettlers.zip" ;;
              29) download-winegames "Retro-Devils_TheSimpsonsHitandRun.zip" ;;
              30) download-winegames "Retro-Devils_UNREAL.zip"; game_fix "Unreal-Anthology-fix.reg" ;;
              31) download-winegames "Retro-Devils_Warcraft3.zip"-3 ;;
               *) ;;
        esac
        done < /tmp/results
fi
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

function download-mugens() {
if [ ! -d "$HOME/RetroPie/roms/wine" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install Wine First" 6 40;
else
  clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST4}/"${1}" -P "$HOME"/RetroPie/roms/mugens -erobots=off
  unzip -o "$HOME"/RetroPie/roms/mugens/"${1}" -d "$HOME"/RetroPie/roms/mugens
  chmod 755 "$HOME"/RetroPie/roms/mugens/*.sh
  sudo rm -r "$HOME"/RetroPie/roms/mugens/"${1}"
fi
}

function download-psp() {
if [ ! -d "$HOME/RetroPie/roms/pc/" ]; then dialog  --sleep 1 --title "PSP FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST6}/"${1}" -P "$HOME"/RetroPie/roms/psp -erobots=off
fi
}

function download-msu1() {
if [ ! -d "$HOME"/RetroPie/roms/snesmsu1/ ]; then dialog  --sleep 1 --title "MSU1 FOLDER MISSING!" --msgbox "RUNNING MSU1 SETUP NOW" 6 40;
chmod 755 "$HOME"/Devils-Box/scripts/MSU1-Setup.sh
"$HOME"/Devils-Box/scripts/MSU1-Setup.sh
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST7}/"${1}" -P "$HOME"/RetroPie/roms/snesmsu1 -erobots=off
fi
}

function download-winegames() {
if [ ! -d "$HOME/RetroPie/roms/wine/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install Wine First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST4}/"${1}" -P "$HOME"/RetroPie/roms/wine -erobots=off
  unzip -o "$HOME"/RetroPie/roms/wine/"${1}" -d "$HOME"/RetroPie/roms/wine/
  chmod 755 "$HOME"/RetroPie/roms/wine/*.sh
  sudo rm -r "$HOME"/RetroPie/roms/wine/"${1}"
fi
}

function download-pcgames() {
if [ ! -d "$HOME/RetroPie/roms/pc/" ]; then dialog  --sleep 1 --title ""${1}" FOLDER MISSING!" --msgbox "Please Install It's Emulator First" 6 40;
else
clear
  wget -m -r -np -nH -nd -R "index.html" ${HOST5}/"${1}" -P "$HOME"/RetroPie/roms/pc -erobots=off
  unzip -o "$HOME"/RetroPie/roms/pc/"${1}" -d "$HOME"/RetroPie/roms/pc/
  sudo rm -r "$HOME"/RetroPie/roms/pc/"${1}"
fi
}



pick_menu
