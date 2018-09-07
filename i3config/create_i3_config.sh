#!/bin/bash

folderpath=$HOME"/Dotfiles/i3config/"
srcpath=$folderpath"src/"
config=$folderpath"config"

srcfiles=(
header
set-modkey
focus_wrapping
font
i3-gaps
polybar
compton
background-image
keybindings
reload_restart
hidemouse
scrolling
screenshot
media-hotkeys
spotify
system_power_mode
apps_and_boot
)

rm $config
touch $config

for filename in "${srcfiles[@]}"
do
  cat $srcpath/$filename >> $config
done
