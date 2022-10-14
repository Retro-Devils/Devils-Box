rpi=$(cat /proc/device-tree/model |awk '{print $3}')

if [ "$rpi" = "Zero" ]; then bash {$HOME}/devils-Box/scripts/PI-0-Devils-Box.sh
elif [ "$rpi" = "1" ]; then bash {$HOME}/devils-Box/scripts/PI-0-Devils-Box.sh
elif [ "$rpi" = "2" ]; then bash {$HOME}/devils-Box/scripts/PI-3-Devils-Box.sh
elif [ "$rpi" = "3" ]; then bash {$HOME}/devils-Box/scripts/PI-3-Devils-Box.sh
elif [ "$rpi" = "4" ]; then bash {$HOME}/devils-Box/scripts/PI-4-Devils-Box.sh
else
{$HOME}/devils-Box/scripts/Multi-Devils-Box.sh
fi
