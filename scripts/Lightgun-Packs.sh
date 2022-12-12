function lightgun_menu() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title " AUDIO & VISUAL TOOLS MENU" \
      --ok-label Select --cancel-label Back \
      --menu "SELECT CONSOLE TO DOWNLOAD " 30 70 50 \
      + "<->CONSOLE NAME<---------------->SIZE<----># OF GAMES" \
      1 "NES                              ??GB        ?? GAMES" \
      2 "SNES                             ??GB        ?? GAMES" \
      2>&1 >/dev/tty)

    case "$choice" in
    +) nono ;;
    1) nes-lg-pack ;;
    2) snes-lg-pack ;;
    -) none ;;
    *) break ;;
    esac
  done
}


lightgun_menu
