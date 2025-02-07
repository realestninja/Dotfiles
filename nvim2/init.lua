require 'user.telescope'
require 'user.keymaps'

require 'config.lazy'
require('mason').setup()

require 'user.bufferline'
require 'user.lualine'
require 'user.solarized'
require 'user.winresizer'
require 'user.nerdtree'
require 'user.windowswap'
require 'user.comment'

vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/open-styled-components-file.vim')
vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/close-inactive-bufs.vim')
vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/zoom.vim')
vim.cmd('source '..vim.fn.expand('%:p:h')..'/nvim/vim/mappings.vim')
