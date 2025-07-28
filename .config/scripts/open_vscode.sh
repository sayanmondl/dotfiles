#!/bin/bash

if pgrep -x code >/dev/null; then
    hyprctl dispatch focuswindow "class:^(Code)$"
else
    hyprctl dispatch workspace 10
    code &
fi
