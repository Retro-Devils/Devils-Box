#!/bin/bash
export NCURSES_NO_UTF8_ACS=1


rpi=$(cat /proc/device-tree/model |awk '{print $3}')

if [ "$rpi" = "Zero" ]; then bash $HOME/Devils-Box/scripts/PI-0/PI-0-Devils-Box.sh
elif [ "$rpi" = "Model B" ]; then bash $HOME/Devils-Box/scripts/PI-0/PI-0-Devils-Box.sh
elif [ "$rpi" = "2" ]; then bash $HOME/Devils-Box/scripts/PI-3/PI3-Devils-Box.sh
elif [ "$rpi" = "3" ]; then bash $HOME/Devils-Box/scripts/PI-3/PI-3-Devils-Box.sh
elif [ "$rpi" = "4" ]; then bash $HOME/Devils-Box/scripts/PI-4/PI-4-Devils-Box.sh
else
bash {$HOME}/Devils-Box/scripts/Multi-Devils-Box.sh
fi
