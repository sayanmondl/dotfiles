#!/bin/bash

URL=$(playerctl metadata mpris:artUrl 2>/dev/null)

[ -z "$URL" ] && exit

if [[ "$URL" == file://* ]]; then
    cp "${URL#file://}" /tmp/hyprlock-cover.png
fi