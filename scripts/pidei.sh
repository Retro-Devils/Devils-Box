#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="<-----Pi.D.E.I-----Pi Dynamic Emu Installer----->"

#-----------INTRO VIDEO-----------#
clear
omxplayer "$HOME"/pidei/intro.mp4  > /dev/null 2>&1

function emu-menu() {
  local choice
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PI DYNAMIC EMU INSTALLER" \
      --ok-label Install --cancel-label Exit \
      --menu "PRESS A/ENTER TO INSTALL EMU" 40 60 40 \
      + "<                                         >" \
      + "<-->CONSOLE NAME<------------->CORE/EMU<-->" \
      + "<                                         >" \
      1 "ActionMax<-------------------->EMU--ACTIONMAX" \
      2 "Amiga<------------------------>MULTI CORES/EMUS" \
      3 "AmigaCD32<-------------------->RA PUAE" \
      4 "Amstrad CPC<------------------>RA CAPRICE32" \
      5 "Arcade<----------------------->MULTI CORES/EMUS" \
      6 "Arcadia<---------------------->" \
      7 "Astrocade<-------------------->" \
      8 "Atari800<--------------------->RA ATARI800"\
      9 "Atari2600<-------------------->RA STELLA" \
      10 "Atari5200<-------------------->RA ATARI800" \
      11 "Atari7800<------------------->RA PROSYSTEM" \
      12 "AtariLynx<------------------->RA BEETLE LYNX" \
      13 "AtariST<--------------------->RA HATARI" \
      14 "Atomiswave<------------------>" \
      15 "BBC Micro<------------------->EMU--B-EM" \
      16 "Commadore64<----------------->EMU--VICE" \
      17 "Colecovision<---------------->RA BLUEMSX" \
      18 "Dragon32<-------------------->EMU--XROAR" \
      19 "Daphne<---------------------->EMU--DAPHNE" \
      20 "Dreamcast<------------------->MULTI CORES/EMUS" \
      21 "Electron<-------------------->" \
      22 "Famicon<--------------------->" \
      23 "Famicom Disk<---------------->" \
      24 "Game and Watch<-------------->" \
      25 "Gameboy<--------------------->MULTI CORES/EMUS" \
      26 "Gameboy Advance<------------->MULTI CORES/EMUS" \
      27 "Gameboy Color<--------------->MULTI CORES/EMUS" \
      28 "Gamegear<-------------------->MULTI CORES/EMUS" \
      29 "Intellivision<--------------->RA FREEINTV" \
      30 "MarkIII<--------------------->" \
      31 "Mastersystem<---------------->" \
      32 "Genesis/Megadrive<----------->" \
      33 "Genesis/Megadrive-Japan<----->" \
      34 "MSX<------------------------->MULTI CORES/EMUS" \
      35 "MSX 2<----------------------->MULTI CORES/EMUS" \
      36 "Nintendo 64<----------------->MULTI CORES/EMUS" \
      37 "Naomi<----------------------->" \
      38 "Nintendo DS<----------------->MULTI CORES/EMUS" \
      39 "NeoGeo<---------------------->RA NEOCD" \
      40 "Neo Geo Pocket Color<-------->RA-BETTLE NGP" \
      41 "NES<------------------------->" \
      42 "Openbor<--------------------->EMU--OPENBOR" \
      43 "Oric<------------------------>" \
      44 "Pokemini<-------------------->" \
      45 "PlayStation 1<--------------->MULTI CORES/EMUS" \
      46 "Plug N Play<----------------->RA MESS SYSTEM" \
      47 "PSP<------------------------->MULTI CORES/EMUS" \
      48 "Sega Model 3<---------------->EMU--" \
      49 "Sega Saturn<----------------->CORE/EMU" \
      50 "Sega Saturn Japan<----------->CORE/EMU" \
      51 "ScummVM<--------------------->CORE/EMU" \
      52 "Sega32x<--------------------->CORE/EMU" \
      53 "SegaCD<---------------------->CORE/EMU" \
      54 "Super Famicon<--------------->CORE/EMU" \
      55 "SG-1000<--------------------->CORE/EMU" \
      56 "SNES<------------------------>CORE/EMU" \
      57 "SNES MSU1<------------------->CORES/EMU" \
      58 "SuperGraffiix<--------------->RA BEETLE SUPERGRAX" \
      59 "Turbo Graffix 16/PC Engine<-->RA BEETLE PCE FAST" \
      60 "Vectrex<--------------------->CORE/EMU" \
      61 "VideoPAC<-------------------->CORE/EMU" \
      62 "Virtual Boy<----------------->CORE/EMU" \
      63 "VMU Dreamcast<--------------->CORE/EMU" \
      64 "Wine<------------------------>EMU--WINE/BOX86" \
      65 "Wonderswan Color<------------>RA BEETLE WSWAN" \
      66 "Sharp X1<-------------------->CORE/EMU" \
      67 "Sharp X68000<---------------->CORE/EMU" \
      68 "ZMachine<-------------------->CORE/EMU" \
      69 "ZXSpectrum<------------------>CORE/EMU" \
       + "<                                     >" \
       + "<-----------Pi.D.E.I Tools------------>" \
       + "<                                     >" \
      T1 "FORCE RETROPIE SETUP SCRIPT UPDATE     " \
      T2 "PI.D.E.I UPDATER                       " \
      T3 "PI.D.E.I INFORMATION                   " \
      T4 "PI.D.E.I CREDITS                       " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) install-action max ;;
    2) install-emu "Amiga" "lr-puae" ;;
    3) install-emu "Amigacd32" "lr-puae" ;;
    4) install-emu "Amstradcpc" "lr-caprice32" ;;
    5) multi-cores3 "Arcade" "lr-mame2003" "lr-fbaplha2012" "lr-mame200" "lr-mame2003-plus" "mame" ;;
    6) install-emu "Arcadia" ;;
    7) install-emu "Astrocade" ;;
    8) install-emu "Atari800" "atari800" ;;
    9) multi-cores "Atari2600" "lr-stella" "----" "stella" ;;
    10) install-emu "Atari5200" "lr-atari800";;
    11) install-emu "Atari7800" "lr-prosystem";;
    12) install-emu "Atarilynx" "lr-beetle-lynx" ;;
    13) install-emu "Atarist" "lr-hatari" ;;
    14) install-emu "Atomiswave" ;;
    15) install-bbc ;;
    16) install-emu "C64" "vice";;
    17) install-emu "Coleco" "lr-bluemsx" ;;
    18) install-emu "Dragon32" "xroar" ;;
    19) install-emu "Daphne" "daphne" ;;
    20) install-emu "Dreamcast" "lr-dreamcast" "lr-flycast" "redream" ;;
    21) install-emu "Electron" ;;
    22) install-emu "Famicon" ;;
    23) install-emu "FDS" ;;
    24) install-emu "Game&Watch" "lr-gw" ;;
    25) multi-cores "GameBoy" "lr-mgba" "lr-gb" ;;
    26) multi-cores "GameBoy Advacnce" "lr-mgba" "lr-gpsp" "NO";;
    27) mulit-cores "GameBoy Color" "lr-tgbdual" "lr-gambattle"  ;;
    28) install-emu "Game Gear" "lr-genesis-plus-gx" "NO" "NO" ;;
    29) install-emu "Intellivision" "lr-freeintv" ;;
    30) install-emu "Markiii" ;;
    31) install-emu "Mastersystem" "lr-smsplus-gx" ;;
    32) install-emu "Megadrive" "lr-genesis-plus-gx" ;;
    33) install-emu "Megadrive Japan" "lr-snes9x" ;;
    34) multi-cores "MSX" "lr-bluemsx" "lr-fmsx" "----" ;;
    35) multi-cores "MSX2" "lr-bluemsx" "lr-fmsx" "----" ;;
    36) multi-cores "N64" "lr-parallel-n64" "lr-mupen64plus-next" "mupen64plus" ;;
    37) install-emu "Naomi" ;;
    38) multi-cores "NDS" "lr-desume2015" "lr-desume" "drastic" ;;
    39) install-emu "NeoGeo" "lr-neocd" ;;
    40) install-emu "NeoGeo Pocket Color" "lr-beetle-ngp" ;;
    41) multi-cores "NES" "lr-quicknes" "lr-nestopia" ;;
    42) install-emu "OpenBOR" "openbor" ;;
    43) install-emu "Oric" ;;
    44) install-emu "Pokemini" "lr-pokemini" ;;
    45) multi-cores "PS1" "lr-pcsx_rearmed" ;;
    46) mess-system "plugnplay" ;;
    47) multi-cores "PSP" "lr-ppsspp" "----" "ppsspp" ;;
    48) install-model-3 ;;
    49) install-emu "Sega Saturn" "lr-beetle-saturn" "lr-yabuse" "yabasanshiro" ;;
    50) multi-cores "Sega Saturn Japan" "lr-beetle-saturn" "lr-yabuse" "yabasanshiro" ;;
    51) install-emu "ScummVM" "lr-scummvm" "----" "scummvm" ;;
    52) install-emu "Sega32x" ;;
    53) install-emu "SegaCD" "lr-picodrive" ;;
    54) install-emu "SFC" ;;
    55) install-emu "SG-1000" "lr-genesis-plus-gx" ;;
    56) multi-cores2 "SNES" "lr-snes9x" "lr-bsnes" "lr-snes9x2002" ;;
    57) install-emu "SNES-MSU1" "lr-snes9x" ;;
    58) install-emu "SuperGrafx" "lr-beetle-supergrafx" ;;
    59) install-emu "TurboGrafx-16" "lr-beetle-pce-fast" ;;
    60) install-emu "Vectrex" "lr-vecx" ;;
    61) install-emu "Videopac" ;;
    62) install-emu "Virtualboy" "lr-bettle-vb" ;;
    63) install-emu "VMU" "lr-vemulator.sh" ;;
    64) install-wine ;;
    65) install-emu "Wonderswancolor" "lr-bettle-wsan";;
    66) install-emu "X1" ;;
    67) install-emu "X68000" "lr-px68k" ;;
    68) install-emu "Zmachine" ;;
    69) multi-cores "ZXspectrum" "lr-fuse" "----" "zesarux" ;;
     +) none  ;;
    T1) update-setup-script ;;
    T2) update-pidei ;;
    T3) pidei-info ;;
    T4) pidei-credits ;;
     *) break ;;
    esac
   done
}

##-----------------------------Offical Cores & Emus-----------------------------##

function install-emu() {
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh "$2" install_bin
}

function multi-cores() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
                "2" ""$3" Retroarch Core" off \
		"+" "<--->Standalone Emus<--->" off \
                "3" ""$4" Standalone Emu" off \
                2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" install_bin ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" install_bin ;;
            3) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" install_bin ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}

function multi-cores2() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
                "2" ""$3" Retroarch Core" off \
                "3" ""$4" Retroarch Core" off \
	        "+" "<--->Standalone Emus<--->" off \
                "4" ""$5" Standalone Emu" off \
                2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" install_bin ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" install_bin ;;
            3) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" install_bin ;;
            4) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$5" install_bin ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}

function multi-cores3() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
                "2" ""$3" Retroarch Core" off \
                "3" ""$4" Retroarch Core" off \
                "4" ""$5" Retroarch Core" off \
	        "+" "<--->Standalone Emus<--->" off \
                "5" ""$6" Standalone Emu" off \
                "6" ""$7" Standalone Emu" off \
                 2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" install_bin ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" install_bin ;;
            3) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" install_bin ;;
            4) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$5" install_bin ;;
            5) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$6" install_bin ;;
            6) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$7" install_bin ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}


##-----------------------------UnOffical Emus/Cores-----------------------------##

function install-wine() {
dialog  --sleep 1 --title "WINE EMU INFO" --msgbox "
<-------------WELCOME--------------->
PI.D.E.I. WILL NOW INSTALL WINE/BOX86
<-------------CREDITS--------------->
- SUPREME TEAM
- RETRO DEVILS
- GEORGE MCMULLEN
- BOX86/PITSEB
<------------->FYI<------------->
- WINE PLAYS OLD WINDOWS GAMES
- SYSTEM WILL REBOOT WHEN COMPLETE
- PUT ROMS IN HOME/PI/RETROPIE/ROMS/WINE" 0 0
curl -sSL https://bit.ly/3P2HiW8 | bash
}

function mess-system() {
if [ -f "$HOME"/pidei/mess-confirm.sh ]; then
wget -m -r -np -nH -nd -R "index.html" https://raw.githubusercontent.com/Retro-Devils/Devils-Extra/main/scriptmodules/libretrocores/lr-mess-"${1}".sh -P "$HOME"/RetroPie-Setup/scriptmodules/libretrocores/ -erobots=off
sleep 2 
cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh lr-mess-"$1"
else
bash $HOME/pidei/scripts/mess/mess-menu.sh
fi
}



function install-actionmax() {
wget -m -r -np -nH -nd -R "index.html" https://raw.githubusercontent.com/Retro-Devils/Devils-Extra/main/scriptmodules/emulators/actionmax.sh -P $HOME/RetroPie-Setup/scriptmodules/emulators/ -erobots=off
sleep 2
cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh actionmax
}

#-----Somethings Broke Here------#
#function install-openbor() {
#wget -m -r -np -nH -nd -R "index.html" https://raw.githubusercontent.com/Retro-Devils/Devils-Extra/main/scriptmodules/emulators/openbor-extra.sh -P $HOME/RetroPie-Setup/scriptmodules/emulators/ -erobots=off
#sleep 2
#cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh openbor-extra
#}

function install-model-3() {
curl -sSL https://git.io/JSDOy | bash
}


function install-bbc() {
curl -sSL bit.ly/BBC-Installer| bash
}


###-----------------------------PI.D.E.I TOOLS-----------------------------###

function update-setup-script() {
dialog  --sleep 1 --title "UPDATE RPI SETUP" --msgbox "
<------------------ATTENTION------------------->
Pi D.E.I WILL NOW FORCE UPDATE RETROPIE SETUP
IF YOU WANT TO CANCEL PLEASE PRES CONTROL+C NOW
<---------------------------------------------->" 0 0
cd /home/pi/RetroPie-Setup
git checkout .; git reset --hard HEAD; git pull
}

function update-pidei() {
rm $HOME/Devils-Box/scripts/pidei.sh
sleep 1
cd $HOME/Devils-Box/scripts/
wget https://github.com/Retro-Devils/Devils-Box/edit/main/scripts/pidei.sh
}


function pidei-info() {
dialog  --sleep 1 --title "PI.D.E.I INFO" --msgbox "
<-------------WELCOME--------------->
WHATS THIS DO?
- EASY INSTALL EMUS FOR RETROPIE
- FORCE UPDATE RETROPIE SETUP
<------------->FYI<------------->
- RA MEANS RETROARCH CORE
- MULTI CORES/EMUS LOADS A MENU
- EMU-- MEANS STANDALONE EMU" 0 0
}

function pidei-credits() {
dialog  --sleep 1 --title "PI.D.E.I CREDITS" --msgbox "
<-------------CREDITS--------------->
- ALL THE DEVILS
- RETROPIE OFFICAL
- CREDITS FOR EACH EMU WITH EMU INFO" 0 0
}

emu-menu
