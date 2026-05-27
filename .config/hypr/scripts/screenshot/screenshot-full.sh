#!/bin/bash

DIR="$HOME/Pictures/screenshots"

FILE="$DIR/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

grim "$FILE"

canberra-gtk-play -i camera-shutter
action=$(notify-send \
    --wait \
    -i "$FILE" \
    --action=view=View \
    --action=delete=Delete \
    "Screenshot Saved" \
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