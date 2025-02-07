require 'user.telescope'
require 'user.keymaps'

require 'config.lazy'
require('mason').setup()

-- require "user.gitsigns"
require 'user.bufferline'
require 'user.lualine'
require 'user.solarized'
require 'user.winresizer'
require 'user.nerdtree'
require 'user.windowswap'
require 'user.comment'
require "user.expand-region"
require "user.nerdcommenter"
require "user.autopairs"

vim.cmd('source ~/.config/nvim/vim/open-styled-components-file.vim')
vim.cmd('source ~/.config/nvim/vim/close-inactive-bufs.vim')
vim.cmd('source ~/.config/nvim/vim/zoom.vim')
vim.cmd('source ~/.config/nvim/vim/mappings.vim')
