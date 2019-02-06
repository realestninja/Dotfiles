" Center cursorline horizontally
" augroup VCenterCursor
	" au!
	" au BufEnter,WinEnter,WinNew,VimResized *,*.*
				" \ let &scrolloff=winheight(win_getid())/2
" augroup END
