set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'simeji/winresizer'

Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-rooter'

" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'Shutnik/jshint2.vim'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'

Plugin 'kien/ctrlp.vim'

Plugin 'mattn/emmet-vim'
" Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ap/vim-css-color'
" Plugin 'csscomb/vim-csscomb'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'tpope/vim-obsession'

" Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" Plugin 'leshill/vim-json'

" Plugin 'MaxMEllon/vim-jsx-pretty'
" Plugin 'mgechev/vim-jsx'
" Plugin 'leafgarland/typescript-vim'

Plugin 'w0rp/ale'
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'ternjs/tern_for_vim'
" Plugin 'carlitux/deoplete-ternjs'

Plugin 'craigemery/vim-autotag'
Plugin 'mileszs/ack.vim'

" Plugin 'Shougo/vimproc.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Quramy/tsuquyomi'

Plugin 'chriskempson/base16-vim'
Plugin 'junegunn/goyo.vim'

" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

"
" Plugin 'https://gitlab.com/code-stats/code-stats-vim.git'

" MP
Plugin 'editorconfig/editorconfig-vim'

Plugin 'ryanoasis/vim-devicons'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
