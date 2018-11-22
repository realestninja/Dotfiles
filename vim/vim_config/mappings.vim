let mapleader = ","

" jj to leave insertmode
imap jj <Esc>

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

" Toggle quickfix windows
nmap <silent> <leader>ll :call ToggleList("Location List", 'l')<CR>
nmap <silent> <leader>cc :call ToggleList("Quickfix List", 'c')<CR>

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
