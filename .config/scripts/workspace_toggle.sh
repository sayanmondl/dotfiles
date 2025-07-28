#!/bin/bash

STATE="$HOME/.cache/hyprland_last_workspace"

current_ws=$(hyprctl activeworkspace -j | jq -r '.id')

if [ -f "$STATE" ]; then
    prev_ws=$(<"$STATE")
else
    prev_ws="$current_ws"
fi

if [ "$current_ws" != "$prev_ws" ]; then
    hyprctl dispatch workspace "$prev_ws"
fi