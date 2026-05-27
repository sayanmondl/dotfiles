#!/bin/bash

if pgrep -x slurp >/dev/null; then
    exit
fi

DIR="$HOME/Pictures/screenshots"

FILE="$DIR/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

grim -g "$(slurp)" "$FILE"

canberra-gtk-play -i camera-shutter
notify-send -i "$FILE "Screenshot Saved" "$FILE"