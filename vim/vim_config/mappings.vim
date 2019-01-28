let mapleader = ","

" jj to leave insertmode
imap jj <Esc>

nnoremap <Enter> :w<Enter>

" swap lines
nnoremap - kddp
nnoremap _ ddpk

" leader shortcuts
"nnoremap <leader>q :q<Enter>
nnoremap <leader>q :bw<Enter>
"nnoremap <leader>q :Bclose<Enter>
nnoremap <leader>a :qa<Enter>
nnoremap <leader>w :w<Enter>
nnoremap <leader>r :edit<Enter>
nnoremap <leader>bw :bw<Enter>
nnoremap <leader>bs :split<Enter>
nnoremap <leader>e :e<Enter>

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
