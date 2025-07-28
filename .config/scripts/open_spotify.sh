#!/bin/bash

if pgrep -x spotify >/dev/null; then
    hyprctl dispatch focuswindow "class:^(Spotify)$"
else
    hyprctl dispatch workspace 9
    flatpak run com.spotify.Client &
fi
