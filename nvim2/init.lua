require 'user.keymaps'
require 'config.lazy'

require 'user.solarized'

vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/open-styled-components-file.vim')
vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/close-inactive-bufs.vim')
vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/zoom.vim')
vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/mappings.vim')
