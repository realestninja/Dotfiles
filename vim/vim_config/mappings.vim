let mapleader = ","

" jj to leave insertmode
imap jj <Esc>

" Append ; at end of line
nnoremap ; :execute "normal! mqA;\<lt>esc>`q"<enter>

" record macro to q
nnoremap Q qq

" Close split but keep buffer
nnoremap <Backspace> <C-w>q<Enter>

" Close buffer but keep split
nnoremap <leader><Backspace> :bp\|bd \#<Enter>

" swap lines
nnoremap - ddpkj
nnoremap _ kddpk

" insert empty line above
nnoremap <leader>- o<Esc>jkk

nnoremap <Enter> :w<Enter>
nnoremap <leader><Enter> :w !sudo tee %<Enter>
" Keep default CR behaviour for quickfix list
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

"nnoremap <leader>q :q<Enter>
nnoremap <leader>q :bw<Enter>
"nnoremap <leader>q :Bclose<Enter>
nnoremap <leader>a :qa<Enter>
" nnoremap <leader>cl :close<Enter>
nnoremap <leader>bw :bw<Left><Left>
nnoremap <leader>bs :split<Enter>
nnoremap <leader>vs :vsplit<Enter>
nnoremap <leader>ee :edit!<Enter>

nnoremap <leader>mks :mks!<Enter>

" center current line
nnoremap <leader>. z.

" buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" join lines
nnoremap gJ gJdw

nnoremap Y y$

" Toggle highlight search
nnoremap <leader>hs :set hlsearch!<Enter>

" Reload .vimrc & install plugins
nnoremap <leader>+ :so ~/.vimrc<Enter>
" nnoremap <leader>p :PluginInstall<Enter>

" edit mappings from anywhere
nnoremap <leader>emap :split ~/Dotfiles/vim/vim_config/mappings.vim<Enter><Esc>

" toggle wrap
nnoremap <leader>tw :setlocal wrap!<Enter>

" toggle relative numbers
map <leader>ln :setlocal relativenumber!<Enter>

" toggle cursorcolumn
nnoremap <leader>tc :set cursorcolumn!<Enter>

" Replace all occurences
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
vnoremap <leader><C-r> "hy:%s/<C-r>h/<C-r>h/g<left><left>

" Autocompletion
" use built in -> insertmode: CTRL+X -> CTRL+I

" Highlight + search current word
nnoremap * :let @/ = '<c-r><c-w>' \| set hlsearch<cr>

" Blackhole pasting
vnoremap <leader>p "_dP

" Set filetype to json and apply correct formatting
nnoremap =j :set ft=json<CR>:%!python -m json.tool<CR>

" Sort like a boss
vnoremap <C-s> :sort<CR>

" Change layout -> vertical/horizontal
nnoremap <silent> <leader>lb <C-w>t<C-w>K<CR>
nnoremap <silent> <leader>lv <C-w>t<C-w>H<CR>

" REPL
vnoremap <leader>rn :w !node<Enter>
vnoremap <leader>rr :w !ruby<Enter>
vnoremap <leader>rp :w !python<Enter>
