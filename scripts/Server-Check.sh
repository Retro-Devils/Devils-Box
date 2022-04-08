#!/bin/bash

#---MAIN SERVERS---#

wget -q --spider https://archive.org/download/the-devils-box-alt
if [ $? -eq 0 ]; then
dialog  --sleep 1 --title "MAIN SERVER CHECK" --msgbox "
---MAIN SERVERS ARE UP AND RUNNING---
else
---MAIN SERVERS ARE DOWN---" 0 0
fi
sleep 1

#---HACKS SERVERS---#
wget -q --spider https://archive.org/download/the-devils-box-alt
if [ $? -eq 0 ]; then
dialog  --sleep 1 --title "HACKS SERVER CHECK" --msgbox "
---HACKS SERVERS ARE UP AND RUNNING---
else
---HACKS SERVERS ARE DOWN----" 0 0
fi
sleep 1

#---PICK & CHOOSE SERVERS---#
wget -q --spider https://archive.org/download/the-devils-box-alt
if [ $? -eq 0 ]; then
dialog  --sleep 1 --title "PICK & CHOOSE SERVER CHECK" --msgbox "
---PICK CHOOSE SERVERS ARE UP AND RUNNING---
else
---PICK CHOOSE SERVERS ARE DOWN---" 0 0
fi
sleep 1

#---PSP SERVERS---#
wget -q --spider https://archive.org/download/PSP_US_Arquivista
if [ $? -eq 0 ]; then
dialog  --sleep 1 --title "PSP SERVER CHECK" --msgbox "
---PSP SERVERS ARE UP AND RUNNING---
else
---PSP SERVERS ARE DOWN---" 0 0
fi
sleep 1

#---MSU1 SERVERS---#
wget -q --spider https://archive.org/download/secretofmanausamsu1hackbydarkshockv1.0
if [ $? -eq 0 ]; then
dialog  --sleep 1 --title "MSU1 SERVER CHECK" --msgbox "
---MSU1 SERVERS ARE UP AND RUNNING---
else
---MSU1 SERVERS ARE DOWN----" 0 0
fi
sleep 1


dialog  --sleep 1 --title "CHECK COMPLETE" --msgbox "
---------------------------------
----- SERVER CHECK COMPLETE -----
---------------------------------
--REPORT DOWN SERVERS TO DEVILS--
---------------------------------
---THANKS FOR USING DEVILS BOX--- 
---------------------------------" 0 0



