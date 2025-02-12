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
    { 'nvim-lua/plenary.nvim', commit= '3707cdb1e43f5cea73afb6037e6494e7ce847a66' },
    { import = 'plugins/solarized' },
    { import = 'plugins/hop' },
    { 'lukas-reineke/indent-blankline.nvim', commit = 'db7cbcb40cc00fc5d6074d7569fb37197705e7f6' },
    { 'RRethy/vim-illuminate', commit = 'b5713e6ca3f627b46968386d6d3f24d374d3cb17' },

    -- Cmp
    { 'williamboman/mason.nvim', commit = 'e2f7f9044ec30067bc11800a9e266664b88cda22' },
    { 'williamboman/mason-lspconfig.nvim', commit = 'f75e877f5266e87523eb5a18fcde2081820d087b' },

    -- Cmp plugins
    { 'hrsh7th/nvim-cmp', commit = '12509903a5723a876abd65953109f926f4634c30' },
    { 'hrsh7th/cmp-buffer', commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa' },
    { 'hrsh7th/cmp-path', commit = '91ff86cd9c29299a64f968ebb45846c485725f23' },
    { 'saadparwaiz1/cmp_luasnip', commit = '98d9cb5c2c38532bd9bdb481067b20fea8f32e90' },
    { 'hrsh7th/cmp-nvim-lsp', commit = '99290b3ec1322070bcfb9e846450a46f6efa50f0' },
    { 'hrsh7th/cmp-nvim-lua', commit = 'f12408bdb54c39c23e67cab726264c10db33ada8' },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', commit = 'a840137349fcc35b5ad2c718a9b034b93012fa43' }, -- 'manually run :TSUpdate if it causes problems'
    { 'tree-sitter/tree-sitter-javascript', commit = '6fbef40512dcd9f0a61ce03a4c9ae7597b36ab5c' },
    { 'tree-sitter/tree-sitter-typescript', commit = '75b3874edb2dc714fb1fd77a32013d0f8699989f' },
    { 'tree-sitter/tree-sitter-rust', commit = '2eaf126458a4d6a69401089b6ba78c5e5d6c1ced' },
    { 'ikatyang/tree-sitter-toml', commit = '8bd2056818b21860e3d756b5a58c4f6e05fb744e' },

    -- { import = 'plugins/chatjibbiddy' },
    { 'windwp/nvim-autopairs', commit = '3d02855468f94bf435db41b661b58ec4f48a06b7' }, -- Autopairs, integrates with both cmp and treesitter

    -- Git
    { 'lewis6991/gitsigns.nvim', commit = 'f98c85e7c3d65a51f45863a34feb4849c82f240f' },
    { 'tpope/vim-fugitive', commit = 'b068eaf1e6cbe35d1ac100d435cd7f7b74a5c87d' },

    -- Oldschool Vim / general utilities
    { 'realestninja/nerdcommenter' },
    { 'realestninja/vim-printer' },
    { 'wesQ3/vim-windowswap', commit = '15db3f697aa1fa696d99fcdc920c90cd2cec855e' },
    { 'terryma/vim-expand-region', commit = '966513543de0ddc2d673b5528a056269e7917276' },
    { 'tpope/vim-surround', commit = '3d188ed2113431cf8dac77be61b842acb64433d9' },

    -- Tree
    { 'ryanoasis/vim-devicons', commit = '71f239af28b7214eebb60d4ea5bd040291fb7e33' },
    { 'preservim/nerdtree', commit = '9b465acb2745beb988eff3c1e4aa75f349738230' },

    -- status lines
    { 'akinsho/bufferline.nvim', commit = '655133c3b4c3e5e05ec549b9f8cc2894ac6f51b3' },
    { 'nvim-lualine/lualine.nvim', commit = 'f4f791f67e70d378a754d02da068231d2352e5bc' },

    -- Telescope
    { 'nvim-telescope/telescope.nvim', commit = '415af52339215926d705cccc08145f3782c4d132' },
    { import = 'plugins/telescope_fzf_native' },
    { import = 'plugins/telescope_ag' },
    { 'smartpde/telescope-recent-files', commit = '3a7a1b9c6b52b6ff7938c59f64c87a05e013dff8' },

    -- Snippet
    { 'L3MON4D3/LuaSnip', commit = 'c9b9a22904c97d0eb69ccb9bab76037838326817' },
    { 'rafamadriz/friendly-snippets', commit = 'efff286dd74c22f731cdec26a70b46e5b203c619' },
  },
})
