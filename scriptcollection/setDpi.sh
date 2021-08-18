#!/bin/bash

if [ "$#" -eq  "0" ]
then
	echo "No arguments supplied"
else
	targetFile=$HOME"/.Xresources"
	XresourcesFile=$HOME"/Dotfiles/Xresources/Xresources"

	rm $targetFile
	touch $targetFile

	cat "$XresourcesFile" >> $targetFile
	echo "Xft.dpi:       $1" >> $targetFile
	xrdb $targetFile
fi
