#!/bin/bash

options="Shutdown\nReboot\nLock\nSign Out"

selected_option=$(echo -e "$options" | rofi -dmenu -p "Select an option:")

case "$selected_option" in
    "Shutdown")
        shutdown now
        ;;
    "Reboot")
        reboot
        ;;
    "Lock")
        swaylock
        ;;
    "Sign Out")
        pkill -u sayan
        ;;
    *)
        echo "Invalid option"
        ;;
esac
