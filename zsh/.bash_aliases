alias vim="nvim"
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less

alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias notes='cd ~/Documents/ObsidianVault/'
alias r='ranger'
alias R='ranger'
alias p='ping 9.9.9.9'
alias o='xdg-open'
alias open='xdg-open'
# alias reload-bashrc='source ~/.bashrc'
alias Dotfiles='cd ~/Dotfiles'
alias Code='cd ~/Code'
alias kittyssh="kitty +kitten ssh"

alias cdc='cd $(ls -A1 | fzf)'

alias g='git'
alias update='yay -Syyu'

alias toClipboard='xclip -selection clipboard'

alias gpuVendor='glxinfo | grep "server glx vendor string"'

function listAppsRam {
	while true; do clear && ps aux | awk '{print $6/1024 " MB\t\t" $11}' | sort -n | tail; sleep 3; done
	# watch -n 2 ps aux | awk '{print $6/1024 " MB\t\t" $11}' | sort -n | tail
}

function toPNG {
	mogrify -format png $1
}

function toJPG {
	mogrify -format jpg $1
}

function historyGrep {
	history | grep $1
}

# search and replace, project-wide
function sarpw {
  echo 'Old: ' $1
  echo 'New: ' $2
  echo 'Renaming...'
  find . -not -path "./.git/*" -not -path "./node_modules/*" -type f -exec sed -i 's/'$1'/'$2'/g' {} \;
  echo "Done!"
}
