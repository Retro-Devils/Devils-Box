#!/bin/bash
echo "Making Sure Desktop Is Installed"

if [ ! -f /usr/bin/startx ]; then
dialog --sleep 1 --title "PIXEL DESKTOP NOT INSTALLED !! " --msgbox 
"INSTALLING NOW" 0 0
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh raspbiantools lxde;
else

echo "Setting Up Folders"
sleep 1
mkdir -p ~/RetroPie/roms/ports/GTA3


echo "Getting Files " 
sleep 3
cd ~/RetroPie/roms/ports/GTA3
git clone https://github.com/dmitry64/re3.git


sudo apt install -y libopenal-dev
sudo apt install -y libglew-dev

wget https://github.com/glfw/glfw/archive/3.3.2.tar.gz
tar xvf 3.3.2.tar.gz 
cd glfw-3.3.2/
cmake .
cmake -DBUILD_SHARED_LIBS=ON .
sudo make install

cd ~/RetroPie/roms/ports/GTA3

sudo apt install -y libsndfile1-dev
sudo apt install -y libmpg123-dev


echo " Building and Installing Re3"
cd ~/RetroPie/roms/ports/GTA3

wget https://archive.org/download/grand-theft-auto-3_202111/GrandTheftAuto3.zip
unzip GrandTheftAuto3.zip

sudo rm -f GrandTheftAuto3.zip


cd ~/RetroPie/roms/ports

wget https://raw.githubusercontent.com/Retro-Devils/Devils-Box/main/files/ports/GTA3.sh

chmod u+x re3.sh


cd ~/RetroPie/roms/ports/GTA3/GrandTheftAuto3
sudo rm -f re3.ini
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Box/main/files/ports/re3.ini

echo "Complete Rebooting Now "
sleep 5 
sudo reboot

fi
