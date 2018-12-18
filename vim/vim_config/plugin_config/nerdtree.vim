map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeFind<CR>
nmap <silent> <leader>N :NERDTreeFocus<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeWinSize=40

set splitright

"open a nerdtree when vim starts
autocmd vimenter * call s:CheckToOpenNERDTree()

function! s:CheckToOpenNERDTree() abort

    "don't open nerdtree for gitcommits
    if &ft == 'gitcommit'
        return
    endif

    NERDTree

		" Go to previous (last accessed) window.
		autocmd VimEnter * wincmd p
endfunction
