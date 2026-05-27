#!/bin/bash

if pgrep -x slurp >/dev/null; then
    exit
fi

grim -g "$(slurp)" - | wl-copy

canberra-gtk-play -i camera-shutter
notify-send -i camera-photo "Screenshot" "Copied to clipboard"