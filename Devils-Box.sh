#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
##-------------------------##
##       HOST SITES        ##
##-------------------------##

#--------ART HOSTS----------#
ART_HOST="https://archive.org/download/devils-box-media-alt"
#ART_HOST2=
#ART_HOST3=
#ART_HOST4=

#--------GAME HOSTS---------#
HOST1="https://archive.org/download/the-devils-box-alt"
HOST2="https://archive.org/download/the-devils-box_202112"
HOST3="https://archive.org/download/retro-devils-winegames"
#HOST4=
#HOST5=
#HOST6=


###  INTRO VIDEO     ###
omxplayer ~/Devils-Box/intro.mp4

###-----------------------###
### MAIN MENU FUNCTIONS   ###
###-----------------------###

function main_menu() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX 2.3    1/13/22" \
      --ok-label Select --cancel-label Exit-Devils-Box \
      --menu "DEVILS BOX MAIN MENU" 25 50 40 \
      1 "Console Packs" \
      2 "Hacked Packs" \
      3 "Tool Box" \
      4 "Reboot System" \
      5 "Show Disk Space" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) consoles ;;
    2) hacked ;;
    3) tool_box ;;
    4) system_reboot ;;
    5) show_disk ;;
    *) break ;;
    esac
  done
}

#-----------------------#
# ARTWORK MENU FUNCTIONS #
#-----------------------#
#function artwork() {
#  local choice
#
# while true; do
#    choice=$(dialog --backtitle "$BACKTITLE" --title " ARTWORK DOWNLOAD MENU " \
#      --ok-label Download --cancel-label Back \
#      --menu "INFO: 
#			[*] MEANS PACK INCLUDES    [ ] MEANS PACK DOESNT INCLUDE  
#			AUTO DOWNLOADS TO CORRECT LOCATIONS" 40 75 60 \
#      1 "Amiga Artwork            [*]box  [*]cart  [*]snap  [*]wheel" \
#      2 "AmigaCD Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      3 "Arcadia Artwork          [*]box  [*]cart  [*]snap  [*]wheel" \
#      4 "Astrocade Artwork        [ ]box  [ ]cart  [*]snap  [ ]wheel" \
#      5 "Atari800 Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
#      6 "Atari2600 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
#      7 "Atari5200 Artwork        [*]box  [*]cart  [*]snap  [*]wheel" \
#      8 "Atari7800 Artwork        [ ]box  [*]cart  [*]snap  [*]wheel" \
#      9 "AtariLynx Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
#      10 "AtariST Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      11 "Commadore64 Artwork      [*]box  [*]cart  [*]snap  [ ]wheel" \
#      12 "Coleco Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
#      13 "Daphne Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
#      14 "Dragon32 Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
#      15 "Dreamcast Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
#      16 "Famicon Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      17 "Game & Watch Artwork     [*]box  [*]cart  [*]snap  [ ]wheel" \
#      18 "Gameboy Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      19 "GBA Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
#      20 "GBC Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
#      21 "Gamegear Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
#      22 "Genesis Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      23 "Intellivision Artwork    [*]box  [*]cart  [*]snap  [ ]wheel" \
#      24 "Lightgun Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
#      25 "MarkIII Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      26 "Mastersystem Artwork     [*]box  [*]cart  [*]snap  [ ]wheel" \
#      27 "Megadrive Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
#      28 "Mugen Artwork            [*]box  [*]cart  [*]snap  [ ]wheel" \
#      29 "N64 Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
#      30 "Naomi Artwork            [*]box  [*]cart  [*]snap  [ ]wheel" \
#      31 "NDS Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
#      32 "NeoGeo Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
#      33 "NES Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
#      34 "Openbor Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      35 "Oric Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
#      36 "PC Engine Artwork        [*]box  [*]cart  [*]snap  [ ]wheel" \
#      37 "PS1 Artwork              [*]box  [*]cart  [*]snap  [ ]wheel" \
#      38 "Sega32x Artwork          [*]box  [*]cart  [*]snap  [ ]wheel" \
#      39 "SegaCD Artwork           [*]box  [*]cart  [*]snap  [ ]wheel" \
#      40 "SNES Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
#      41 "TG 16 Artwork            [*]box  [*]cart  [*]snap  [ ]wheel" \
#      42 "Wine Artwork             [*]box  [*]cart  [*]snap  [ ]wheel" \
#      43 "Wonderswan Artwork       [*]box  [*]cart  [*]snap  [ ]wheel" \
#      44 "ZMachine Artwork         [*]box  [*]cart  [*]snap  [ ]wheel" \
#      2>&1 >/dev/tty)
#
#    case "$choice" in
#    1) download-art "amiga" "boxart" "cartart" "snap" "wheel" ;;
#    2) download-art "amigacd" "boxart" "cartart" "snap" ;;
#    3) download-art "arcadia" "boxart" "cartart" "snap" "wheel" ;;
#    4) download-art "astrocade" "snap" ;;
#    5) download-art "atari800" "boxart" "cartart" "snap" ;;
#    6) download-art "atari2600" "boxart" "cartart" "snap" "wheel" ;;
#    7) download-art "atari5200" "boxart" "cartart" "snap" "wheel" ;;
#    8) download-art "atari7800" "cartart" "snap" "wheel" ;;
#    9) download-art "atarilynx" "boxart" "cartart" "snap" ;;
#    10) download-art "atarist" "boxart" "cartart" "snap" ;;
#    11) download-art "c64" "boxart" "cartart" "snap" ;;
#    12) download-art "colecovision" "boxart" "cartart" "snap" ;;
#    13) download-art "daphne" "boxart" "cartart" "snap" ;;
#    14) download-art "dragon32" "boxart" "cartart" "snap" ;;
#    15) download-art "dreamcast" "boxart" "cartart" "snap" ;;
#    16) download-art "famicon" "boxart" "cartart" "snap" ;;
#    17) download-art "gameandwatch" "boxart" "cartart" "snap" ;;
#    18) download-art "gb" "boxart" "cartart" "snap" ;;
#    19) download-art "gba" "boxart" "cartart" "snap" ;;
#    20) download-art "gbc" "boxart" "cartart" "snap" ;;
#    21) download-art "gg" "boxart" "cartart" "snap" ;;
#    22) download-art "genesis" "boxart" "cartart" "snap" ;;
#    23) download-art "intellivision" "boxart" "cartart" "snap" ;;
#    24) download-art "lightgun" "boxart" "cartart" "snap" ;;
#    25) download-art "markiii" "boxart" "cartart" "snap" ;;
#    26) download-art "mastersystem" "boxart" "cartart" "snap" ;;
#    27) download-art "megadrive" "boxart" "cartart" "snap" ;;
#    28) download-art "mugen" "boxart" "wheel" "snap" ;;
#    29) download-art "n64" "boxart" "cartart" "snap" ;;
#    30) download-art "naomi" "boxart" "cartart" "snap" ;;
#    31) download-art "nds" "boxart" "cartart" "snap" ;;
#    32) download-art "neogeo" "boxart" "cartart" "snap" ;;
#    33) download-art "nes" "boxart" "cartart" "snap" ;;
#    34) download-art "openbor" "boxart" "cartart" "snap" ;;
#    35) download-art "oric" "boxart" "cartart" "snap" ;;
#    36) download-art "pc-engine" "boxart" "cartart" "snap" ;;
#    37) download-art "ps1" "boxart" "cartart" "snap" ;;
#    38) download-art "sega32x" "boxart" "cartart" "snap" ;;
#    39) download-art "segacd" "boxart" "cartart" "snap" ;;
#    40) download-art "snes" "boxart" "cartart" "snap" ;;
#    41) download-art "tg16" "boxart" "cartart" "snap" ;;
#    42) download-art "wine" "boxart" "cartart" "snap" ;;
#    43) download-art "wonderswan" "boxart" "cartart" "snap" ;;
#    44) download-art "zmachine" "boxart" "cartart" "snap" ;;
#    *) break ;;
#    esac
#  done
#}
#
#function download-art() {
#  for type in "$@"; do
#    if [ "${type}" != "${1}" ]; then
#      wget -m -r -np -nH -nd -R "index.html" ${ART_HOST}/"${1}"/"${type}"/ -P ~/RetroPie/roms/"${1}"/"${type}" -erobots=off
#    fi
#  done
#}
#
###------------------------------###
### CONSOLE PACKS MENU FUNCTIONS ###
###------------------------------###
function consoles() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " CONSOLES DOWNLOAD MENU" \
      --ok-label Download --cancel-label Back \
      --menu "PRESS A/ENTER TO DOWNLOAD PACK    
      ***** IN FRONT OF CONSOLE MEANS COMING SOON" 40 75 60 \
      1 "Amiga                            300MB      340 GAMES" \
      2 "Arcadia                          201KB       47 GAMES" \
      3 "AmigaCD                          461MB      133 GAMES" \
      4 "Arcade                           8.4GB     2361 GAMES" \
      5 "AmstradPC                        700MB     3624 GAMES" \
      6 "Atari800                         770MB      650 GAMES" \
      7 "Atari2600                        2.6MB      615 GAMES" \
      8 "Atari5200                         70MB      080 GAMES" \
      9 "Atari7800                          2MB       54 GAMES" \
      10 "AtariLynx                         10MB       77 GAMES" \
      11 "Atomiswave                       2.5GB       24 GAMES" \
      12 "Commadore64                      9.5MB      144 GAMES" \
      13 "Colecovision                     2.7MB      146 GAMES" \
      14 "Dragon32                         897KB       51 GAMES" \
      15 "Dreamcast                       12.7GB       19 GAMES" \
      16 "Electron                         2.5MB      152 GAMES" \
      17 "Famicon                           19MB      169 GAMES" \
      18 "FDS                                2MB       43 GAMES" \
      19 "Game and Watch                    48MB       53 GAMES" \
      20 "Gameboy                           42MB      565 GAMES" \
      21 "Gameboy Advance                  3.4GB     1006 GAMES" \
      21 "Gameboy Color                    232MB      538 GAMES" \
      23 "Gamegear                          42MB      249 GAMES" \
      24 "Intellivision                      1MB       62 GAMES" \
      25 "****Lightgun****                  ??GB       ?? GAMES" \
      26 "****MarkIII****                    6MB       58 GAMES" \
      27 "Mastersystem                      35MB      280 GAMES" \
      28 "Megadrive/Genesis                409MB      561 GAMES" \
      29 "MSX                               30MB      708 GAMES" \
      30 "MSX 2                           6.24MB       83 GAMES" \
      31 "****Mugen****                    9.2GB      009 GAMES" \
      32 "Neo Geo Pocket Color              21MB       40 GAMES" \
      33 "Nintendo 64                      5.0GB      338 GAMES" \
      34 "Naomi                            1.5GB       15 GAMES" \
      35 "Nintendo DS                        4GB      171 GAMES" \
      36 "NeoGeo                           2.3GB      142 GAMES" \
      37 "Nintendo Entertainment System    100MB      850 GAMES" \
      38 "Openbor                         1.84GB       37 GAMES" \
      39 "****Oric****                     5.4MB      136 GAMES" \
      40 "Pokemini                         5.4MB       44 GAMES" \
      41 "PS1                                3GB       29 GAMES" \
      42 "Sega Saturn                      108GB      303 GAMES" \
      43 "Sega Staurn Japan                3.9GB       18 GAMES" \
      44 "ScummVM                          2.5GB       21 GAMES" \
      45 "Sega32x                           63MB       37 GAMES" \
      46 "SegaCD                            11GB       52 GAMES" \
      47 "Super Famicon                    475MB      487 GAMES" \
      48 "SNES                             500MB      500 GAMES" \
      49 "SuperGraffiix                    2.4MB        5 GAMES" \
      50 "Turbo Graffix 16                  20MB       94 GAMES" \
      51 "Vectrex                          201KB       20 GAMES" \
      52 "VideoPAC                         430KB       99 GAMES" \
      53 "Virtual Boy                        8MB       24 GAMES" \
      54 "Dreamcast VMU                      3MB      115 GAMES" \
      55 "***Wine****                       17GB       12 GAMES" \
      56 "Wonderswan Color                 116MB       84 GAMES" \
      57 "Sinclair X1                      7.6MB       69 GAMES" \
      58 "Sharp X68000                     504MB      418 GAMES" \
      59 "ZMachine                           4MB       30 GAMES" \
      60 "Zspectrum                         38MB     1111 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) amiga ;;
    2) arcadia ;;
    3) amigacd ;;
    4) arcade ;;
    5) amstradpc ;;
    6) atari800 ;;
    7) atari2600 ;;
    8) atari5200 ;;
    9) atari7800 ;;
    10) atarilynx ;;
    11) atomiswave ;;
    12) c64 ;;
    13) colecovision ;;
    14) dragon32 ;;
    15) dreamcast ;;
    16) electron ;;
    17) famicon ;;
    18) fds ;;
    19) gameandwatch ;;
    20) gb ;;
    21) gba ;;
    22) gbc ;;
    23) gg ;;
    24) intellivision ;;
    25) lightgun ;;
    26) mark3 ;;
    27) mastersystem ;;
    28) megadrive ;;
    29) msx ;;
    30) msx2 ;;
    31) mugen ;;
    32) ngpc ;;
    33) n64 ;;
    34) naomi ;;
    35) nds ;;
    36) neogeo ;;
    37) nes ;;
    38) openbor ;;
    39) oric ;;
    40) pokemini ;;
    41) ps1 ;;
    42) saturn ;;
    43) saturn-japan ;;
    44) scummvm ;;
    45) sega32 ;;
    46) segacd ;;
    47) sfs ;;
    48) snes ;;
    49) supergrafx ;;
    50) tg16 ;;
    51) vectrex ;;
    52) videopac ;;
    53) virtual-boy ;;
    54) vmu ;;
    55) wine ;;
    56) wonderswan ;;
    57) x1 ;;
    58) x68000 ;;
    59) zmachine ;;
    60) zspectrum ;;
    *) break ;;
    esac
  done
}
function amiga() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/amiga/ -P ~/RetroPie/roms/amiga -erobots=off
}
function arcadia() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/arcadia/ -P ~/RetroPie/roms/arcadia -erobots=off
}
function amigacd() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/amigacd/ -P ~/RetroPie/roms/amigacd -erobots=off
}
function arcade() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/arcadia/ -P ~/RetroPie/roms/arcade -erobots=off
}
function amstradpc() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/astrocade/ -P ~/RetroPie/roms/amstradpc -erobots=off
}
function atari800() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atari800/ -P ~/RetroPie/roms/atari800 -erobots=off
}
function atari2600() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atari2600/ -P ~/RetroPie/roms/atari2600 -erobots=off
}
function atari5200() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/atari5200/ -P ~/RetroPie/roms/atari5200 -erobots=off
}
function atari7800() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atari7800/ -P ~/RetroPie/roms/atari7800 -erobots=off
}
function atarilynx() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atarilynx/ -P ~/RetroPie/roms/atarilynx -erobots=off
}
function atomiswave() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/atomiswave/ -P ~/RetroPie/roms/atomiswave -erobots=off
}
function c64() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/c64/ -P ~/RetroPie/roms/c64 -erobots=off
}
function colecovision() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/coleco/ -P ~/RetroPie/roms/coleco -erobots=off
}
function daphne() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/daphne/ -P ~/RetroPie/daphne -erobots=off
}
function dragon32() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/dragon32/ -P ~/RetroPie/roms/dragon32 -erobots=off
}
function dreamcast() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/dreamcast/ -P ~/RetroPie/roms/dreamcast -erobots=off
}
function electron() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/electron/ -P ~/RetroPie/roms/electron -erobots=off
}
function fds() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/fds/ -P ~/RetroPie/roms/fds -erobots=off
}
function gameandwatch() {
   wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gameandwatch/ -P ~/RetroPie/roms/gameandwatch -erobots=off
}
function gb() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gb/ -P ~/RetroPie/roms/gb -erobots=off
}
function gba() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gba/ -P ~/RetroPie/roms/gba -erobots=off
}
function gbc() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gbc/ -P ~/RetroPie/roms/gbc -erobots=off
}
function gamegear() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gamegear/ -P ~/RetroPie/roms/gamegear -erobots=off
}
function intellivision() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/intellivision/ -P ~/RetroPie/roms/intellivision -erobots=off
}
function lightgun() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/lightgun/ -P ~/RetroPie/roms/lightgun -erobots=off
}
function markiii() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/markiii/ -P ~/RetroPie/roms/markiii -erobots=off
}
function mastersystem() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/mastersystem/ -P ~/RetroPie/roms/mastersystem -erobots=off
}
function megadrive() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/megadrive/ -P ~/RetroPie/roms/megadrive -erobots=off
}
function mugen() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"mugen/ -P ~/RetroPie/roms/wine/mugens -erobots=off
}
function  msx() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/msx/ -P ~/RetroPie/roms/msx -erobots=off
}
function  msx2() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/msx2/ -P ~/RetroPie/roms/msx2 -erobots=off
}
function n64() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/n64/ -P ~/RetroPie/roms/n64 -erobots=off
}
function  ngpc() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/ngpc/ -P ~/RetroPie/roms/ngpc -erobots=off
}
function naomi() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/naomi/ -P ~/RetroPie/roms/naomi -erobots=off
}
function nds() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/nds/ -P ~/RetroPie/roms/nds -erobots=off
}
function neogeo() {
  wget  -m -r -np -nH -nd -R "index.html" "${HOST1}"/neogeo/ -P ~/RetroPie/roms/neogeo -erobots=off
}
function nes() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/nes/ -P ~/RetroPie/roms/nes -erobots=off
}
function openbor() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/openbor/ -P ~/RetroPie/roms/openbor -erobots=off
}
function oric() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/oric/ -P ~/RetroPie/roms/oric -erobots=off
}
function pcengine() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/pce/ -P ~/RetroPie/roms/pce -erobots=off
}
function  pokemini() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/pokemini/ -P ~/RetroPie/roms/pokemini -erobots=off
}
function ps1() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/psx/ -P ~/RetroPie/roms/psx -erobots=off
}
function sfc() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/sfc/ -P ~/RetroPie/roms/sfc -erobots=off
}
function sega32x() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/sega32x/ -P ~/RetroPie/roms/seg32x -erobots=off
}
function  saturn() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/saturn/ -P ~/RetroPie/roms/saturn -erobots=off
}
function  saturn-japan() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/saturn-japan/ -P ~/RetroPie/roms/saturn-japan -erobots=off
}
function segacd() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/segacd/ -P ~/RetroPie/roms/segacd -erobots=off
}
function snes() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/snes/ -P ~/RetroPie/roms/snes -erobots=off
}
function  scummvm() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/scummvm/ -P ~/RetroPie/roms/scummvm -erobots=off
}
function supergrafx() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/supergrafx/ -P ~/RetroPie/roms/supergrafx -erobots=off
}
function tg16() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/tg16 -P ~/RetroPie/roms/tg16 -erobots=off
}
function vectrex() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/vectrex/ -P ~/RetroPie/roms/vectrex -erobots=off
}
function videopac() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/videopac/ -P ~/RetroPie/roms/videopac -erobots=off
}
function virtual-boy() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/virtualboy/ -P ~/RetroPie/roms/virtualboy -erobots=off
}
function vmu() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/svmu/ -P ~/RetroPie/roms/vmu -erobots=off
}
function wonderswan() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/wonderswan/ -P ~/RetroPie/roms/wonderswan -erobots=off
}
function x1() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/x1/ -P ~/RetroPie/roms/x1  -erobots=off
}
function x68000() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/x68000/ -P ~/RetroPie/roms/x68000 -erobots=off
}
function zmachine() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/zmachine/ -P ~/RetroPie/roms/zmachine  -erobots=off
}
function zpectrum() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST2}"/zspectrum/ -P ~/RetroPie/roms/zspectrum -erobots=off
}

###------------------------------###
### HACKED PACKS MENU FUNCTIONS  ###			###HACKED PACKS MENU###
###------------------------------###
function hacked() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "HACKED CONSOLES DOWNLOAD MENU " \
      --ok-label Download --cancel-label Back \
      --menu " PRESS A/ENTER TO DOWNLOAD PACK" 40 75 60 \
      1 "Gameboy Advance Hacks                  195MB     26 GAMES " \
      2 "Gameboy Hacks                            4MB     19 GAMES " \
      3 "Genesis Hacks                          197MB    191 GAMES " \
      4 "Gamegear Hacks                           1MB      4 GAMES " \
      5 "NES Hacks                              962KB      6 GAMES " \
	  6 "SNES Hacks                              40MB      37 GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) gbah ;;
    2) gbh ;;
    3) genh ;;
    4) ggh ;;
    5) nesh ;;
	6) snesh ;;
    *) break ;;
    esac
  done
}
function gbah() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gbah/ -P ~/RetroPie/roms/gbah -erobots=off
}
function gbh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/gbh/ -P ~/RetroPie/roms/gbh -erobots=off
}
function genh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/genh/ -P ~/RetroPie/roms/genh -erobots=off
}
function ggh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/ggh/ -P ~/RetroPie/roms/ggh -erobots=off
}
function nesh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/nesh/ -P ~/RetroPie/roms/nesh -erobots=off
}
function snesh() {
  wget -m -r -np -nH -nd -R "index.html" "${HOST1}"/snesh/ -P ~/RetroPie/roms/snesh -erobots=off
}
###------------------------------###
###    TOOL BOX MENU FUNCTIONS   ###
###------------------------------###
function tool_box() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " TOOL BOX MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOLSET AND PRESS A  " 25 50 40 \
      1 "Audio & Visual Tools   " \
      2 "Emulator Tools    " \
      3 "Hardware Tools       " \
      4 "Devils Box Tools  " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) audio ;;
    2) emu_tools ;;
    3) hardware_tools ;;
    4) db_tools ;;
    *) break ;;
    esac
  done
}
#-----------------------------------------#
#   AUDIO & VISUAL TOOLS MENU FUNCTIONS   #
#-----------------------------------------#
function audio() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " AUDIO & VISUAL TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT AUDIO/VISUAL TOOL AND PRESS A TO APPLY " 30 75 60 \
      1 "T.A.M.P.O  (Theme & Music Plus Overlay)        thepitster " \
      2 "Emulation Station Themes                         Retropie " \
      3 "No Audio Fix                                         ANON " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) tampo ;;
    2) es-themes ;;
    3) no-audio ;;
    *) break ;;
    esac
  done
}
function tampo() {
curl -sSL https://git.io/JDfjg | bash
}
function es-themes () {
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch /home/pi/RetroPie/retropiemenu/esthemes.rp
}
function no-audio () {
sudo grep hdmi_force_edid_audio /boot/config.txt > /dev/null 2>&1if 
[ $? -eq 0 ] ; then
echo "The Audio changes have already been made. If you are still not getting audio then there must be another issue."
sleep 4
echo "For now I will reverse the changes since they did not help you."
sleep 5
sudo perl -p -i -e 's/hdmi_force_edid_audio=1/#dtoverlay=lirc-rpi/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_force_hotplug=1/#hdmi_force_hotplug=1/g' /boot/config.txt
sudo perl -p -i -e 's/hdmi_drive=2/#hdmi_drive=2/g' /boot/config.txt
else
echo "I have scanned the config file and see that the audio fix is NOT in place."
sleep 4
echo "If this fix does not work please run the script again to roll the changes back."
sleep 10
echo "I will make the necessary config changes and reboot your Pi"
sleep 5
sudo perl -p -i -e 's/#dtoverlay=lirc-rpi/hdmi_force_edid_audio=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_force_hotplug=1/hdmi_force_hotplug=1/g' /boot/config.txt
sudo perl -p -i -e 's/#hdmi_drive=2/hdmi_drive=2/g' /boot/config.txt
sudo reboot
fi
}

###-----------------------------------###
###  EMU TOOLS MENU FUNCTIONS   ###
###-----------------------------------###
function emu_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "EMULATOR TOOLS MENU" \
      --ok-label Install --cancel-label Back \
      --menu "SELECT TOOL AND PRESS A TO DOWNLOAD/INSTALL " 30 75 60 \
      1 "Devils Retropie Extras                          Retro Devils" \
      2 "RetroPie Extras                                    Exarkuniv" \
      3 "RetroPie Setup Menu                                Retro Pie" \
      2>&1 >/dev/tty)

    case "$choice" in
    1) devils-ex ;;
    2) rp-extras;;
    3) rpi-menu ;;
    *) break ;;
    esac
  done
}
function rp_extras() {
cd ~
git clone https://github.com/Exarkuniv/RetroPie-Extra
cd RetroPie-Extra/
./install-extras.sh
}
function devils-ex() {
if [ -d "~/RetroPie-Setup/ext/Devils-Box" ]; then up-extras; 
else curl -sSL https://git.io/J9Z8c | bash
fi 
}
#----------------------------------#
#       SM3 EMU FUNCTIONS        #
#----------------------------------#
function sm3() {
curl -sSL https://git.io/JSDOy | bash
}

#----------------------------------#
#   RETROPIE SETUP MENU FUNCTION   #
#----------------------------------#
function rpi-menu() {
  sudo ~/RetroPie-Setup/retropie_setup.sh
}

###---------------------------------###
###   HARDWARE TOOLS MENU FUNCTIONS    ###
###---------------------------------###
function hardware_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " HARDWARE TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "CHOOSE KIND OF TOOL " 40 75 60 \
      1 "Cases Tools " \
      2 "Clear Controller Conifg " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) cases ;;
    2) clear_controller ;;
    *) break ;;
    esac
  done
}

#---------------------------------#
#   CLEAR CONTROLLER FUNCTION     #
#---------------------------------#
function clear_controller() {
sudo rm ~/.emulationstation/es_input.cfg
sudo rm /opt/retropie/configs/all/emulationstation/es_temporaryinput.cfg
}

###---------------------------------###
### HARDWARE TOOLS MENU FUNCTIONS   ###
###---------------------------------###
function cases() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " CASES TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SELECT TOOL PRESS TO APPLY/INSTALL " 30 60 60 \
      1 "Argon1 Case Install & Config " \
      2 "NESPI Case Install         " \
      2 "NESPI Case Uninstall       " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) argon1 ;;
    2) nespi ;;
    3) nespi_u ;;
    *) break ;;
    esac
  done
}

function argon1() {
  curl https://download.argon40.com/argon1.sh | bash &&
    bash /usr/bin/argonone-config
}

function nespi() {
  wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/install.sh" | sudo bash
}

function nespi_u() {
  wget -O - "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/uninstall_all.sh" | sudo bash
}

###---------------------------------###
###   DEVILS BOX TOOLS FUNCTION     ###
###---------------------------------###
function db_tools() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " DEVILS BOX TOOLS MENU " \
      --ok-label Select --cancel-label Back \
      --menu "SYSTEM WILL REBOOT WITH REMOVAL OR UPDATE " 30 45 45 \
      1 "About Devils Box    " \
      2 "Help With Devils Box" \
      3 "Remove Devils Box   " \
      4 "Update Devils Box   " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) about_db  ;;
    2) help_db   ;;
    3) remove_db ;;
    4) update_db ;;
    *) break ;;
    esac
  done
}
#--------------------------_#
#ABOUT DEVILS BOX #
#---------------------------#
function help_db() {
  cat ~/Devils-Box/files/HELP-DB.txt
  sleep 20
}
#--------------------------_#
#HELP WITH DEVILS BOX #
#---------------------------#
function about_db() {
  cat ~/Devils-Box/files/INFO.txt
  sleep 20
}
#--------------------------_#
#REMOVE DEVILS BOX #
#---------------------------#
function remove_db() {
  sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh
  sudo rm -R ~/Devils-Box
  sudo reboot
}

#------------------#
#UPDATE DEVILS BOX #
#------------------#
function update_db() {
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  echo "Online ... Updating"
  sleep 1
  sudo rm ~/RetroPie/retropiemenu/Devils-Box.sh
  cd ~/Devils-Box
  git pull -f
  cp ~/Devils-Box/Devils-Box.sh -f ~/RetroPie/retropiemenu/
  sudo cp ~/Devils-Box/files/box -f /usr/local/bin/
  sudo cp ~/Devils-Box/Devils-Box.sh -f /usr/local/bin/Devils-Box
  sudo chmod 755 /usr/local/bin/box
  sudo chmod 755 /usr/local/bin/Devils-Box
  chmod 755 ~/RetroPie/retropiemenu/Devils-Box.sh
  sleep 1
  if [ -d "$HOME/RetroPie/retropiemenu/Devils-Box/" ]; then sudo rm -fR $HOME/RetroPie/retropiemenu/Devils-Box/; fi
  bash ~/RetroPie/retropiemenu/Devils-Box.sh
  exit 1
else
  echo "Offline ... Update Canceled!"
  sleep 1
fi
}

###---------------------------------###
###   MISC DEVILS BOX FUNCTIONS     ###
###---------------------------------###

#----------------------------#
# SHOW DISK SPACE FUNCTION   #
#----------------------------#
function show_disk() {
  free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
  df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB(%s)\n", $3,$2,$5}'
  top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
  cpu_temp=$(</sys/class/thermal/thermal_zone0/temp)
  cpu_temp=$(($cpu_temp / 1000))
  echo Temp: $cpu_temp°C
  sleep 8
}

#-------------------#
# REBOOT FUNCTION   #
#-------------------#
function system_reboot() {
  sudo reboot
}

# Main
main_menu
