source ~/Dotfiles/vim/vim_config/mappings.vim
source ~/Dotfiles/vim/vim_config/plugins.vim
source ~/Dotfiles/vim/vim_config/plugin_config.vim
source ~/Dotfiles/vim/vim_config/js.vim
source ~/Dotfiles/vim/vim_config/general.vim
source ~/Dotfiles/vim/vim_config/features.vim
source ~/Dotfiles/vim/vim_config/indentation.vim

" Below is a fix for devicons after re-sourcing the vimconfig
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
