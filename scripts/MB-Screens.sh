#!/bin/bash

clear
echo
echo Motion Blue Loading Screens - Utility Script

echo
echo
echo This script will allow you to globally enable or disable the Motion Blue loading screens.
echo
echo If enabled, you can still press the A button to bring up the run command window but you must wait
echo until the loading screen dissapears and before the game launches.
echo
echo It\'s a very narrow window of time, but unfortunately that\'s a drawback of using loading screens.
echo
echo

echo Please make your selection below.
echo
echo 1. enable loading screens
echo 2. disable loading screens

read -p "Enter the number and press <enter> : " useranswer

echo
echo "You have chosen option ${useranswer}."
echo "....processing...."
sleep 5

if [[ $useranswer == "1" ]]; then
mv /opt/retropie/configs/all/disable_launching.png /opt/retropie/configs/all/launching.png
mv /opt/retropie/configs/amiga/disable_launching.png /opt/retropie/configs/amiga/launching.png
mv /opt/retropie/configs/amstradcpc/disable_launching.png /opt/retropie/configs/amstradcpc/launching.png
mv /opt/retropie/configs/arcade/disable_launching.png /opt/retropie/configs/arcade/launching.png
mv /opt/retropie/configs/atari2600/disable_launching.png /opt/retropie/configs/atari2600/launching.png
mv /opt/retropie/configs/atari5200/disable_launching.png /opt/retropie/configs/atari5200/launching.png
mv /opt/retropie/configs/atari7800/disable_launching.png /opt/retropie/configs/atari7800/launching.png
mv /opt/retropie/configs/atarilynx/disable_launching.png /opt/retropie/configs/atarilynx/launching.png
mv /opt/retropie/configs/c64/disable_launching.png /opt/retropie/configs/c64/launching.png
mv /opt/retropie/configs/coleco/disable_launching.png /opt/retropie/configs/coleco/launching.png
mv /opt/retropie/configs/daphne/disable_launching.png /opt/retropie/configs/daphne/launching.png
mv /opt/retropie/configs/dreamcast/disable_launching.png /opt/retropie/configs/dreamcast/launching.png
mv /opt/retropie/configs/famicom/disable_launching.png /opt/retropie/configs/famicom/launching.png
mv /opt/retropie/configs/fba/disable_launching.png /opt/retropie/configs/fba/launching.png
mv /opt/retropie/configs/fds/disable_launching.png /opt/retropie/configs/fds/launching.png
mv /opt/retropie/configs/gameandwatch/disable_launching.png /opt/retropie/configs/gameandwatch/launching.png
mv /opt/retropie/configs/gamegear/disable_launching.png /opt/retropie/configs/gamegear/launching.png
mv /opt/retropie/configs/gb/disable_launching.png /opt/retropie/configs/gb/launching.png
mv /opt/retropie/configs/gba/disable_launching.png /opt/retropie/configs/gba/launching.png
mv /opt/retropie/configs/gbc/disable_launching.png /opt/retropie/configs/gbc/launching.png
mv /opt/retropie/configs/intellivision/disable_launching.png /opt/retropie/configs/intellivision/launching.png
mv /opt/retropie/configs/mame-advmame/disable_launching.png /opt/retropie/configs/mame-advmame/launching.png
mv /opt/retropie/configs/mame-libretro/disable_launching.png /opt/retropie/configs/mame-libretro/launching.png
mv /opt/retropie/configs/mame-mame4all/disable_launching.png /opt/retropie/configs/mame-mame4all/launching.png
mv /opt/retropie/configs/mastersystem/disable_launching.png /opt/retropie/configs/mastersystem/launching.png
mv /opt/retropie/configs/megadrive/disable_launching.png /opt/retropie/configs/megadrive/launching.png
mv /opt/retropie/configs/msx/disable_launching.png /opt/retropie/configs/msx/launching.png
mv /opt/retropie/configs/n64/disable_launching.png /opt/retropie/configs/n64/launching.png
mv /opt/retropie/configs/neogeo/disable_launching.png /opt/retropie/configs/neogeo/launching.png
mv /opt/retropie/configs/nes/disable_launching.png /opt/retropie/configs/nes/launching.png
mv /opt/retropie/configs/ngp/disable_launching.png /opt/retropie/configs/ngp/launching.png
mv /opt/retropie/configs/ngpc/disable_launching.png /opt/retropie/configs/ngpc/launching.png
mv /opt/retropie/configs/pcengine/disable_launching.png /opt/retropie/configs/pcengine/launching.png
mv /opt/retropie/configs/pcenginecd/disable_launching.png /opt/retropie/configs/pcenginecd/launching.png
mv /opt/retropie/configs/psp/disable_launching.png /opt/retropie/configs/psp/launching.png
mv /opt/retropie/configs/pspminis/disable_launching.png /opt/retropie/configs/pspminis/launching.png
mv /opt/retropie/configs/psx/disable_launching.png /opt/retropie/configs/psx/launching.png
mv /opt/retropie/configs/sega32x/disable_launching.png /opt/retropie/configs/sega32x/launching.png
mv /opt/retropie/configs/segacd/disable_launching.png /opt/retropie/configs/segacd/launching.png
mv /opt/retropie/configs/sfc/disable_launching.png /opt/retropie/configs/sfc/launching.png
mv /opt/retropie/configs/sg-1000/disable_launching.png /opt/retropie/configs/sg-1000/launching.png
mv /opt/retropie/configs/sgfx/disable_launching.png /opt/retropie/configs/sgfx/launching.png
mv /opt/retropie/configs/snes/disable_launching.png /opt/retropie/configs/snes/launching.png
mv /opt/retropie/configs/tg16/disable_launching.png /opt/retropie/configs/tg16/launching.png
mv /opt/retropie/configs/tg16cd/disable_launching.png /opt/retropie/configs/tg16cd/launching.png
mv /opt/retropie/configs/vectrex/disable_launching.png /opt/retropie/configs/vectrex/launching.png
mv /opt/retropie/configs/videopac/disable_launching.png /opt/retropie/configs/videopac/launching.png
mv /opt/retropie/configs/virtualboy/disable_launching.png /opt/retropie/configs/virtualboy/launching.png
mv /opt/retropie/configs/wonderswan/disable_launching.png /opt/retropie/configs/wonderswan/launching.png
mv /opt/retropie/configs/wonderswancolor/disable_launching.png /opt/retropie/configs/wonderswancolor/launching.png
mv /opt/retropie/configs/zmachine/disable_launching.png /opt/retropie/configs/zmachine/launching.png
mv /opt/retropie/configs/zxspectrum/disable_launching.png /opt/retropie/configs/zxspectrum/launching.png
mv /opt/retropie/configs/arcadeclassics/disable_launching.png /opt/retropie/configs/arcadeclassics/launching.png
mv /opt/retropie/configs/atariclassics/disable_launching.png /opt/retropie/configs/atariclassics/launching.png
mv /opt/retropie/configs/batmancollection/disable_launching.png /opt/retropie/configs/batmancollection/launching.png
mv /opt/retropie/configs/beatemupcollection/disable_launching.png /opt/retropie/configs/beatemupcollection/launching.png
mv /opt/retropie/configs/capcomclassics/disable_launching.png /opt/retropie/configs/capcomclassics/launching.png
mv /opt/retropie/configs/castlevaniacollection/disable_launching.png /opt/retropie/configs/castlevaniacollection/launching.png
mv /opt/retropie/configs/cps1/disable_launching.png /opt/retropie/configs/cps1/launching.png
mv /opt/retropie/configs/cps2/disable_launching.png /opt/retropie/configs/cps2/launching.png
mv /opt/retropie/configs/cps3/disable_launching.png /opt/retropie/configs/cps3/launching.png
mv /opt/retropie/configs/dariuscollection/disable_launching.png /opt/retropie/configs/dariuscollection/launching.png
mv /opt/retropie/configs/dataeastclassics/disable_launching.png /opt/retropie/configs/dataeastclassics/launching.png
mv /opt/retropie/configs/disneycollection/disable_launching.png /opt/retropie/configs/disneycollection/launching.png
mv /opt/retropie/configs/donkeykongcollection/disable_launching.png /opt/retropie/configs/donkeykongcollection/launching.png
mv /opt/retropie/configs/doubledragoncollection/disable_launching.png /opt/retropie/configs/doubledragoncollection/launching.png
mv /opt/retropie/configs/fatalfurycollection/disable_launching.png /opt/retropie/configs/fatalfurycollection/launching.png
mv /opt/retropie/configs/fightercollection/disable_launching.png /opt/retropie/configs/fightercollection/launching.png
mv /opt/retropie/configs/finalfantasycollection/disable_launching.png /opt/retropie/configs/finalfantasycollection/launching.png
mv /opt/retropie/configs/froggercollection/disable_launching.png /opt/retropie/configs/froggercollection/launching.png
mv /opt/retropie/configs/ghoulsghostscollection/disable_launching.png /opt/retropie/configs/ghoulsghostscollection/launching.png
mv /opt/retropie/configs/iremclassics/disable_launching.png /opt/retropie/configs/iremclassics/launching.png
mv /opt/retropie/configs/kingoffighterscollection/disable_launching.png /opt/retropie/configs/kingoffighterscollection/launching.png
mv /opt/retropie/configs/konamiclassics/disable_launching.png /opt/retropie/configs/konamiclassics/launching.png
mv /opt/retropie/configs/lemmingscollection/disable_launching.png /opt/retropie/configs/lemmingscollection/launching.png
mv /opt/retropie/configs/mariocollection/disable_launching.png /opt/retropie/configs/mariocollection/launching.png
mv /opt/retropie/configs/megamancollection/disable_launching.png /opt/retropie/configs/megamancollection/launching.png
mv /opt/retropie/configs/metalslugcollection/disable_launching.png /opt/retropie/configs/metalslugcollection/launching.png
mv /opt/retropie/configs/midwayclassics/disable_launching.png /opt/retropie/configs/midwayclassics/launching.png
mv /opt/retropie/configs/mortalkombatcollection/disable_launching.png /opt/retropie/configs/mortalkombatcollection/launching.png
mv /opt/retropie/configs/namcoclassics/disable_launching.png /opt/retropie/configs/namcoclassics/launching.png
mv /opt/retropie/configs/nintendoclassics/disable_launching.png /opt/retropie/configs/nintendoclassics/launching.png
mv /opt/retropie/configs/outruncollection/disable_launching.png /opt/retropie/configs/outruncollection/launching.png
mv /opt/retropie/configs/pacmancollection/disable_launching.png /opt/retropie/configs/pacmancollection/launching.png
mv /opt/retropie/configs/pinballcollection/disable_launching.png /opt/retropie/configs/pinballcollection/launching.png
mv /opt/retropie/configs/pitfallcollection/disable_launching.png /opt/retropie/configs/pitfallcollection/launching.png
mv /opt/retropie/configs/pokemoncollection/disable_launching.png /opt/retropie/configs/pokemoncollection/launching.png
mv /opt/retropie/configs/puzzlecollection/disable_launching.png /opt/retropie/configs/puzzlecollection/launching.png
mv /opt/retropie/configs/segaclassics/disable_launching.png /opt/retropie/configs/segaclassics/launching.png
mv /opt/retropie/configs/shmupscollection/disable_launching.png /opt/retropie/configs/shmupscollection/launching.png
mv /opt/retropie/configs/shootemupcollection/disable_launching.png /opt/retropie/configs/shootemupcollection/launching.png
mv /opt/retropie/configs/simpsonscollection/disable_launching.png /opt/retropie/configs/simpsonscollection/launching.png
mv /opt/retropie/configs/snkclassics/disable_launching.png /opt/retropie/configs/snkclassics/launching.png
mv /opt/retropie/configs/soniccollection/disable_launching.png /opt/retropie/configs/soniccollection/launching.png
mv /opt/retropie/configs/spidermancollection/disable_launching.png /opt/retropie/configs/spidermancollection/launching.png
mv /opt/retropie/configs/sportscollection/disable_launching.png /opt/retropie/configs/sportscollection/launching.png
mv /opt/retropie/configs/starwarscollection/disable_launching.png /opt/retropie/configs/starwarscollection/launching.png
mv /opt/retropie/configs/streetfightercollection/disable_launching.png /opt/retropie/configs/streetfightercollection/launching.png
mv /opt/retropie/configs/superheroescollection/disable_launching.png /opt/retropie/configs/superheroescollection/launching.png
mv /opt/retropie/configs/taitoclassics/disable_launching.png /opt/retropie/configs/taitoclassics/launching.png
mv /opt/retropie/configs/tmntcollection/disable_launching.png /opt/retropie/configs/tmntcollection/launching.png
mv /opt/retropie/configs/tokicollection/disable_launching.png /opt/retropie/configs/tokicollection/launching.png
mv /opt/retropie/configs/trackballclassics/disable_launching.png /opt/retropie/configs/trackballclassics/launching.png
mv /opt/retropie/configs/vectorclassics/disable_launching.png /opt/retropie/configs/vectorclassics/launching.png
mv /opt/retropie/configs/williamsclassics/disable_launching.png /opt/retropie/configs/williamsclassics/launching.png
mv /opt/retropie/configs/zeldacollection/disable_launching.png /opt/retropie/configs/zeldacollection/launching.png
else
mv /opt/retropie/configs/all/launching.png /opt/retropie/configs/all/disable_launching.png
mv /opt/retropie/configs/amiga/launching.png /opt/retropie/configs/amiga/disable_launching.png
mv /opt/retropie/configs/amstradcpc/launching.png /opt/retropie/configs/amstradcpc/disable_launching.png
mv /opt/retropie/configs/arcade/launching.png /opt/retropie/configs/arcade/disable_launching.png
mv /opt/retropie/configs/atari2600/launching.png /opt/retropie/configs/atari2600/disable_launching.png
mv /opt/retropie/configs/atari5200/launching.png /opt/retropie/configs/atari5200/disable_launching.png
mv /opt/retropie/configs/atari7800/launching.png /opt/retropie/configs/atari7800/disable_launching.png
mv /opt/retropie/configs/atarilynx/launching.png /opt/retropie/configs/atarilynx/disable_launching.png
mv /opt/retropie/configs/c64/launching.png /opt/retropie/configs/c64/disable_launching.png
mv /opt/retropie/configs/coleco/launching.png /opt/retropie/configs/coleco/disable_launching.png
mv /opt/retropie/configs/daphne/launching.png /opt/retropie/configs/daphne/disable_launching.png
mv /opt/retropie/configs/dreamcast/launching.png /opt/retropie/configs/dreamcast/disable_launching.png
mv /opt/retropie/configs/famicom/launching.png /opt/retropie/configs/famicom/disable_launching.png
mv /opt/retropie/configs/fba/launching.png /opt/retropie/configs/fba/disable_launching.png
mv /opt/retropie/configs/fds/launching.png /opt/retropie/configs/fds/disable_launching.png
mv /opt/retropie/configs/gameandwatch/launching.png /opt/retropie/configs/gameandwatch/disable_launching.png
mv /opt/retropie/configs/gamegear/launching.png /opt/retropie/configs/gamegear/disable_launching.png
mv /opt/retropie/configs/gb/launching.png /opt/retropie/configs/gb/disable_launching.png
mv /opt/retropie/configs/gba/launching.png /opt/retropie/configs/gba/disable_launching.png
mv /opt/retropie/configs/gbc/launching.png /opt/retropie/configs/gbc/disable_launching.png
mv /opt/retropie/configs/intellivision/launching.png /opt/retropie/configs/intellivision/disable_launching.png
mv /opt/retropie/configs/mame-advmame/launching.png /opt/retropie/configs/mame-advmame/disable_launching.png
mv /opt/retropie/configs/mame-libretro/launching.png /opt/retropie/configs/mame-libretro/disable_launching.png
mv /opt/retropie/configs/mame-mame4all/launching.png /opt/retropie/configs/mame-mame4all/disable_launching.png
mv /opt/retropie/configs/mastersystem/launching.png /opt/retropie/configs/mastersystem/disable_launching.png
mv /opt/retropie/configs/megadrive/launching.png /opt/retropie/configs/megadrive/disable_launching.png
mv /opt/retropie/configs/msx/launching.png /opt/retropie/configs/msx/disable_launching.png
mv /opt/retropie/configs/n64/launching.png /opt/retropie/configs/n64/disable_launching.png
mv /opt/retropie/configs/neogeo/launching.png /opt/retropie/configs/neogeo/disable_launching.png
mv /opt/retropie/configs/nes/launching.png /opt/retropie/configs/nes/disable_launching.png
mv /opt/retropie/configs/ngp/launching.png /opt/retropie/configs/ngp/disable_launching.png
mv /opt/retropie/configs/ngpc/launching.png /opt/retropie/configs/ngpc/disable_launching.png
mv /opt/retropie/configs/pcengine/launching.png /opt/retropie/configs/pcengine/disable_launching.png
mv /opt/retropie/configs/pcenginecd/launching.png /opt/retropie/configs/pcenginecd/disable_launching.png
mv /opt/retropie/configs/psp/launching.png /opt/retropie/configs/psp/disable_launching.png
mv /opt/retropie/configs/pspminis/launching.png /opt/retropie/configs/pspminis/disable_launching.png
mv /opt/retropie/configs/psx/launching.png /opt/retropie/configs/psx/disable_launching.png
mv /opt/retropie/configs/sega32x/launching.png /opt/retropie/configs/sega32x/disable_launching.png
mv /opt/retropie/configs/segacd/launching.png /opt/retropie/configs/segacd/disable_launching.png
mv /opt/retropie/configs/sfc/launching.png /opt/retropie/configs/sfc/disable_launching.png
mv /opt/retropie/configs/sg-1000/launching.png /opt/retropie/configs/sg-1000/disable_launching.png
mv /opt/retropie/configs/sgfx/launching.png /opt/retropie/configs/sgfx/disable_launching.png
mv /opt/retropie/configs/snes/launching.png /opt/retropie/configs/snes/disable_launching.png
mv /opt/retropie/configs/tg16/launching.png /opt/retropie/configs/tg16/disable_launching.png
mv /opt/retropie/configs/tg16cd/launching.png /opt/retropie/configs/tg16cd/disable_launching.png
mv /opt/retropie/configs/vectrex/launching.png /opt/retropie/configs/vectrex/disable_launching.png
mv /opt/retropie/configs/videopac/launching.png /opt/retropie/configs/videopac/disable_launching.png
mv /opt/retropie/configs/virtualboy/launching.png /opt/retropie/configs/virtualboy/disable_launching.png
mv /opt/retropie/configs/wonderswan/launching.png /opt/retropie/configs/wonderswan/disable_launching.png
mv /opt/retropie/configs/wonderswancolor/launching.png /opt/retropie/configs/wonderswancolor/disable_launching.png
mv /opt/retropie/configs/zmachine/launching.png /opt/retropie/configs/zmachine/disable_launching.png
mv /opt/retropie/configs/zxspectrum/launching.png /opt/retropie/configs/zxspectrum/disable_launching.png
mv /opt/retropie/configs/arcadeclassics/launching.png /opt/retropie/configs/arcadeclassics/disable_launching.png
mv /opt/retropie/configs/atariclassics/launching.png /opt/retropie/configs/atariclassics/disable_launching.png
mv /opt/retropie/configs/batmancollection/launching.png /opt/retropie/configs/batmancollection/disable_launching.png
mv /opt/retropie/configs/beatemupcollection/launching.png /opt/retropie/configs/beatemupcollection/disable_launching.png
mv /opt/retropie/configs/capcomclassics/launching.png /opt/retropie/configs/capcomclassics/disable_launching.png
mv /opt/retropie/configs/castlevaniacollection/launching.png /opt/retropie/configs/castlevaniacollection/disable_launching.png
mv /opt/retropie/configs/cps1/launching.png /opt/retropie/configs/cps1/disable_launching.png
mv /opt/retropie/configs/cps2/launching.png /opt/retropie/configs/cps2/disable_launching.png
mv /opt/retropie/configs/cps3/launching.png /opt/retropie/configs/cps3/disable_launching.png
mv /opt/retropie/configs/dariuscollection/launching.png /opt/retropie/configs/dariuscollection/disable_launching.png
mv /opt/retropie/configs/dataeastclassics/launching.png /opt/retropie/configs/dataeastclassics/disable_launching.png
mv /opt/retropie/configs/disneycollection/launching.png /opt/retropie/configs/disneycollection/disable_launching.png
mv /opt/retropie/configs/donkeykongcollection/launching.png /opt/retropie/configs/donkeykongcollection/disable_launching.png
mv /opt/retropie/configs/doubledragoncollection/launching.png /opt/retropie/configs/doubledragoncollection/disable_launching.png
mv /opt/retropie/configs/fatalfurycollection/launching.png /opt/retropie/configs/fatalfurycollection/disable_launching.png
mv /opt/retropie/configs/fightercollection/launching.png /opt/retropie/configs/fightercollection/disable_launching.png
mv /opt/retropie/configs/finalfantasycollection/launching.png /opt/retropie/configs/finalfantasycollection/disable_launching.png
mv /opt/retropie/configs/froggercollection/launching.png /opt/retropie/configs/froggercollection/disable_launching.png
mv /opt/retropie/configs/ghoulsghostscollection/launching.png /opt/retropie/configs/ghoulsghostscollection/disable_launching.png
mv /opt/retropie/configs/iremclassics/launching.png /opt/retropie/configs/iremclassics/disable_launching.png
mv /opt/retropie/configs/kingoffighterscollection/launching.png /opt/retropie/configs/kingoffighterscollection/disable_launching.png
mv /opt/retropie/configs/konamiclassics/launching.png /opt/retropie/configs/konamiclassics/disable_launching.png
mv /opt/retropie/configs/lemmingscollection/launching.png /opt/retropie/configs/lemmingscollection/disable_launching.png
mv /opt/retropie/configs/mariocollection/launching.png /opt/retropie/configs/mariocollection/disable_launching.png
mv /opt/retropie/configs/megamancollection/launching.png /opt/retropie/configs/megamancollection/disable_launching.png
mv /opt/retropie/configs/metalslugcollection/launching.png /opt/retropie/configs/metalslugcollection/disable_launching.png
mv /opt/retropie/configs/midwayclassics/launching.png /opt/retropie/configs/midwayclassics/disable_launching.png
mv /opt/retropie/configs/mortalkombatcollection/launching.png /opt/retropie/configs/mortalkombatcollection/disable_launching.png
mv /opt/retropie/configs/namcoclassics/launching.png /opt/retropie/configs/namcoclassics/disable_launching.png
mv /opt/retropie/configs/nintendoclassics/launching.png /opt/retropie/configs/nintendoclassics/disable_launching.png
mv /opt/retropie/configs/outruncollection/launching.png /opt/retropie/configs/outruncollection/disable_launching.png
mv /opt/retropie/configs/pacmancollection/launching.png /opt/retropie/configs/pacmancollection/disable_launching.png
mv /opt/retropie/configs/pinballcollection/launching.png /opt/retropie/configs/pinballcollection/disable_launching.png
mv /opt/retropie/configs/pitfallcollection/launching.png /opt/retropie/configs/pitfallcollection/disable_launching.png
mv /opt/retropie/configs/pokemoncollection/launching.png /opt/retropie/configs/pokemoncollection/disable_launching.png
mv /opt/retropie/configs/puzzlecollection/launching.png /opt/retropie/configs/puzzlecollection/disable_launching.png
mv /opt/retropie/configs/segaclassics/launching.png /opt/retropie/configs/segaclassics/disable_launching.png
mv /opt/retropie/configs/shmupscollection/launching.png /opt/retropie/configs/shmupscollection/disable_launching.png
mv /opt/retropie/configs/shootemupcollection/launching.png /opt/retropie/configs/shootemupcollection/disable_launching.png
mv /opt/retropie/configs/simpsonscollection/launching.png /opt/retropie/configs/simpsonscollection/disable_launching.png
mv /opt/retropie/configs/snkclassics/launching.png /opt/retropie/configs/snkclassics/disable_launching.png
mv /opt/retropie/configs/soniccollection/launching.png /opt/retropie/configs/soniccollection/disable_launching.png
mv /opt/retropie/configs/spidermancollection/launching.png /opt/retropie/configs/spidermancollection/disable_launching.png
mv /opt/retropie/configs/sportscollection/launching.png /opt/retropie/configs/sportscollection/disable_launching.png
mv /opt/retropie/configs/starwarscollection/launching.png /opt/retropie/configs/starwarscollection/disable_launching.png
mv /opt/retropie/configs/streetfightercollection/launching.png /opt/retropie/configs/streetfightercollection/disable_launching.png
mv /opt/retropie/configs/superheroescollection/launching.png /opt/retropie/configs/superheroescollection/disable_launching.png
mv /opt/retropie/configs/taitoclassics/launching.png /opt/retropie/configs/taitoclassics/disable_launching.png
mv /opt/retropie/configs/tmntcollection/launching.png /opt/retropie/configs/tmntcollection/disable_launching.png
mv /opt/retropie/configs/tokicollection/launching.png /opt/retropie/configs/tokicollection/disable_launching.png
mv /opt/retropie/configs/trackballclassics/launching.png /opt/retropie/configs/trackballclassics/disable_launching.png
mv /opt/retropie/configs/vectorclassics/launching.png /opt/retropie/configs/vectorclassics/disable_launching.png
mv /opt/retropie/configs/williamsclassics/launching.png /opt/retropie/configs/williamsclassics/disable_launching.png
mv /opt/retropie/configs/zeldacollection/launching.png /opt/retropie/configs/zeldacollection/disable_launching.png
fi

echo
echo
echo Script is now finished........
echo
sleep 5
