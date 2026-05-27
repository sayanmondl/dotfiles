#!/usr/bin/env bash

# Current Theme
dir="$HOME/.config/rofi/themes"
theme='power'

# CMDs
lastlogin="$(last "$USER" | head -n1 | tr -s ' ' | cut -d' ' -f5,6,7)"
uptime="$(uptime -p | sed 's/up //')"
HOSTNAME="$(cat /etc/hostname)"

# Options
hibernate='󰒲 '
shutdown=' '
reboot=' '
lock=''
suspend='󰽥'
logout=''

yes='󰄬'
no='󰅖'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "󰣇 $USER@$HOSTNAME" \
		-mesg "󰅐 Uptime: $uptime" \
		-theme "${dir}/${theme}.rasi"
}

# Confirmation CMD
confirm_cmd() {
	rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 350px;}' \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
		-theme-str 'listview {columns: 2; lines: 1;}' \
		-theme-str 'element-text {horizontal-align: 0.5;}' \
		-theme-str 'textbox {horizontal-align: 0.5;}' \
		-theme-str 'message {expand: false;}' \
		-dmenu \
		-mesg '  Are you Sure?' \
		-theme ${dir}/${theme}.rasi
}

# Ask for confirmation
confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$suspend\n$logout\n$hibernate\n$reboot\n$shutdown" | rofi_cmd
}


# Actions
chosen="$(run_rofi)"
case "$chosen" in
	$shutdown)
		[[ "$(confirm_exit)" == "$yes" ]] && systemctl poweroff
		;;
	$reboot)
		[[ "$(confirm_exit)" == "$yes" ]] && systemctl reboot
		;;
	$hibernate)
		[[ "$(confirm_exit)" == "$yes" ]] && systemctl hibernate
		;;
	$suspend)
		if [[ "$(confirm_exit)" == "$yes" ]]; then
			mpc -q pause
			amixer set Master mute
			systemctl suspend
		fi
		;;
	$logout)
		[[ "$(confirm_exit)" == "$yes" ]] && pkill -KILL -u sayan
		;;
esac