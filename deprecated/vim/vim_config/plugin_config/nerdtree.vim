map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeFind<CR>
nmap <silent> <leader>N :NERDTreeFocus<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeWinSize=40

" set splitright

"open a nerdtree when vim starts
" autocmd vimenter * call s:CheckToOpenNERDTree()
" Go to previous (last accessed) window.
" autocmd VimEnter * wincmd p

" function! s:CheckToOpenNERDTree() abort

    " "don't open nerdtree for gitcommits
    " if &ft == 'gitcommit' || &ft == 'gitrebase'
        " return
    " endif

		" NERDTree

" endfunction
