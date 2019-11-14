set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'simeji/winresizer'
Plugin 'wesQ3/vim-windowswap'

Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-rooter'

" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Plugin 'Shutnik/jshint2.vim'
" Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'realestninja/nerdcommenter'

Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'terryma/vim-expand-region'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

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
Plugin 'leafgarland/typescript-vim'

" Plugin 'neoclide/coc.nvim', {'branch': 'release'}"
" Note: requires :call coc#util#install()

Plugin 'w0rp/ale'
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'ternjs/tern_for_vim'
" Plugin 'carlitux/deoplete-ternjs'

" Plugin 'craigemery/vim-autotag'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

" Plugin 'Shougo/vimproc.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Quramy/tsuquyomi'

" Plugin 'chriskempson/base16-vim' <- check if bug was fixed
Plugin 'danielwe/base16-vim'
Plugin 'junegunn/goyo.vim'

" Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'realestninja/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'jhkersul/vim-jest-snippets'

" MP
Plugin 'editorconfig/editorconfig-vim'
Plugin 'styled-components/vim-styled-components'

Plugin 'ryanoasis/vim-devicons'

Plugin 'mboughaba/i3config.vim'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
