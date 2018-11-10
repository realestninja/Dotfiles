source $HOME/Dotfiles/vim/vim_config/plugins.vim
source $HOME/Dotfiles/vim/vim_config/plugin_config.vim
source $HOME/Dotfiles/vim/vim_config/js.vim
source $HOME/Dotfiles/vim/vim_config/general.vim
source $HOME/Dotfiles/vim/vim_config/mappings.vim
source $HOME/Dotfiles/vim/vim_config/center_cursor.vim
source $HOME/Dotfiles/vim/vim_config/indentation.vim

" Below is a fix for devicons after re-sourcing the vimconfig
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

" Below for work pc. That machine is for little girls
if system("uname") == "Darwin\n"
	source $HOME/Dotfiles/vim/vim_config/.silly-macOS.vim
endif
