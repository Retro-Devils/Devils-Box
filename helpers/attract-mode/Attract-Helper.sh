#!/bin/bash

function attract-helper() {
local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "ATTRACT MODE HELPER " \
     --ok-button Select --cancel-button Exit \
     --menu "Version 0.9" 15 30 30 \
      1 "Attract Mode Themes" \
      2 "Attract Mode Tools (WORK IN PROGRESS)" \
       2>&1 >/dev/tty)
    
    case "$choice" in
    1) attract-themes ;;
    2) attract-tools ;;
    *) break ;;
    esac
  done
}

function attract-themes() {
local choice 

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " ATTRACT MODE THEMES MENU " \ 
    --ok-label Select --cancel-label Main-Menu \ 
    --menu "SELECT THEME AND PRESS A " 20 50 30 \ 
     1 "DevilsSpin " \ 
     2>&1 >/dev/tty) 
     
   case "$choice" in 
   1) devilsspin ;; 
   *) break ;; 
   esac 
 done
 }
 
function devilspin() {
wget https://archive.org/download/attractmode/devilspin.zip -P ${HOME}/.am-temp
unzip -o "$HOME"/.am-temp/devilspin.zip -d "$HOME"/.am-temp/
sudo rm -R "$HOME"/devilspin.zip
mv 
} 


function attract-tools() {
local choice 

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " ATTRACT MODE TOOLS MENU " \ 
    --ok-label Select --cancel-label Main-Menu \ 
    --menu "SELECT THEME AND PRESS A " 20 50 30 \ 
     1 "tool 1 " \ 
     2>&1 >/dev/tty) 
     
   case "$choice" in 
   1) tool-1 ;; 
   *) break ;; 
   esac 
 done
 }


attract-helper