#!/bin/bash

CACHE="$HOME/.cache/hypr/current-wallpaper"

DEFAULT="$HOME/Pictures/wallpapers/wall1.png"

if [ -f "$CACHE" ]; then
    WALL=$(cat "$CACHE")
else
    WALL="$DEFAULT"
fi

awww img "$WALL" \
    --transition-type wipe \
    --transition-fps 60 \
    --transition-duration 1