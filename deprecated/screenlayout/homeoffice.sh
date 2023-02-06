#!/bin/sh
xrandr --output eDP1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --primary --mode 3840x2160 --pos 2560x0 --rotate normal --output VIRTUAL1 --off && sh ~/.fehbg
# sleep 2
i3-msg workspace 1

i3-msg move container to workspace 8

i3-msg workspace 8
i3-msg workspace 2
i3-msg workspace 1
