#!/bin/sh
# The Sway configuration file in ~/.config/sway/config calls this script.

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date=$(date "+%a %Y-%m-%d %H:%M")

# Battery percentage and charging status
bat=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $(cat /sys/class/power_supply/BAT0/status) == "Charging" ]; then
	charging="C"
fi

# Volume and mute status
vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}' | xargs echo 100 \* | bc | cut -d. -f1)

if [ $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}') == "[MUTED]" ]; then
	mute="M"
fi

echo Bat: $bat% $charging '|' Vol: $vol% $mute '|' $date
