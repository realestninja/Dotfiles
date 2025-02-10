return {
  'maxmx03/solarized.nvim',
  commit = 'c0dfe1cbfabd93b546baf5f1408f5df7e02e2050',
  lazy = false,
  priority = 1000,
  ---@type solarized.config
  opts = {},
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = 'light'
    require('solarized').setup(opts)
    vim.cmd.colorscheme 'solarized'
  end,
}
