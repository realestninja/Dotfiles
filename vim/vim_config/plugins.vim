set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-rooter'

Plugin 'Shutnik/jshint2.vim'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'

Plugin 'kien/ctrlp.vim'

Plugin 'mattn/emmet-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ap/vim-css-color'
" Plugin 'danhodos/vim-comb'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'leafgarland/typescript-vim'

" Plugin 'w0rp/ale'

Plugin 'Shougo/vimproc.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Quramy/tsuquyomi'

Plugin 'chriskempson/base16-vim'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
