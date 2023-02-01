set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'simeji/winresizer'
Plugin 'wesQ3/vim-windowswap'

Plugin 'nvim-treesitter/nvim-treesitter'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-rooter'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'realestninja/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'
Plugin 'realestninja/vim-printer'
Plugin 'danielwe/base16-vim'
Plugin 'junegunn/goyo.vim'
Plugin 'ryanoasis/vim-devicons'

" snippets
Plugin 'SirVer/ultisnips'
Plugin 'realestninja/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'jhkersul/vim-jest-snippets'

" work related
Plugin 'editorconfig/editorconfig-vim'
Plugin 'styled-components/vim-styled-components'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

source ~/Dotfiles/nvim/mappings.vim
source ~/Dotfiles/nvim/general.vim
source ~/Dotfiles/nvim/indentation.vim
" source ~/Dotfiles/nvim/plugins.vim
source ~/Dotfiles/nvim/plugin_config/nerdtree.vim
source ~/Dotfiles/nvim/plugin_config/fzf.vim
source ~/Dotfiles/nvim/plugin_config/goyo.vim
source ~/Dotfiles/nvim/plugin_config/winresizer.vim
source ~/Dotfiles/nvim/plugin_config/rooter.vim
source ~/Dotfiles/nvim/plugin_config/nerdcommenter.vim

source ~/Dotfiles/nvim/features/clevertab.vim
source ~/Dotfiles/nvim/features/close-inactive-bufs.vim
source ~/Dotfiles/nvim/features/git.vim
source ~/Dotfiles/nvim/features/openStyledComponentsFile.vim
source ~/Dotfiles/nvim/features/toggle_list.vim
source ~/Dotfiles/nvim/features/zoom.vim
