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

    -- cmp
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter' },
    -- 'manually run :TSUpdate if it causes problems'
    { 'tree-sitter/tree-sitter-javascript' },
    { 'tree-sitter/tree-sitter-typescript' },
    { 'tree-sitter/tree-sitter-rust' },
    { 'ikatyang/tree-sitter-toml' },

    -- { import = "plugins/chatjibbidy" },
    -- { 'numToStr/Comment.nvim' },
    -- { "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" }, -- Autopairs, integrates with both cmp and treesitter

    -- Git
    { 'lewis6991/gitsigns.nvim', commit = 'f98c85e7c3d65a51f45863a34feb4849c82f240f' },
    { 'tpope/vim-fugitive' },

    -- oldschool vim / general utilities
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

    -- cmp plugins
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },

    -- telescope
    { 'nvim-telescope/telescope.nvim' },
    { import = 'plugins/telescope_fzf_native' },
    { import = 'plugins/telescope_ag' },
    { 'smartpde/telescope-recent-files' },
  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { 'zaibatsu' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
