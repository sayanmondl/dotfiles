#!/bin/bash

options="  Shutdown\n  Reboot\n  Lock\n  Sign Out"

selected_option=$(echo -e "$options" | rofi -dmenu -p "Select an option:")

case "$selected_option" in
    "  Shutdown")
        shutdown now
        ;;
    "  Reboot")
        reboot
        ;;
    "  Lock")
        hyprlock
        ;;
    "  Sign Out")
        pkill -u sayan
        ;;
    *)
        echo "Invalid option"
        ;;
esac
