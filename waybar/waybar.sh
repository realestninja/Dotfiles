#!/usr/bin/env sh
# carried over from manjaro-sway default config
# wrapper script for waybar with args, see https://github.com/swaywm/sway/issues/5724

waybar -c "${USER_CONFIG:-"/home/nikhil/Dotfiles/waybar/config.jsonc"}" -s "${USER_STYLE:-"/home/nikhil/Dotfiles/waybar/style.css"}" &
