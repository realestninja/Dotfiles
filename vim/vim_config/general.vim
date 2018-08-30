syntax on

set number
set nowrap
set clipboard=unnamedplus

" Check for base16colorspace
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" auto resize windows
autocmd VimResized * wincmd =

:set number relativenumber

" deactivate relative linenumbers for inactive buffer
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
