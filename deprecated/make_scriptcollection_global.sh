#!/bin/bash

current_dir=`pwd`
scriptcollection="/scriptcollection"

path_to_all_scripts="$current_dir""$scriptcollection"
destination="/usr/local/bin/"

printf '%50s\n' | tr ' ' -

for file in $path_to_all_scripts/*
do
	filename=${file%.sh}
	name=${filename##*/}
	if [ ! -f $destination$name ]; then
		printf "Creating symlink for: $name\n"
		ln -s $file $destination$name
		chmod a+x $destination$name
	else
		printf "Skipping - file exists: $name\n"
	fi
done

printf '%50s\n' | tr ' ' -
printf "All done.\n"
