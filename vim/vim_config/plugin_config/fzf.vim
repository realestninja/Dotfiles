let g:fzf_buffers_jump = 1

nnoremap <silent> <Space><Space> :Buffers<enter>
nnoremap <silent> <Space>p :GFiles<enter>
nnoremap <silent> <Space>o :History<enter>
nnoremap <silent> <Space>l :BLines<enter>
nnoremap <silent> <leader>s :Ag<enter>

vnoremap <leader>s "hy:Ag <C-r>h<Enter>
" vnoremap <leader>S "hy:Agf <C-r>h<Enter>

" Make :Ag search content only and ignore file names
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
" command! -bang -nargs=* Agf call fzf#vim#ag(<q-args>, {'options': '-g'}, <bang>0)
