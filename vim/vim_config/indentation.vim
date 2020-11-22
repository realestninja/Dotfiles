:set noexpandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0
autocmd Filetype jsx setlocal ts=2 sw=2 sts=0 noexpandtab
autocmd Filetype tsx setlocal ts=2 sw=2 sts=0 noexpandtab
autocmd Filetype json setlocal ts=2 sw=2 sts=0 noexpandtab
autocmd Filetype scss setlocal ts=2 sw=2 noexpandtab
autocmd Filetype css setlocal ts=2 sw=2 noexpandtab
autocmd Filetype vim setlocal ts=2 sw=2 sts=0 noexpandtab
autocmd Filetype conf setlocal ts=2 sw=2 sts=0 noexpandtab
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

" Auto-Indent
" imap <C-Return> <CR><CR><C-o>k<Tab>

" folding
set foldmethod=indent
set foldlevel=1
set foldclose=all
set foldlevelstart=20
