map <C-n> :NERDTreeToggle<CR>
map <leader>N :NERDTreeFocus<CR>
map <leader>n :NERDTreeFind<CR>
"^ needs fix

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeWinSize=40

set splitright

" Start NERDTree
autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
autocmd VimEnter * NERDTreeFind
autocmd VimEnter * wincmd p
