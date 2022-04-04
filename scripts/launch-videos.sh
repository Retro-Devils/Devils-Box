#!/bin/bash
local choice 
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED PACKS DOWNLOAD MENU " \
      --ok-button Download --cancel-button Back \
      --menu " PRESS A/ENTER TO DOWNLOAD & APPLY VIDEOS" 30 70 50 \
       1 "Retro Devils"/
       2 "Super Heroes"
       2 "Retro TV" /
       2>&1 >/dev/tty)
       
     case "$choice" in
       1) devils ;;
       2) heroes;;
       3) retrotv ;;
       *) break ;;
       esac
     done
fi
}

function devils() {
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO START LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF55 > "/home/pi/etc/emulationstation/runcommand-onstart.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4
EOF55
fi
sleep 2
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF45 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4
EOF45
fi 
}
function retrotv() {
if [ -! /home/pi/etc/emulationstation/videos/end.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/end.mp4
wget INSERT VIDEO retrotv END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF25 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4
EOF25
fi
sleep 3
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO retrotv start LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF35 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4
EOF35
fi 
}

function heroes() {
if [ -! /home/pi/etc/emulationstation/videos/end.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/end.mp4
wget INSERT VIDEO heroes END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF75 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4
EOF75
fi
sleep 3
if [ -! /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO heroes start LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF65 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4
EOF65
fi
}

