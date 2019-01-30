let mapleader = ","

" jj to leave insertmode
imap jj <Esc>

" Close buffer but keep split
nnoremap <Backspace> :bp\|bd \#<Enter>

" Close split but keep buffer
nnoremap <leader><Backspace> <C-w>q<Enter>

" swap lines
nnoremap - kddp
nnoremap _ ddpk

nnoremap <leader>w :w<Enter>
nnoremap <Enter> :w<Enter>

"nnoremap <leader>q :q<Enter>
nnoremap <leader>q :bw<Enter>
"nnoremap <leader>q :Bclose<Enter>
nnoremap <leader>a :qa<Enter>
nnoremap <leader>r :edit<Enter>
nnoremap <leader>bw :bw<Left><Left>
nnoremap <leader>bs :split<Enter>
nnoremap <leader>e :e<Enter>

" buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>bb :buffers<Enter>

" join lines
imap gJ gJdw

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

" Replace all occurences
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" Autocompletion
" use built in -> insertmode: CTRL+X -> CTRL+I

vnoremap ++ y/<C-R>"<CR>

" Git rebase
autocmd FileType gitrebase nnoremap <C-p> 0cwpick<esc>
autocmd FileType gitrebase nnoremap <C-r> 0cwreword<esc>
autocmd FileType gitrebase nnoremap <C-s> 0cwsquash<esc>
autocmd FileType gitrebase nnoremap <C-f> 0cwfixup<esc>

" Git merge conflict
" <leader>gd -> enter diffmode
" d2o -> pick from leftside
" d3o -> pick from rightside
" ]c -> next conflict
" [c -> prev conflict
