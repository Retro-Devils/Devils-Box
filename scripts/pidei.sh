#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="<-----Pi.D.E.I-----Pi Dynamic Emu Installer----->"

#-----------INTRO VIDEO-----------#
clear
omxplayer "$HOME"/pidei/intro.mp4  > /dev/null 2>&1

function emu-menu() {
  local choice
 while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "EASY EMU INSTALLER" \
      --ok-label Install --cancel-label Exit \
      --menu "PRESS A/ENTER TO INSTALL EMU" 30 70 50 \
      + "<->CONSOLE NAME<---------------->CORE/EMU<" \
      1 "Amiga<------------------------->RA PUAE" \
      2 "AmigaCD32<--------------------->RA PUAE" \
      3 "Amstrad CPC<------------------->RA CAPRICE32" \
      4 "Arcade<------------------------MULTI CORES/EMUS" \
      5 "Arcadia<------------------------>" \
      6 "Astrocade<------------------------>" \
      7 "Atari800<------------------------>RA ATARI800"\
      8 "Atari2600<------------------------>RA STELLA" \
      9 "Atari5200<------------------------>RA ATARI800" \
      10 "Atari7800<------------------------>RA PROSYSTEM" \
      11 "AtariLynx<------------------------>RA BEETLE LYNX" \
      12 "AtariST<------------------------> RA HATARI" \
      13 "Atomiswave<------------------------>" \
      14 "Commadore64<------------------------>" \
      15 "Colecovision<------------------------>RA BLUEMSX" \
      16 "Dragon32<------------------------>SA XROAR" \
      17 "Daphne<------------------------>DAPHNE" \
      18 "Dreamcast<------------------------>MULTI CORES/EMUS" \
      19 "Electron<------------------------>" \
      20 "Famicon<------------------------>" \
      21 "Famicom Disk<------------------------>" \
      22 "Game and Watch<------------------------>" \
      23 "Gameboy<------------------------>MULTI CORES/EMUS" \
      24 "Gameboy Advance<------------------------>MULTI CORES/EMUS" \
      25 "Gameboy Color<------------------------>MULTI CORES/EMUS" \
      26 "Gamegear<------------------------>MULTI CORES/EMUS" \
      27 "Intellivision<------------------------>RA FREEINTV" \
      28 "MarkIII<------------------------>" \
      29 "Mastersystem<------------------------>" \
      30 "Genesis/Megadrive<------------------------>" \
      31 "Genesis/Megadrive-Japan<------------------------>" \
      32 "MSX<------------------------>" \
      33 "MSX 2<------------------------>" \
      34 "Nintendo 64<------------------------>" \
      35 "Naomi<------------------------>" \
      36 "Nintendo DS<------------------------>" \
      37 "NeoGeo<------------------------>" \
      38 "Neo Geo Pocket Color<------------------------>" \
      39 "Nintendo Entertainment System<------------------------>" \
      40 "Openbor<------------------------>" \
      41 "Oric<------------------------>" \
      42 "Pokemini<------------------------>" \
      43 "PlayStation 1<------------------------>" \
      44 "PSP<------------------------>" \
      45 "Sega Model 3<---------------->CORE/EMU" \
      46 "Sega Saturn<---------------->CORE/EMU" \
      47 "Sega Saturn Japan<---------------->CORE/EMU" \
      48 "ScummVM<---------------->CORE/EMU" \
      49 "Sega32x<---------------->CORE/EMU" \
      50 "SegaCD<---------------->CORE/EMU" \
      51 "Super Famicon<---------------->CORE/EMU" \
      52 "SG-1000<---------------->CORE/EMU" \
      53 "SNES<---------------->CORE/EMU" \
      54 "SNES MSU1<---------------->CORES/EMU" \
      55 "SuperGraffiix<---------------->CORE/EMU" \
      56 "Turbo Graffix 16/PC Engine<---------------->CORE/EMU" \
      57 "Vectrex<---------------->CORE/EMU" \
      58 "VideoPAC<---------------->CORE/EMU" \
      59 "Virtual Boy<---------------->CORE/EMU" \
      60 "Dreamcast VMU<---------------->CORE/EMU" \
      61 "Wine<---------------->Wine/Box86" \
      62 "Wonderswan Color<---------------->CORE/EMU" \
      63 "Sharp X1<---------------->CORE/EMU" \
      64 "Sharp X68000<---------------->CORE/EMU" \
      65 "ZMachine<---------------->CORE/EMU" \
      66 "ZXSpectrum<---------------->CORE/EMU" \
       + "<----------------Pi.D.E.I Tools--------------------->" \
      T1 "FORCE RETROPIE SETUP SCRIPT UPDATE                   " \
      T2 "PI.D.E.I UPDATER                                     " \
      T3 "PI.D.E.I INFORMATION                                 " \
      T4 "PI.D.E.I CRDITS                                      " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) install-emu "Amiga" "lr-puae" ;;
    2) install-emu "Amigacd32" "lr-puae" ;;
    3) install-emu "Amstradcpc" "lr-caprice32" ;;
    4) multi-cores "Arcade" "lr-mame2003" ;;
    5) install-emu "Arcadia" ;;
    6) install-emu "Astrocade" ;;
    7) install-emu "Atari800" ;;
    8) install-emu "Atari2600" "lr-stella" ;;
    9) install-emu "Atari5200" "lr-atari800";;
    10) install-emu "Atari7800" "lr-prosystem";;
    11) install-emu "Atarilynx" "lr-beetle-lynx" ;;
    12) install-emu "Atarist" "lr-hatari" ;;
    13) install-emu "Atomiswave" ;;
    14) install-emu "C64" ;;
    15) install-emu "Coleco" "lr-bluemsx" ;;
    16) install-emu "Dragon32" "xroar" ;;
    17) install-emu "Daphne" "Daphne" ;;
    18) install-emu "Dreamcast" "lr-dreamcast" "NO" "redream" ;;
    19) install-emu "Electron" ;;
    20) install-emu "Famicon" ;;
    21) install-emu "FDS" ;;
    22) install-emu "Game&Watch" ;;
    23) multi-cores "GameBoy" "lr-mgba" "lr-gb" ;;
    24) multi-cores "GameBoy Advacnce" "lr-mgba" "NO" "NO";;
    25) install-emu "GameBoy Color" ;;
    26) install-emu "Game Gear" "lr-genesis-plus-gx" "CORE2" "STANDALONE-EMU" ;;
    27) install-emu "Intellivision" "lr-freeintv" ;;
    28) install-emu "Markiii" ;;
    29) install-emu "Mastersystem" ;;
    30) install-emu "Megadrive" "lr-genesis-plus-gx" ;;
    31) install-emu "SNES" "lr-snes9x" ;;
    32) install-emu "MSX" ;;
    33) install-emu "MSX2" ;;
    34) install-emu "N64" ;;
    35) install-emu "Naomi" ;;
    36) install-emu "NDS" ;;
    37) install-emu "NeoGeo" ;;
    38) install-emu "NeoGeo Pocket Color" ;;
    39) install-emu "NES" ;;
    40) install-emu "Openbor" ;;
    41) install-emu "Oric" ;;
    42) install-emu "Pokemini" ;;
    43) install-emu "PS1" "lr-pcsx_rearmed" ;;
    44) install-emu "PSP" "" ;;
    45) install-emu "Sega Model-3" "lr-snes9x" ;;
    46) install-emu "Sega Saturn" "lr-yabause" ;;
    47) install-emu "Sega Saturn Japan" "lr-snes9x" ;;
    48) install-emu "ScummVM" ;;
    49) install-emu "Sega32x" ;;
    50) install-emu "SegaCD" "lr-picodrive" ;;
    51) install-emu "SFC" ;;
    52) install-emu "SG-1000" "lr-genesis-plus-gx" ;;
    53) install-emu "SNES" "lr-snes9x" ;;
    54) install-emu "SNES-MSU1" "lr-snes9x" ;;
    55) install-emu "SuperGrafx" "lr-beetle" ;;
    56) install-emu "TurboGrafx-16" "lr-snes9x" ;;
    57) install-emu "Vectrex" "lr-vecx" ;;
    58) install-emu "Videopac" ;;
    59) install-emu "Virtualboy" ;;
    60) install-emu "SVmu" ;;
    61) install-wine ;;
    62) install-emu "Wonderswancolor" ;;
    63) install-emu "X1" ;;
    64) install-emu "X68000" ;;
    65) install-emu "Zmachine" ;;
    66) install-emu "ZXspectrum" ;;
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
sudo ./retropie_packages.sh "$2"
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
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" ;;
            4) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" ;;
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

function install-model-3() {
https://raw.githubusercontent.com/Retro-Devils/Sega-Model-3-PI-4/main/SM3-INSTALLER.sh
}


###-----------------------------PI.D.E.I TOOLS-----------------------------###

function update-setup-script() {
cd /home/pi/RetroPie-Setup
git checkout .; git reset --hard HEAD; git pull
}

function update-pidei() {
curl -sSL https://bit.ly/Install-PI-DEI | bash
}


function pidei-info() {
dialog  --sleep 1 --title "PI.D.E.I INFO" --msgbox "
<-------------WELCOME--------------->
WHATS THIS DO?
- EASY INSTALL EMUS FOR RETROPIE
- FORCE UPDATE RETROPIE SETUP
<------------->FYI<------------->
- RA MEANS RETROARCH CORE
- SA MEANS STANDALONE EMU
- MULTI CORES/EMUS LOADS A MENU" 0 0
}

function pidei-credits() {
dialog  --sleep 1 --title "PI.D.E.I CREDITS" --msgbox "
<-------------CREDITS--------------->
- ALL THE DEVILS
- RETROPIE OFFICAL
- CREDITS FOR EACH EMU WITH EMU INFO" 0 0
}

emu-menu
