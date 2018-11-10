set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-rooter'

"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'

Plugin 'Shutnik/jshint2.vim'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'tpope/vim-surround'
"Plugin 'terryma/vim-expand-region'

Plugin 'kien/ctrlp.vim'

Plugin 'mattn/emmet-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ap/vim-css-color'
" Plugin 'danhodos/vim-comb'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'
"Plugin 'leshill/vim-json'
"Plugin 'leafgarland/typescript-vim'

Plugin 'w0rp/ale'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'ternjs/tern_for_vim'
"Plugin 'carlitux/deoplete-ternjs'

Plugin 'craigemery/vim-autotag'

"Plugin 'Shougo/vimproc.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Quramy/tsuquyomi'

Plugin 'chriskempson/base16-vim'

Plugin 'https://gitlab.com/code-stats/code-stats-vim.git'

" MP
Plugin 'editorconfig/editorconfig-vim'

Plugin 'ryanoasis/vim-devicons'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
