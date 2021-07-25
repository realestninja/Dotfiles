#!/bin/bash

sleep 2s
if [[ `xrandr | awk '{print $1}' | grep HDMI2` ]]; then
	if [[ `xrandr | awk '{print $1}' | grep 3440x1440` ]]; then
		sh ~/Dotfiles/screenlayout/HD_widescreen_only.sh
	fi
fi

