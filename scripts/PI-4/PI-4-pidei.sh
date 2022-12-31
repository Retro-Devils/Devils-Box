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
      6 "Arcadia<---------------------->RA MESS" \
      7 "Astrocade<-------------------->RA MESS" \
      8 "Atari800<--------------------->RA ATARI800"\
      9 "Atari2600<-------------------->RA STELLA" \
      10 "Atari5200<-------------------->RA ATARI800" \
      11 "Atari7800<------------------->RA PROSYSTEM" \
      12 "AtariLynx<------------------->RA BEETLE LYNX" \
      13 "AtariST<--------------------->RA HATARI" \
      14 "Atomiswave<------------------>UNFINISHED" \
      15 "BBC Micro<------------------->EMU--B-EM" \
      16 "Commadore64<----------------->EMU--VICE" \
      17 "Colecovision<---------------->RA BLUEMSX" \
      18 "Dragon32<-------------------->EMU--XROAR" \
      19 "Daphne<---------------------->EMU--DAPHNE" \
      20 "Dreamcast<------------------->MULTI CORES/EMUS" \
      21 "Electron<-------------------->RA MESS " \
      22 "Famicon<--------------------->RA NESTOPIA" \
      23 "Famicom Disk<---------------->RA NESTOPIA" \
      24 "Game and Watch<-------------->RA GW" \
      25 "Gameboy<--------------------->MULTI CORES/EMUS" \
      26 "Gameboy Advance<------------->MULTI CORES/EMUS" \
      27 "Gameboy Color<--------------->MULTI CORES/EMUS" \
      28 "Gamegear<-------------------->MULTI CORES/EMUS" \
      29 "Intellivision<--------------->RA FREEINTV" \
      30 "MarkIII<--------------------->UNFINSIHED" \
      31 "Mastersystem<---------------->RA SMSPLUS GX" \
      32 "Genesis/Megadrive<----------->RA GENESIS PLUS GX" \
      33 "Genesis/Megadrive-Japan<----->RA GENESIS PLUS GX" \
      34 "MSX<------------------------->MULTI CORES/EMUS" \
      35 "MSX 2<----------------------->MULTI CORES/EMUS" \
      36 "Nintendo 64<----------------->MULTI CORES/EMUS" \
      37 "Naomi<----------------------->UNFINISHED" \
      38 "Nintendo DS<----------------->MULTI CORES/EMUS" \
      39 "NeoGeo<---------------------->RA NEOCD" \
      40 "Neo Geo Pocket Color<-------->RA-BETTLE NGP" \
      41 "NES<------------------------->MULTI CORES/EMUS" \
      42 "Openbor<--------------------->EMU--OPENBOR" \
      43 "Oric<------------------------>UNFINISHED" \
      44 "Pokemini<-------------------->RA POKEMINI" \
      45 "PlayStation 1<--------------->MULTI CORES/EMUS" \
      46 "Plug N Play<----------------->RA MESS SYSTEM" \
      47 "Pokitto<--------------------->EMU--POKITTO" \
      48 "PSP<------------------------->MULTI CORES/EMUS" \
      49 "Sega Model 3<---------------->EMU--SUPERMODEL3" \
      50 "Sega Saturn<----------------->EMU-YABASANSHIRO" \
      51 "Sega Saturn Japan<----------->EMU--YABASHANSIRO" \
      52 "ScummVM<--------------------->RA SCUMVM" \
      53 "Sega32x<--------------------->UNFINISHED" \
      54 "SegaCD<---------------------->RA PICO DRIVE" \
      55 "Super Famicon<--------------->RA SNES9X" \
      56 "SG-1000<--------------------->RA GENESISS PLUS GX" \
      57 "SNES<------------------------>RA SNES9X" \
      58 "SNES MSU1<------------------->RA SNES9X" \
      59 "SuperGraffiix<--------------->RA BEETLE SUPERGRAX" \
      60 "Turbo Graffix 16/PC Engine<-->RA BEETLE PCE FAST" \
      61 "Vectrex<--------------------->RA VEXC" \
      62 "VideoPAC<-------------------->UNFINIHSED" \
      63 "Virtual Boy<----------------->RA BETTLE VB" \
      64 "VMU Dreamcast<--------------->CORE/EMU" \
      65 "Wine<------------------------>EMU--WINE/BOX86" \
      66 "Wonderswan Color<------------>RA BEETLE WSWAN" \
      67 "Sharp X1<-------------------->UNFINISHED" \
      68 "Sharp X68000<---------------->RA PX68K" \
      69 "ZMachine<-------------------->UNFINISHED" \
      70 "ZXSpectrum<------------------>RA FUSE" \
       + "<                                     >" \
       + "<-----------Pi.D.E.I Tools------------>" \
       + "<                                     >" \
      T1 "FORCE RETROPIE SETUP SCRIPT UPDATE     " \
      T2 "PI.D.E.I UPDATER                       " \
      T3 "PI.D.E.I INFORMATION                   " \
      T4 "PI.D.E.I CREDITS                       " \
       - "  _____   _     ___     _____   ______  " \
       - " |  __ | |_|   |    \  |  ___| |_    _| " \
       - " |  ___|  _    |  |  \ | |__     |  |   " \
       - " | |     | |   |  |  | |  __|    |  |   " \
       - " | |     | |   |  |  / | |___   _|  |_  " \
       - " |_|     |_|   |___/   |_____| |______| " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) install-actionmax ;;
    2) install-emu "Amiga" "lr-puae" ;;
    3) install-emu "Amigacd32" "lr-puae" ;;
    4) install-emu "Amstradcpc" "lr-caprice32" ;;
    5) multi-cores3 "Arcade" "lr-mame2003" "lr-fbaplha2012" "lr-mame200" "lr-mame2003-plus" "mame" ;;
    6) mess-system "Arcadia" "arcadia" ;;
    7) mess-system "Astrocade" "astrocade" ;;
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
    20) multi-cores5 "Dreamcast" "lr-flycast" "redream" ;;
    21) mess-system "Electron" "electron";;
    22) install-emu "Famicon" "lr-nestopia";;
    23) install-emu "FDS" "lr-nestopia" ;;
    24) install-emu "Game&Watch" "lr-gw" ;;
    25) multi-cores "GameBoy" "lr-mgba" "lr-gb" ;;
    26) multi-cores "GameBoy Advacnce" "lr-mgba" "lr-gpsp" "NO";;
    27) mulit-cores "GameBoy Color" "lr-tgbdual" "lr-gambattle"  ;;
    28) install-emu "Game Gear" "lr-genesis-plus-gx" "NO" "NO" ;;
    29) install-emu "Intellivision" "lr-freeintv" ;;
    30) install-emu "Markiii" ;;
    31) install-emu "Mastersystem" "lr-smsplus-gx" ;;
    32) install-emu "Megadrive" "lr-genesis-plus-gx" ;;
    33) install-emu "Megadrive Japan" "lr-genesis-plus-gx" ;;
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
    47) install-pokitto ;;
    48) install-emu2 "PSP" "ppsspp" ;;
    49) install-model-3 ;;
    50) install-emu2 "Sega Saturn" "yabasanshiro" ;;
    51) install-emu2 "Sega Saturn Japan" "yabasanshiro" ;;
    52) install-emu "ScummVM" "lr-scummvm" "----" "scummvm" ;;
    53) install-emu "Sega32x" ;;
    54) install-emu "SegaCD" "lr-picodrive" ;;
    55) install-emu "SFC" "lr-snes9x" ;;
    56) install-emu "SG-1000" "lr-genesis-plus-gx" ;;
    57) multi-cores2 "SNES" "lr-snes9x" "lr-bsnes" "lr-snes9x2002" ;;
    58) install-emu "SNES-MSU1" "lr-snes9x" ;;
    59) install-emu "SuperGrafx" "lr-beetle-supergrafx" ;;
    60) install-emu "TurboGrafx-16" "lr-beetle-pce-fast" ;;
    61) install-emu "Vectrex" "lr-vecx" ;;
    62) install-emu "Videopac" ;;
    63) install-emu "Virtualboy" "lr-bettle-vb" ;;
    64) install-emu "VMU" "lr-vemulator.sh" ;;
    65) install-wine ;;
    66) install-emu "Wonderswancolor" "lr-bettle-wsan";;
    67) install-emu "X1" ;;
    68) install-emu "X68000" "lr-px68k" ;;
    69) install-emu "Zmachine" ;;
    70) install-emu "ZXspectrum" "lr-fuse" "----" "zesarux" ;;
     +) none  ;;
    T1) update-setup-script ;;
    T2) update-pidei ;;
    T3) pidei-info ;;
    T4) pidei-credits ;;
     -) no ;;
     *) break ;;
    esac
   done
}

##-----------------------------Offical Cores & Emus-----------------------------##

function install-emu() {
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh "$2" install_bin
}

function install-emu2() {
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
            4) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$5" ;;
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
            6) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$7" ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
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
            3) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}

function multi-cores4() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
	        "+" "<--->Standalone Emus<--->" off \
                "2" ""$5" Standalone Emu" off \
                2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}

function multi-cores5() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
	        "+" "<--->Standalone Emus<--->" off \
                "2" ""$5" Standalone Emu" off \
                2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" install_bin ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" ;;
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
curl -sSL bit.ly/BBC-Installer | bash
}

function install-pokitto() {
curl -sSL bit.ly/Pokitto-Installer | bash
}

function mess-system() {
mess-check
sleep 1
if [ ! -f "$HOME/RetroPie-Setup/scriptmodules/libretrocores/lr-mess-"$2".sh" ]; then wget https://raw.githubusercontent.com/Retro-Devils/Devils-Extra/main/scriptmodules/libretrocores/lr-mess-"$2".sh -P $HOME/RetroPie-Setup/scriptmodules/libretrocores/; fi
if [ -f "opt/retropie/lr-mess-"$2"/mess_"$2"_libretro.so" ]; then 
dialog  --sleep 1 --title "INSTALL ERROR" --msgbox "
"$1" IS ALREADY INSTALLED
NO NEED TO INSTALL" 0 0
else
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh lr-mess-"$2"
cd
fi
}

function mess-check() {
if [ ! -f "/opt/retropie/libretrocores/lr-mess/mess_libretro.so" ]
then
dialog  --sleep 1 --title "LR MESS ERROR" --msgbox "
MESS NOT INSTALLED
INSTALLING NOW" 0 0
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh lr-mess
cd
echo "MESS Install Complete"
sleep 4
fi
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
if [ -d "$HOME/pidei/" ]; then sudo rm -R "$HOME"/pidei/; fi
if [ -f "$HOME/RetroPie/retropiemenu/pidei.sh" ]; then sudo rm "$HOME"/RetroPie/retropiemenupidei.sh; fi
if [ -f "/usr/local/bin/pidei" ]; then sudo rm /usr/local/bin/pidei; fi
wget https://github.com/Retro-Devils/Pi.D.E.I./raw/main/intro.mp4 -P "$HOME"/pidei/
wget https://raw.githubusercontent.com/Retro-Devils/Pi.D.E.I./main/pidei.sh -P "$HOME"/pidei/
wget https://github.com/Retro-Devils/Pi.D.E.I./raw/main/pi-dei-logo.png -P "$HOME"/pidei/
sudo wget -O "/usr/local/bin/pidei" https://raw.githubusercontent.com/Retro-Devils/Pi.D.E.I./main/pidei.sh
wget https://raw.githubusercontent.com/Retro-Devils/Pi.D.E.I./main/scripts/mess/mess-menu.sh -P "$HOME"/pidei/scripts/
cp "$HOME"/pidei/pidei.sh -f "$HOME"/RetroPie/retropiemenu/
cp "$HOME"/pidei/pi-dei-logo.png -f "$HOME"/RetroPie/retropiemenu/icons/
sudo chmod 755 /usr/local/bin/pidei
chmod 755 "$HOME"/RetroPie/retropiemenu/pidei.sh
chmod 755 -R "$HOME"/pidei/
sleep 2
if [ ! -s "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then sudo rm -f $HOME/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml $HOME/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="\t<game>\n\t\t<path>./pidei.sh</path>\n\t\t<name>Pi Dynamic Emu Installer</name>\n\t\t<desc>PI Dynamic Emu Installer is a tool to install offical and unoffical emus with ease. </desc>\n\t\t<image>./icons/pi-dei-logo.png</image>\n\t\t<releasedate>20220907T173842</releasedate>\n\t\t<developer>The Retro Devils</developer>\n\t\t<publisher>The Retro Devils</publisher>\n\t\t<genre>Pi-DEI Script</genre>\n\t</game>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q pidei.sh "$HOME/RetroPie/retropiemenu/gamelist.xml"; then echo "gamelist.xml entry confirmed"
else
	sed "/<\/gameList>/ s/.*/${C1}\n&/" $HOME/RetroPie/retropiemenu/gamelist.xml > $HOME/temp
	cat $HOME/temp > $HOME/RetroPie/retropiemenu/gamelist.xml
	rm -f $HOME/temp
fi
bash "$HOME/RetroPie/retropiemenu/pidei.sh"
exit 1
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
