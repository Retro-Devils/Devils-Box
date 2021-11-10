#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/tools-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Tool";
else
  echo "Exiting Now";
fi
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' 
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB(%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
cpu_temp=$(< /sys/class/thermal/thermal_zone0/temp)
 cpu_temp=$(($cpu_temp/1000))
 echo Temp: $cpu_temp°C
sleep 10
