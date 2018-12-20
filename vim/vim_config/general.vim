" General settings

syntax on
set shell=bash
set number relativenumber
set nowrap
set clipboard=unnamedplus
set foldmethod=manual
set encoding=UTF-8
set splitbelow splitright

" Enable autocompletion:
" set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Check for base16colorspace
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
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
