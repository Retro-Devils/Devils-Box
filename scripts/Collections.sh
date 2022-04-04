#!/bin/bash

clear
IFS=';'

clear

echo
echo "Emulation Station Collections Wheels"
echo
echo "This script will allow you to quickly add, remove, or update an Emulation Station collection wheel menu."
echo
echo "If you have recently loaded more roms, running this script will update the available games to be shown on"
echo "the various collections menus."
echo
echo "If you are updating a collections menu, choose 'add' when prompted"
echo "This will perform the update function."
echo
echo "Please select your collection below."
echo
echo "1. Batman Collection                   26. Spiderman Collection"
echo "2. Beatem Up Collection                27. Star Wars Collection"
echo "3. Castlevania Collection              28. Street Fighter Collection"
echo "4. Darius Collection                   29. Super Hero Collection"
echo "5. Disney Collection                   30. TMNT Collection"
echo "6. Donkey Kong Collection              31. Toki Collection"
echo "7. Double Dragon Collection            32. Zelda Collection"
echo "8. Fatal Fury Collection               33. Capcom Play System I"
echo "9. Final Fantasy Collection            34. Capcom Play System II"
echo "10. Frogger Collection                 35. Capcom Play System III"
echo "11. Ghouls 'n Ghosts Collection        36. Arcade Classics"
echo "12. King Of Fighters Collection        37. Atari Classics"
echo "13. Lemmings Collection                38. Capcom Classics"
echo "14. Mario Collection                   39. Data East Classics"
echo "15. Mega Man Collection                40. Irem Classics"
echo "16. Metal Slug Collection              41. Konami Classics"
echo "17. Mortal Kombat Collection           42. Midway Classics"
echo "18. OutRun Collection                  43. Namco Classics"
echo "19. PacMan Collection                  44. Nintendo Classics"
echo "20. Pinball Collection                 45. Sega Classics"
echo "21. Pitfall Collection                 46. SNK Classics"
echo "22. Pokemon Collection                 47. Taito Classics"
echo "23. Shmups Collection                  48. Trackball Classics"
echo "24. Simpsons Collection                49. Vector Classics"
echo "25. Sonic Collection                   50. Williams Classics"
echo
echo "99. Exit"
echo
read -p "Enter the number and press <enter> : " useranswer

echo
echo "You have chosen option ${useranswer}."
echo "....processing...."
sleep 5

if [[ $useranswer == "1" ]]; then
 /home/pi/RetroPie/roms/batmancollection/BatmanCollection.sh
elif [[ $useranswer == "2" ]]; then
  /home/pi/RetroPie/roms/beatemupcollection/BeatEmUpCollection.sh
elif [[ $useranswer == "3" ]]; then
  /home/pi/RetroPie/roms/castlevaniacollection/CastlevaniaCollection.sh
elif [[ $useranswer == "4" ]]; then
  /home/pi/RetroPie/roms/dariuscollection/DariusCollection.sh
elif [[ $useranswer == "5" ]]; then
  /home/pi/RetroPie/roms/disneycollection/DisneyCollection.sh
elif [[ $useranswer == "6" ]]; then
  /home/pi/RetroPie/roms/donkeykongcollection/DonkeyKongCollection.sh
elif [[ $useranswer == "7" ]]; then
  /home/pi/RetroPie/roms/doubledragoncollection/DoubleDragonCollection.sh
elif [[ $useranswer == "8" ]]; then
  /home/pi/RetroPie/roms/fatalfurycollection/FatalFuryCollection.sh
elif [[ $useranswer == "9" ]]; then
  /home/pi/RetroPie/roms/finalfantasycollection/FinalFantasyCollection.sh
elif [[ $useranswer == "10" ]]; then
  /home/pi/RetroPie/roms/froggercollection/FroggerCollection.sh
elif [[ $useranswer == "11" ]]; then
  /home/pi/RetroPie/roms/ghoulsghostscollection/GhoulsGhostsCollection.sh
elif [[ $useranswer == "12" ]]; then
  /home/pi/RetroPie/roms/kingoffighterscollection/KingOfFightersCollection.sh
elif [[ $useranswer == "13" ]]; then
  /home/pi/RetroPie/roms/lemmingscollection/LemmingsCollections.sh
elif [[ $useranswer == "14" ]]; then
  /home/pi/RetroPie/roms/mariocollection/MarioCollection.sh
elif [[ $useranswer == "15" ]]; then
  /home/pi/RetroPie/roms/megamancollection/MegaManCollection.sh
elif [[ $useranswer == "16" ]]; then
  /home/pi/RetroPie/roms/metalslugcollection/MetalSlugCollection.sh
elif [[ $useranswer == "17" ]]; then
  /home/pi/RetroPie/roms/mortalkombatcollection/MortalKombatCollection.sh
elif [[ $useranswer == "18" ]]; then
  /home/pi/RetroPie/roms/outruncollection/OutrunCollection.sh
elif [[ $useranswer == "19" ]]; then
  /home/pi/RetroPie/roms/pacmancollection/PacManCollection.sh
elif [[ $useranswer == "20" ]]; then
  /home/pi/RetroPie/roms/pinballcollection/PinballCollection.sh
elif [[ $useranswer == "21" ]]; then
  /home/pi/RetroPie/roms/pitfallcollection/PitfallCollection.sh
elif [[ $useranswer == "22" ]]; then
  /home/pi/RetroPie/roms/pokemoncollection/PokemonCollection.sh
elif [[ $useranswer == "23" ]]; then
  /home/pi/RetroPie/roms/shmupscollection/ShmupsCollection.sh
elif [[ $useranswer == "24" ]]; then
  /home/pi/RetroPie/roms/simpsonscollection/SimpsonsCollection.sh
elif [[ $useranswer == "25" ]]; then
  /home/pi/RetroPie/roms/soniccollection/SonicCollection.sh
elif [[ $useranswer == "26" ]]; then
  /home/pi/RetroPie/roms/spidermancollection/SpidermanCollection.sh
elif [[ $useranswer == "27" ]]; then
  /home/pi/RetroPie/roms/starwarscollection/StarWarsCollection.sh
elif [[ $useranswer == "28" ]]; then
  /home/pi/RetroPie/roms/streetfightercollection/StreetFighterCollection.sh
elif [[ $useranswer == "29" ]]; then
  /home/pi/RetroPie/roms/superheroescollection/SuperHeroesCollection.sh
elif [[ $useranswer == "30" ]]; then
  /home/pi/RetroPie/roms/tmntcollection/TMNTCollection.sh
elif [[ $useranswer == "31" ]]; then
  /home/pi/RetroPie/roms/tokicollection/TokiCollection.sh
elif [[ $useranswer == "32" ]]; then
  /home/pi/RetroPie/roms/zeldacollection/ZeldaCollection.sh
elif [[ $useranswer == "33" ]]; then
  /home/pi/RetroPie/roms/cps1/CPS1Collection.sh
elif [[ $useranswer == "34" ]]; then
  /home/pi/RetroPie/roms/cps2/CPS2Collection.sh
elif [[ $useranswer == "35" ]]; then
  /home/pi/RetroPie/roms/cps3/CPS3Collection.sh
elif [[ $useranswer == "36" ]]; then
  /home/pi/RetroPie/roms/arcadeclassics/ArcadeClassics.sh
elif [[ $useranswer == "37" ]]; then
  /home/pi/RetroPie/roms/atariclassics/AtariClassics.sh
elif [[ $useranswer == "38" ]]; then
  /home/pi/RetroPie/roms/capcomclassics/CapcomClassics.sh
elif [[ $useranswer == "39" ]]; then
  /home/pi/RetroPie/roms/dataeastclassics/DataEastClassics.sh
elif [[ $useranswer == "40" ]]; then
  /home/pi/RetroPie/roms/iremclassics/IremClassics.sh
elif [[ $useranswer == "41" ]]; then
  /home/pi/RetroPie/roms/konamiclassics/KonamiClassics.sh
elif [[ $useranswer == "42" ]]; then
  /home/pi/RetroPie/roms/midwayclassics/MidwayClassics.sh
elif [[ $useranswer == "43" ]]; then
  /home/pi/RetroPie/roms/namcoclassics/NamcoClassics.sh
elif [[ $useranswer == "44" ]]; then
  /home/pi/RetroPie/roms/nintendoclassics/NintendoClassics.sh
elif [[ $useranswer == "45" ]]; then
  /home/pi/RetroPie/roms/segaclassics/SegaClassics.sh
elif [[ $useranswer == "46" ]]; then
  /home/pi/RetroPie/roms/snkclassics/SNKClassics.sh
elif [[ $useranswer == "47" ]]; then
  /home/pi/RetroPie/roms/taitoclassics/TaitoClassics.sh
elif [[ $useranswer == "48" ]]; then
  /home/pi/RetroPie/roms/trackballclassics/TrackballClassics.sh
elif [[ $useranswer == "49" ]]; then
  /home/pi/RetroPie/roms/vectorclassics/VectorClassics.sh
elif [[ $useranswer == "50" ]]; then
  /home/pi/RetroPie/roms/williamsclassics/WilliamsClassics.sh
elif [[ $useranswer == "99" ]]; then
  exit
fi

echo
clear
echo
echo "Script has finished."
echo
echo "You will need to perform a restart of Emulation Station for the new changes to take affect."
echo
echo "If you have added or updated a collections wheel, you will now see the menu item and the various games."    
echo "If you have removed a collections wheel, that wheel will no longer appear on the menu."
echo
sleep 10


