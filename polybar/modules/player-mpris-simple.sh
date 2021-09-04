#!/bin/sh
# From https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/player-mpris-simple/player-mpris-simple.sh

player_status=$(playerctl -p spotify status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo "▶ $(playerctl metadata artist) - $(playerctl metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo "⏸ $(playerctl metadata artist) - $(playerctl metadata title)"
else
    echo ""
fi
