let mapleader = ","

" jj to leave insertmode
imap jj <Esc>

" Append ; at end of line
nnoremap ; :execute "normal! mqA;\<lt>esc>`q"<enter>

" record macro to q
nnoremap Q qq

" Close split but keep buffer
nnoremap <Backspace> <C-w>q<Enter>

" swap lines
nnoremap - ddpkj
nnoremap _ kddpk

" save to disk
nnoremap <Enter> :w<Enter>
nnoremap <leader><Enter> :w !sudo tee %<Enter>

" closing / exiting
nnoremap <leader>q :bw<Enter>
nnoremap <leader>a :qa<Enter>

" change split direction
nnoremap <leader>bs :split<Enter>
nnoremap <leader>vs :vsplit<Enter>

" make session
nnoremap <leader>mks :mks!<Enter>

" center current line
nnoremap <leader>. z.

" buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Sort like a boss
vnoremap <C-s> :sort<CR>

" Blackhole pasting
vnoremap <leader>p "_dP

" Set filetype to json and apply correct formatting
nnoremap =j :set ft=json<CR>:%!python -m json.tool<CR>

" Replace all occurences
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
vnoremap <leader><C-r> "hy:%s/<C-r>h/<C-r>h/g<left><left>

" REPL
vnoremap <leader>rn :w !node<Enter>
vnoremap <leader>rr :w !ruby<Enter>
vnoremap <leader>rp :w !python<Enter>

" fugitive
nnoremap <leader>gs :Git<Enter>
nnoremap <leader>ga :Gwrite<Enter>
nnoremap <leader>gc :Gcommit<Space>-m<Space>''<left>
nnoremap <leader>gd :Gdiffsplit!<Enter>
nnoremap <leader>gb :Git blame<Enter>

set diffopt+=vertical

" " fzf
" let g:fzf_buffers_jump = 1

" nnoremap <silent> <Space><Space> :Buffers<enter>
" nnoremap <silent> <Space>l :BLines<enter>
" nnoremap <silent> <Space>o :History<enter>
" nnoremap <silent> <Space>p :GFiles<enter>
" nnoremap <silent> <leader>s :Ag<enter>

" vnoremap <leader>s "hy:Ag <C-r>h<Enter>
" " vnoremap <leader>S "hy:Agf <C-r>h<Enter>

" " Make :Ag search content only and ignore file names
" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
" " command! -bang -nargs=* Agf call fzf#vim#ag(<q-args>, {'options': '-g'}, <bang>0)
