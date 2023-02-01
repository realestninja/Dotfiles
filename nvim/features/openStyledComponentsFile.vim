function OpenStyledComponentsFile()
	" Requirements :
	" foldername: styles
	" styled components file-extension: .styles.js
	let stylesDir = expand('%:p:h') . "/styles/"
	let targetFilename = expand('%:t:r') . ".styles.js"
	let targetFile = stylesDir . targetFilename
  if filereadable(targetFile)
		execute "vsplit" targetFile
	else
		echo "Corresponding File not found\n"
		echo "Create " . targetFile . " ?\n"
		let l:prompt = input("y/N: ")
		if l:prompt == "y" || "Y"
			:silent call mkdir(stylesDir, "p", 0700)
			:silent call writefile([], targetFile)
			:NERDTreeRefreshRoot
			execute "split" targetFile
			:NERDTreeRefreshRoot
		endif
  endif
endfunction

nnoremap <leader>osc :call OpenStyledComponentsFile()<Enter>
