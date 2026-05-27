#!/bin/bash

DIR="$HOME/Pictures/screenshots"

FILE="$DIR/Window_$(date +'%Y-%m-%d_%H-%M-%S').png"

GEOM=$(hyprctl activewindow -j | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')

grim -g "$GEOM" "$FILE"

canberra-gtk-play -i camera-shutter
action=$(notify-send \
    --wait \
    -i "$FILE" \
    --action=view=View \
    --action=delete=Delete \
    "Window Screenshot Saved" \
    "$(basename "$FILE")")

case "$action" in
    view)
        loupe "$FILE"
        ;;
    delete)
        rm -f "$FILE"
        notify-send "Screenshot Deleted"
        ;;
esac