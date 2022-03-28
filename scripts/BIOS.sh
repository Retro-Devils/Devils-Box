#!/bin/bash
export NCURSES_NO_UTF8_ACS=1

HOSTB="https://archive.org/download/devils-bios"

clear
wget -m -r -np -nH -nd -R "index.html" "${HOSTB}"/BIOS/ -P "$HOME"/RetroPie/BIOS/ -erobots=off
rm -f "$HOME"/RetroPie/BIOS/index.html.tmp

