#!/bin/bash

# following 2 lines are required in i3 config:
# [class="^custom-float-no-border$"] floating enable
# for_window [class="^custom-float-no-border$"] border pixel 0

rect=$(xrectsel)
sleep 0.1
read -r w h x y <<< "$(echo "$rect" | grep -Eo '[[:digit:]]+' | tr '\n' ' ')"
dest=$(mktemp /tmp/XXXXXXXX.png)
echo -n "$dest" | xclip
scrot -a "$x","$y","$w","$h" -o "$dest"
nohup feh -x "$dest" >/dev/null 2>&1 &
sleep 0.1
wid=$(xdotool getwindowfocus)
xdotool set_window --class "custom-float-no-border" "$wid"
xdotool windowmove "$wid" "$x" "$y"
