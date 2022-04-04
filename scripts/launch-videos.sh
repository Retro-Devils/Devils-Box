#!/bin/bash
echo "Getting Devils Launch Video & Setting Up"
wget INSERT VIDEO START LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF55 > "/home/pi/etc/emulationstation/runcommandonstart.sh"
omxplayer home/pi/etc/emulationstation/videos/start.mp4
EOF55

echo "Getting Devils Exit Video & Setting Up"
wget INSERT VIDEO END LINK -p home/pi/etc/emulationstation/videos/
sleep 3
sudo cat <<\EOF45 > "/home/pi/etc/emulationstation/runcommandonend.sh"
omxplayer home/pi/etc/emulationstation/videos/end.mp4
EOF45
