let mapleader = ","

" jj to leave insertmode
imap jj <Esc>

" Close split but keep buffer
nnoremap <Backspace> <C-w>q<Enter>

" Close buffer but keep split
nnoremap <leader><Backspace> :bp\|bd \#<Enter>

" swap lines
nnoremap - ddpkj
nnoremap _ kddpk

" insert empty line above
nnoremap <leader>- o<Esc>jkk
nnoremap <leader>_ O<Esc>j

" add empty line above
nnoremap <leader>- O<Esc>j

nnoremap <leader>w :w<Enter>
nnoremap <Enter> :w<Enter>
nnoremap <leader><Enter> :w !sudo tee %<Enter>

"nnoremap <leader>q :q<Enter>
nnoremap <leader>q :bw<Enter>
"nnoremap <leader>q :Bclose<Enter>
nnoremap <leader>a :qa<Enter>
nnoremap <leader>cl :close<Enter>
nnoremap <leader>bw :bw<Left><Left>
nnoremap <leader>bs :split<Enter>
nnoremap <leader>e :e<Enter>

nnoremap <leader>mks :mks!<Enter>

" center current line
nnoremap <leader>. z.

" buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" join lines
nnoremap gJ gJdw

" Toggle highlight search
nnoremap <leader>hs :set hlsearch!<Enter>

" Reload .vimrc & install plugins
nnoremap <leader>+ :so ~/.vimrc<Enter>
nnoremap <leader>p :PluginInstall<Enter>

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

" vnoremap ++ y/<C-R>"<CR>

" Highlight + search current word
noremap * *N:set hlsearch<Enter>

" Regular Ctrl + v pasting in insert mode instead of Ctrl + Shift + v
inoremap <silent> <C-v> <C-R>"
