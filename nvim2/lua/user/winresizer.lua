-- Function to enter resize mode
function enter_resize_mode()
  local opts = { noremap = true, silent = true }

  -- Define keymaps for resizing
  vim.api.nvim_set_keymap('n', 'h', '<C-w>5>', opts)
  vim.api.nvim_set_keymap('n', 'j', '<C-w>3-', opts)
  vim.api.nvim_set_keymap('n', 'k', '<C-w>3+', opts)
  vim.api.nvim_set_keymap('n', 'l', '<C-w>5<', opts)

  -- Exit resize mode
  vim.api.nvim_set_keymap('n', '<Esc>', ':lua exit_resize_mode()<CR>', opts)

  -- Print status message
  vim.api.nvim_echo({{'Resize', 'WarningMsg'}}, false, {})
  -- to do: ^ use luabar instead
end

-- Function to exit resize mode
function exit_resize_mode()
  -- Unmap keys
  vim.api.nvim_del_keymap('n', 'h')
  vim.api.nvim_del_keymap('n', 'j')
  vim.api.nvim_del_keymap('n', 'k')
  vim.api.nvim_del_keymap('n', 'l')
  vim.api.nvim_del_keymap('n', '<Esc>')
end

-- Keymap to enter resize mode
vim.api.nvim_set_keymap('n', '<Leader>r', ':lua enter_resize_mode()<CR>', { noremap = true, silent = true })
