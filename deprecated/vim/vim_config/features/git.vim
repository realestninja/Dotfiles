autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn=73
au FileType gitcommit 1 | startinsert

" Git rebase
autocmd FileType gitrebase nnoremap <leader>p 0cwpick<esc>j0
autocmd FileType gitrebase nnoremap <leader>r 0cwreword<esc>j0
autocmd FileType gitrebase nnoremap <leader>s 0cwsquash<esc>j0
autocmd FileType gitrebase nnoremap <leader>f 0cwfixup<esc>j0
autocmd FileType gitrebase nnoremap <leader>d 0cwdrop<esc>j0

" Git merge conflict
" <leader>gd -> enter diffmode
" d2o -> pick from leftside
" d3o -> pick from rightside
" ]c -> next conflict
" [c -> prev conflict
