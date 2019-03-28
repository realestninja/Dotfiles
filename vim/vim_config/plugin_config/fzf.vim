let g:fzf_buffers_jump = 1

nnoremap <silent> <Space><Space> :Buffers<enter>
nnoremap <silent> <Space>p :GFiles<enter>
nnoremap <silent> <Space>o :History<enter>
nnoremap <silent> <Space>l :BLines<enter>
nnoremap <silent> <leader>s :Ag<enter>

" Make :Ag search content only and ignore file names
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
