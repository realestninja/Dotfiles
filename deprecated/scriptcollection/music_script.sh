#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    notify-send "$(playerctl metadata artist) - $(playerctl metadata title)"
elif [ "$player_status" = "Paused" ]; then
    notify-send "$(playerctl metadata artist) - $(playerctl metadata title)"
else
    notify-send "No music playing on this device"
fi
