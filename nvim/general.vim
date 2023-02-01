" General settings

syntax on
set shell=zsh
set number relativenumber
set nowrap
set clipboard=unnamedplus
set foldmethod=manual
set encoding=UTF-8
set splitbelow splitright
set backspace=indent,eol,start
set guicursor=i:block

autocmd ColorScheme * hi Normal ctermbg=NONE

" Enable autocompletion:
" set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

if exists('$BASE16_THEME')
      \ && (!exists('g:colors_name') || g:colors_name != 'base16-$BASE16_THEME')
    let base16colorspace=256
    colorscheme base16-$BASE16_THEME
endif

" auto resize windows
autocmd VimResized * wincmd =

" deactivate relative linenumbers for inactive buffer
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

function! GetBufferList()
  redir =>buflist
  silent! ls!
  redir END
  return buflist
endfunction

" autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb
" au BufRead,BufNewFile *.jsx set filetype=jsx

" Remove underline from linenumber
hi CursorLineNr  cterm=none

" setup for bufferline
lua << EOF
require("bufferline").setup{}
EOF
