#!/bin/bash

WALL_DIR="$HOME/Pictures/wallpapers"

CACHE="$HOME/.cache/hypr/current-wallpaper"

WALL=$(find "$WALL_DIR" -type f | shuf -n 1)

echo "$WALL" > "$CACHE"

awww img "$WALL" \
    --transition-type wipe \
    --transition-fps 60 \
    --transition-duration 1