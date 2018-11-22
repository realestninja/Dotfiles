map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeFind<CR>
nmap <silent> <leader>N :NERDTreeFocus<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeWinSize=40

set splitright

" Start NERDTree
autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
