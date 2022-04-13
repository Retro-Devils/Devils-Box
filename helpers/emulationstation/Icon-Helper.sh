function icons-menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "ICON HELPER v1.0" \
            --ok-label Select --cancel-label Back \
            --menu "ICON HELPER MENU" 25 40 40 \
            1 "How To Use This ???" \
            2 "List Installed ES Themes " \
            + "-------CHOOSE ICON SET------" \
            3 "Chromey Icons---------Hursty" \
            4 "Set2 Icons-------COMING SOON" \
            5 "Set3 Icons-------COMING SOON" \
            + "------PREVIEW ICONS---------" \
            6 "Preview Chromey Icons " \
            7 "Preview Set 2 Icons " \
            8 "Preview Set 3 Icons " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) how-to ;;
            2) list-themes ;;
            +) none ;;
            3) chromey-icons ;;
            4) set2set2 ;;
            5) set3set3 ;;
            +) none ;;
            6) preview-chromey ;;
            7) preview-set2 ;;
            8) preview-set3 ;;
            *) break       ;;
        esac
    done
}

function how-to() {
dialog  --sleep 1 --title "COLLECTIONS HOW TO" --msgbox "
-----------YOU WILL NEED A KEYBOARD-----------

1. Click -List Installed ES Themes- To See Themes
2. Choose Whoch Icon Set you want & Click It 
3. Type Theme You Want To Add Missing Icons Too
4. Let it run
5. ENJOY !!!

----------- Frequently Asked Questions--------
- What Art is Used? 
       - Hurstys Chromey Wheels
       - Set2
       - Set3 

- Why Make this?
       Too Make Your Retropie as Nice as possible.

" 0 0
}

function list-themes() {
clear
cd "/home/pi/.emulationstation/themes/"
ls
read -n 1 -s -r -p "Above Is A List Of Installed Themes-----Press any key to Continue"
}

function preview-chromey() {
sudo apt-get install fbi
mkdir "$HOME"/temp/icons-preview
cd "$HOME"/temp/icons-preview
echo "Getting Previews Now"
sleep 2
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/Devil-Chromey/gb/_inc/system.png -f "$HOME"/temp/icons-preview/gameboy.png 
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/Devil-Chromey/asteroids/_inc/system.png -f "$HOME"/temp/icons-preview/atari7800.png
echo "Displaying Icons Now "
sleep 3
fbi ~/atari7800.png
fbi ~/gameboy.png
sudo rm -R "$HOME"/temp/icons-preview
}

function preview-set2() {
mkdir $HOME"/temp/icons-preview
cd "$HOME"/temp/icons-preview
echo "Getting Previews Now"
sleep 2
wget HURSTY ICON GAMEBOY -f $HOME"/temp/icons-preview/gameboy.png 
wget HURSTY ICON ATARI7800 -f "$HOME"/temp/icons-preview/atari7800.png
echo "Displaying Icons Now "
sleep 3
view "$HOME"/temp/icons-preview/atari7800.png
view "$HOME"/temp/icons-preview/gameboy.png
sudo rm -R "$HOME"/temp/icons-preview
}

function preview-set³() {
mkdir "$HOME"/temp/icons-preview
cd "$HOME"/temp/icons-preview
echo "Getting Previews Now"
sleep 2
wget HURSTY ICON GAMEBOY -f "$HOME"/temp/icons-preview/gameboy.png 
wget HURSTY ICON ATARI7800 -f "$HOME"/temp/icons-preview/atari7800.png
echo "Displaying Icons Now "
sleep 3
view "$HOME"/temp/icons-preview/atari7800.png
view "$HOME"/temp/icons-preview/gameboy.png
sudo rm -R "$HOME"/temp/icons-preview
}


function chromey-icons() {
cd "/home/pi/.emulationstation/themes/"
echo "Please type theme name and press Enter"
read theme
echo "Searching For Common Missing Icons Now "
sleep 2 
#---MODEL 3----#
if [ ! -d "$HOME"/.emulationstation/themes/$theme/model3 ] then
mkdir "$HOME"/.emulationstation/$theme/model3/_inc
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/Devil-Chromey/model3/_inc/system.png
cd "$HOME"/.emulationstation/$theme/model3
wget https://github.com/Retro-Devils/Devils-Themes/blob/main/Devil-Chromey/model3/theme.xml
cd
else skip 
fi 
#---WINE---#
if [ ! -d /home/pi/.emulationstation/themes/$theme/wine] then
mkdir "$HOME"/.emulationstation/$theme/wine/_inc
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Themes/main/Devil-Chromey/wine/_inc/system.png
cd "$HOME"/.emulationstation/$theme/wine
wget 
else skip
fi
#---MUGEN---#
if [ ! -d /home/pi/.emulationstation/themes/$theme/mugens ] then
mkdir "$HOME"/.emulationstation/$theme/mugens
wget
cd "$HOME"/.emulationstation/$theme/mugens
wget
else skip
fi
#--ATOMISWAVE--#
if [ ! -d /home/pi/.emulationstation/themes/$theme/atomiswave]
then wget HURSTY LOGOS ATOMISWAVE
else skip
fi
}

function set2-icons() {
cd "/home/pi/.emulationstation/themes/"
echo "Please type theme name and press Enter"
read theme
echo "Searching For Common Missing Icons Now "
sleep 2 
#---MODEL 3----#
if [ ! -d /home/pi/.emulationstation/themes/$theme/model3]
then
mkdir /home/pi/.emulationstation/themes/$theme/model3
cd "$HOME"/.emulationstation/themes/$theme/model3
wget HURSTY LOGOS MODEL 3
else skip 
fi 
#---WINE---#
if [ ! -d /home/pi/.emulationstation/themes/$theme/wine]
then
mkdir "$HOME"/.emulationstation/themes/$theme/wine
cd "$HOME"/.emulationstation/themes/$theme/wine
wget HURSTY LOGOS WINE
else skip
fi
#---MUGEN---#
if [ ! -d /home/pi/.emulationstation/themes/$theme/model3] then wget HURSTY LOGOS MUGEN
else skip
fi
#--ATOMISWAVE--#
if [ ! -d /home/pi/.emulationstation/themes/$theme/atomiswave]
then wget HURSTY LOGOS ATOMISWAVE
else skip
fi
}

function set3-icons() {
cd "/home/pi/.emulationstation/themes/"
echo "Please type theme name and press Enter"
read theme
echo "Searching For Common Missing Icons Now "
sleep 2 
#---MODEL 3----#
if [ ! -d /home/pi/.emulationstation/themes/$theme/model3] then 
wget HURSTY LOGOS MODEL 3
else skip 
fi 
#---WINE---#
if [ ! -d /home/pi/.emulationstation/themes/$theme/wine]
then wget HURSTY LOGOS WINE
else skip
fi
#---MUGEN---#
if [ ! -d /home/pi/.emulationstation/themes/$theme/model3 ] then wget HURSTY LOGOS MUGEN
else skip
fi
#--ATOMISWAVE--#
if [ ! -d /home/pi/.emulationstation/themes/$theme/atomiswave ]
then wget HURSTY LOGOS ATOMISWAVE
else skip
fi
}

icons-menu
