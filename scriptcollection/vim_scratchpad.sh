#!/bin/bash
tmp_file=$(mktemp)
vim -g -f -c startinsert -c 'set ft=markdown' ${tmp_file} &
wait $!
xclip -selection clipboard < $tmp_file
