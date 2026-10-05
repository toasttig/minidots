#!/bin/bash

# 1. Import pywal color palette variables
if [ -f "$HOME/.cache/wal/colors.sh" ]; then
    source "$HOME/.cache/wal/colors.sh"
else
    # Fallback colors if pywal hasn't run yet
    background="#000000"
    foreground="#ffffff"
    color1="#ff0000"
    color2="#00ff00"
fi

# 2. Format hex codes for swaylock (strip '#' and append 'ff' for 100% opacity)
BG="${background#\#}ff"
TEXT="${foreground#\#}ff"
ACCENT="${color1#\#}ff"
RING="${color2#\#}ff"

# 3. Execute swaylock
swaylock \
  --color "$background" \
  --clock \
  --indicator \
  --indicator-radius 100 \
  --indicator-thickness 7 \
  --font "Iosevka" \
  --inside-color "$BG" \
  --ring-color "$RING" \
  --key-hl-color "$ACCENT" \
  --text-color "$TEXT" \
  --line-color 00000000 \
  --separator-color 00000000 \
  --inside-ver-color "$BG" \
  --ring-ver-color "$TEXT" \
  --text-ver-color "$TEXT" \
  --inside-wrong-color "$BG" \
  --ring-wrong-color "$ACCENT" \
  --text-wrong-color "$TEXT" \
  --inside-clear-color "$BG" \
  --ring-clear-color "$RING" \
  --text-clear-color "$TEXT"

