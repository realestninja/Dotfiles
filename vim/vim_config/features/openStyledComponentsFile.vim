function OpenStyledComponentsFile()
	" Requirements :
	" foldername: styles
	" styled components file-extension: .styles.js
	let stylesDir = expand('%:p:h') . "/styles/"
	let targetFilename = expand('%:t:r') . ".styles.js"
	let targetFile = stylesDir . targetFilename
  if filereadable(targetFile)
		execute "split" targetFile
  endif
endfunction

nnoremap <leader>osc :call OpenStyledComponentsFile()<Enter>
