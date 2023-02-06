" clevertabs

function! CleverTab(downwards)
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		if (a:downwards == 1)
			return "\<C-N>"
		else
			return "\<C-P>"
	endif
endfunction

inoremap <Tab> <C-R>=CleverTab(1)<CR>
inoremap <S-Tab> <C-R>=CleverTab(0)<CR>
