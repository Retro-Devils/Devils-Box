#!/bin/bash
dialog  --sleep 1 --title "SNES MSU1 SETUP" --msgbox " 
<---------------WHATS THIS DO?-------------------->
- COPIES YOUR SNES CONFIGS TO NEW SNESMSU1 FOLDER
- MAKES SURE YOU HAVE CORRECT EMU INSTALLED 
- DOWNLOADS A FEW NEEDED FILES FOR MSU1" 0 0
clear
echo "<----Checking For Emu Now---->"
sleep 2
if [ ! -d /opt/retropie/libretrocores/lr-snes9x ]; then
dialog  --sleep 1 --title "LR-SNES9X NOT INSTALLED !! " --msgbox " 
Installing for you" 0 0
sudo ./retropie_packages.sh lr-snes9x;
else
echo "<----Snes9X Installed Begining Setup Now---->"
sleep 2
mkdir "$HOME"/RetroPie/roms/snesmsu1
sudo cp -r /opt/retropie/configs/snes -d /opt/retropie/configs/snesmsu1
wget https://archive.org/download/DB-EMUS/RetroArch/SNES-MSU1/emulators.cfg -P /opt/retropie/configs/snesmsu1/ 
dialog  --sleep 1 --title "MSU1 SETUP COMPLETE" --msgbox " 
<------------>ATTENTION<-----!!!-------->ATTENTION<------!!!------>ATTENTION<----------->ATTENTION<------------->
For this to work you need to edit es system comfig
Located at /home/pi/.emulationstation/es_system.cfg
Please add the following
  <system>
    <name>snesmsu1</name>
    <fullname>Super Nintendo MSU1</fullname>
    <path>/home/pi/RetroPie/roms/snesmsu1</path>
    <extension>.7z .bin .bs .smc .sfc .fig .swc .mgd .zip .7Z .BIN .BS .SMC .SFC .FIG .SWC .MGD .ZIP</extension>
    <command>/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ snesmsu1 %ROM%</command>
    <platform>snes</platform>
    <theme>snesmsu1</theme>
  </system>
  
ADDITIONAL WHEN YOU FIRST FIRST MSU1 GAME 
- Open Up RetroPie Runcommand by pressing while game loads 
- Set Default Emu for ALL MSU1 to LR-SNES9X" 0 0
fi

