#!/bin/bash

# Get current power profile
power_profile=$(powerprofilesctl get)

# Get current refresh rate
refresh_line=$(hyprctl monitors | grep -A 1 "Monitor $MONITOR_NAME" | grep '@')
refresh_rate=$(echo "$refresh_line" | grep -oP '@\K[0-9.]+' | cut -d'.' -f1)

# Prompt string
status="⚡ $power_profile |  ${refresh_rate}Hz"

# Show menu
choice=$(echo -e \
        "󰓅 Performance\n󰾪 Balanced\n󰾫 Power Saver" | \
    rofi -dmenu -p "$status")

# Act based on choice
case "$choice" in
    "󰓅 Performance") powerprofilesctl set performance ;;
    "󰾪 Balanced") powerprofilesctl set balanced ;;
    "󰾫 Power Saver") powerprofilesctl set power-saver ;;
esac
v