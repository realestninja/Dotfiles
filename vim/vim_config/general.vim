" General settings

syntax on
set shell=bash
set number relativenumber
set nowrap
set clipboard=unnamedplus
set foldmethod=manual

" Fix for nerdfonts
let appendArtifactFix = 1

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
