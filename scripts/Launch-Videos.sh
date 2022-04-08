#!/bin/bash
local choice 
  
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "LAUNCHING VIDEOS MENU" \
      --ok-button Download --cancel-button Back \
      --menu " PRESS A/ENTER TO DOWNLOAD & APPLY VIDEOS" 30 70 50 \
       1 "Retro Devils INCOMPLETE"/
       2 "Super Heroes"
       2 "Retro TV" /
       2>&1 >/dev/tty)
       
     case "$choice" in
       1) devils ;;
       2) heroes ;;
       3) retrotv ;;
       *) break ;;
       esac
     done
fi
}

function devils() {
if [ -f /home/pi/.emulationstation/videos/start.mp4] then sudo rm -R home/pi/.emulationstation/videos/start.mp4
wget INSERT VIDEO START LINK -p home/pi/.emulationstation/videos/
sleep 3
else
wget INSERT VIDEO START LINK -p home/pi/.emulationstation/videos/
sleep 3
sudo cat <<\EOF55 > "/home/pi/etc/emulationstation/runcommand-onstart.sh"
omxplayer home/pi/.emulationstation/videos/start.mp4 > /dev/null 2>&1
EOF55
fi
sleep 2
if [ -f /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget INSERT VIDEO END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
else
wget INSERT VIDEO END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF45 > "/home/pi/.emulationstation/runcommand-onend.sh"
omxplayer home/pi/.emulationstation/videos/end.mp4 > /dev/null 2>&1
EOF45
fi 
}
function retrotv() {
if [ -f /home/pi/.emulationstation/videos/end.mp4] then sudo rm -R home/pi/.emulationstation/videos/end.mp4
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/RetroTV/end.mp4?raw=true -P home/pi/.emulationstation/videos/
sleep 3
else
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/RetroTV/end.mp4?raw=true -P home/pi/.emulationstation/videos/
sleep 3
sudo cat <<\EOF25 > "/home/pi/etc/emulationstation/runcommand-onend.sh"
omxplayer home/pi/.emulationstation/videos/end.mp4 > /dev/null 2>&1
EOF25
fi
sleep 3
if [ -f /home/pi/.emulationstation/videos/start.mp4] then sudo rm -R home/pi/.emulationstation/videos/start.mp4
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/RetroTV/start.mp4?raw=true -P home/pi/.emulationstation/videos/
sleep 3
else
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/RetroTV/start.mp4?raw=true -p home/pi/.emulationstation/videos/
sleep 3
sudo cat <<\EOF35 > "/home/pi/.emulationstation/runcommand-onstart.sh"
omxplayer home/pi/.emulationstation/videos/start.mp4 > /dev/null 2>&1
EOF35
fi 
}

function heroes() {
if [ -f /home/psu.emulationstation/videos/end.mp4] then sudo rm -R home/pi/.emulationstation/videos/end.mp4
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/Heroes/end.mp4?raw=true -P home/pi/.emulationstation/videos/
sleep 3
else
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/Heroes/end.mp4?raw=true -p home/pi/.emulationstation/videos/
sleep 3
sudo cat <<\EOF75 > "/home/pi/.emulationstation/runcommand-onend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4 > /dev/null 2>&1
EOF75
fi
sleep 3
if [ -f /home/pi/etc/emulationstation/videos/start.mp4] then sudo rm -R home/pi/etc/emulationstation/videos/start.mp4
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/Heroes/start.mp4?raw=true -P home/pi/.emulationstation/videos/
sleep 3
else
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Videos/Heroes/start.mp4?raw=true -p home/pi/.emulationstation/videos/
sleep 3
sudo cat <<\EOF65 > "/home/pi/.emulationstation/runcommand-onstart.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4  > /dev/null 2>&1
EOF65
fi
}

