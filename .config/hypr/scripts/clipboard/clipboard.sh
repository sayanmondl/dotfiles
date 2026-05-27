#!/bin/bash

SELECTED=$(cliphist list | rofi -dmenu -p "Clipboard")

[ -z "$SELECTED" ] && exit

cliphist decode <<< "$SELECTED" | wl-copy