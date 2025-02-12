require "user.lsp.mason"
require("user.lsp.handlers").setup()

local nvim_lsp = require('lspconfig')

local filetypes = {
  javascript = {'stylelint'},
  javascriptreact = {'stylelint'},
}

local linters = {
  stylelint = {
    sourceName = 'stylelint',
    command = 'stylelint',
    args = {'--formatter', 'compact', '%filepath'},
    rootPatterns = {'.stylelintrc'},
    debounce = 100,
    formatPattern = {
      [[: line (\d+), col (\d+), (warning|error) - (.+?) \((.+)\)]],
      {
        line = 1,
        column = 2,
        security = 3,
        message = {4, ' [', 5, ']'},
      },
    },
    securities = {
      warning = 'warning',
      error = 'error',
    },
  },
}

local formatters = {
  stylelint = {
    command = 'stylelint',
    args = {'--fix', '--stdin', '--stdin-filename', '%filepath'},
  }
}

local formatFiletypes = {
  javascript = {'stylelint'},
  javascriptreact = {'stylelint'},
}

nvim_lsp.diagnosticls.setup {
  filetypes = vim.tbl_keys(filetypes),
  init_options = {
    filetypes = filetypes,
    linters = linters,
    formatters = formatters,
    formatFiletypes = formatFiletypes,
  }
}

nvim_lsp.denols.setup {
  on_attach = function(client, bufnr)
    nvim_lsp.util.on_attach(client, bufnr)
    -- Disable TypeScript server if it's causing issues
    if client.name == "tsserver" then
      client.stop()
    end
  end,
  root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
  init_options = {
    lint = true,
    unstable = true,
    suggest = {
      imports = {
        hosts = {
          ["https://deno.land"] = true,
          ["https://cdn.nest.land"] = true,
          ["https://crux.land"] = true
        }
      }
    }
  }
}

