#!/bin/bash

HOST3="https://archive.org/download/devils-bios"

clear
wget -m -r -np -nH -nd -R "index.html" "${HOST3}"/BIOS/ -P "$HOME"/RetroPie/BIOS/ -erobots=off
rm -f "$HOME"/RetroPie/BIOS/index.html.tmp

