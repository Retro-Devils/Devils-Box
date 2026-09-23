#!/bin/bash
export NCURSES_NO_UTF8_ACS=1

# Detect RetroDECK
if [ -d "$HOME/RetroDeck" ]; then
    bash "$HOME/Devils-Box/scripts/RetroDECK/RD-Devils-Box.sh"
    exit
fi

# Detect FydeOS
if grep -qi "fydeos" /etc/os-release 2>/dev/null; then
    bash "$HOME/Devils-Box/scripts/Pitchfork/PF-Devils-Box.sh"
    exit
fi

# Detect Raspberry Pi
if [ -f /proc/device-tree/model ]; then
    rpi=$(tr -d '\0' < /proc/device-tree/model | awk '{print $3}')

    if [ "$rpi" = "Zero" ]; then
        bash "$HOME/Devils-Box/scripts/PI-0/PI-0-Devils-Box.sh"
    elif [ "$rpi" = "Model" ]; then
        bash "$HOME/Devils-Box/scripts/PI-0/PI-0-Devils-Box.sh"
    elif [ "$rpi" = "2" ]; then
        bash "$HOME/Devils-Box/scripts/PI-3/PI3-Devils-Box.sh"
    elif [ "$rpi" = "3" ]; then
        bash "$HOME/Devils-Box/scripts/PI-3/PI-3-Devils-Box.sh"
    elif [ "$rpi" = "4" ]; then
        bash "$HOME/Devils-Box/scripts/PI-4/PI-4-Devils-Box.sh"
    elif [ "$rpi" = "400" ]; then
        bash "$HOME/Devils-Box/scripts/PI-4/PI-4-Devils-Box.sh"
    elif [ "$rpi" = "5" ]; then
        bash "$HOME/Devils-Box/scripts/PI-4/PI-4-Devils-Box.sh"
    elif [ "$rpi" = "pitchfork" ]; then
        bash "$HOME/Devils-Box/scripts/Pitchfork/Pitchfork-Devils-Box.sh"
    else
        bash "$HOME/Devils-Box/scripts/Multi-Devils-Box.sh"
    fi
else
    # Generic PC
    bash "$HOME/Devils-Box/scripts/GRP/Generic-Devils-Box.sh"
fi
```
