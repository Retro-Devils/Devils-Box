rpi=$(cat /proc/device-tree/model |awk '{print $3}')

if [ "$rpi" = "Zero" ]; then echo "RaspBerry Pi Zero W"
elif [ "$rpi" = "1" ]; then echo "RaspBerry Pi 1"
elif [ "$rpi" = "2" ]; then echo "RaspBerry Pi 2"
elif [ "$rpi" = "3" ]; then echo "RaspBerry Pi 3"
elif [ "$rpi" = "4" ]; then echo "RaspBerry Pi 4B"
fi
