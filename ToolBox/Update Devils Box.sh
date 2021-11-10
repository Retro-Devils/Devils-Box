#!/bin/sh
#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/tools-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Tool";
else
  echo "Exiting Now";
fi
cd
cd RetroPie/retropiemenu
sudo rm -R Devils-Box
git clone https://github.com/Retro-Devils/Devils-Box
sudo rm -r /home/pi/RetroPie/retropiemenu/Devils-Box/.git
sudo rm -r /home/pi/RetroPie/retropiemenu/Devils-Box/README.md
sudo reboot
