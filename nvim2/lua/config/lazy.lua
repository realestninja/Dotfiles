-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = 'plugins/solarized' },
    { 'williamboman/mason.nvim' },
    -- { import = "plugins/chatjibbidy" },
    { 'numToStr/Comment.nvim' },

    -- Tree
    { 'ryanoasis/vim-devicons' },
    { 'preservim/nerdtree' },

    -- status lines
    { 'akinsho/bufferline.nvim' },
    { 'nvim-lualine/lualine.nvim' },

    -- telescope
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
    { 'kelly-lin/telescope-ag', requires = { { 'nvim-telescope/telescope.nvim' } } },
    { 'smartpde/telescope-recent-files' },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { 'solarized_dark' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
