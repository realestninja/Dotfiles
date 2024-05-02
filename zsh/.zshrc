# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip -v $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

if [ -f ~/Dotfiles/zsh/.bash_aliases ]; then
    . ~/Dotfiles/zsh/.bash_aliases
fi

if [ -f ~/Dotfiles/zsh/.bash_aliases_work ]; then
    . ~/Dotfiles/zsh/.bash_aliases_work
fi

eval `ssh-agent -s`
# if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    # ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
# fi
# eval `ssh-agent`
# [ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"
# if [ -z "$SSH_AUTH_SOCK" ] ; then
 # eval `ssh-agent -s`
 # ssh-add ~/.ssh/id_rsa
# fi
# https://wiki.archlinux.org/index.php/SSH_keys#ssh-agent
# if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    # ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
# fi
# if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    # source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
# fi

# cargo
export PATH=/home/nikhil/.cargo/bin:$PATH

# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# nvm
source /usr/share/nvm/init-nvm.sh
