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
    -- General
    { 'nvim-lua/plenary.nvim' },
    { import = 'plugins/solarized' },
    { import = 'plugins/hop' },
    { 'lukas-reineke/indent-blankline.nvim', commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6" },
    { 'RRethy/vim-illuminate' },

    -- Cmp
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Cmp plugins
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter' },
    -- 'manually run :TSUpdate if it causes problems'
    { 'tree-sitter/tree-sitter-javascript' },
    { 'tree-sitter/tree-sitter-typescript' },
    { 'tree-sitter/tree-sitter-rust' },
    { 'ikatyang/tree-sitter-toml' },

    -- { import = "plugins/chatjibbidy" },
    -- { 'numToStr/Comment.nvim' },
    { "windwp/nvim-autopairs" }, -- Autopairs, integrates with both cmp and treesitter

    -- Git
    { 'lewis6991/gitsigns.nvim', commit = 'f98c85e7c3d65a51f45863a34feb4849c82f240f' },
    { 'tpope/vim-fugitive' },

    -- Oldschool Vim / general utilities
    { "realestninja/nerdcommenter" },
    { "realestninja/vim-printer" },
    { 'simeji/winresizer' },
    { 'wesQ3/vim-windowswap' },
    { 'terryma/vim-expand-region' },
    { 'tpope/vim-surround' },

    -- Tree
    { 'ryanoasis/vim-devicons' },
    { 'preservim/nerdtree' },

    -- status lines
    { 'akinsho/bufferline.nvim' },
    { 'nvim-lualine/lualine.nvim' },

    -- Telescope
    { 'nvim-telescope/telescope.nvim' },
    { import = 'plugins/telescope_fzf_native' },
    { import = 'plugins/telescope_ag' },
    { 'smartpde/telescope-recent-files' },

    -- Snippet
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },
  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { 'zaibatsu' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
