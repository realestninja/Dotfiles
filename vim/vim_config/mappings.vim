let mapleader = ","

" jj to leave insertmode
imap jj <Esc>

" swap lines
nnoremap - kddp
nnoremap _ ddpk

" leader shortcuts
nnoremap <leader>q :q<Enter>
nnoremap <leader>a :qa<Enter>
nnoremap <leader>w :w<Enter>
nnoremap <leader>r :edit<Enter>
nnoremap <leader>bw :bw<Enter>
nnoremap <leader>bs :split<Enter>

:nnoremap <leader>B :buffers<CR>:buffer<Space>

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
