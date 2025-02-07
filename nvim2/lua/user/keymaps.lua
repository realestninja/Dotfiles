-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local silent = { silent = true }
local noremap = { noremap = true}
local silent_and_no_remap = { silent = true, noremap = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", silent)
vim.g.mapleader = ","

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", silent)
keymap("n", "<C-j>", "<C-w>j", silent)
keymap("n", "<C-k>", "<C-w>k", silent)
keymap("n", "<C-l>", "<C-w>l", silent)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", silent)
keymap("n", "<C-Down>", ":resize +2<CR>", silent)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", silent)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", silent)

-- Close buffers keep split
-- keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)
-- keymap("n", "<leader><Backspace>", "<cmd>Bdelete!<CR>", noremap)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", silent)
keymap("v", ">", ">gv", silent)

-- Plugins --

-- Tree / NvimTree / CHADTree
-- keymap("n", "<C-n>", ":NvimTreeToggle<CR>")
-- keymap("n", "<leader>n", ":NvimTreeFindFile<CR>")
-- keymap("n", "<C-n>", ":NERDTreeToggle<CR>")
-- keymap("n", "<leader>n", ":NERDTreeFind<CR>")
-- keymap("n", "<leader>N", ":NERDTreeFocus<CR>")

-- Telescope / Search
-- local tb = require('telescope.builtin')
-- keymap("n", "<Space>p", ":Telescope find_files hidden=true<CR>", silent)
-- keymap("n", "<Space>o", [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]], silent_and_no_remap)
-- keymap("n", "<leader>s", ":Telescope live_grep<CR>", silent)
-- -- keymap("n", "<leader>fp", ":Telescope projects<CR>", silent)
-- keymap("n", "<Space><Space>", ":Telescope buffers<CR>", silent)
-- keymap("v", "<leader>s", '"hy:Ag <C-r>h<Enter>', silent)
-- keymap('v', '<leader>S', function()
	-- local text = vim.getVisualSelection()
	-- tb.current_buffer_fuzzy_find({ default_text = text })
-- end, silent)
-- to do ignore yarn lock

-- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- DAP
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", silent)
-- keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", silent)
-- keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", silent)
-- keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", silent)
-- keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", silent)
-- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", silent)
-- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", silent)
-- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", silent)
-- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", silent)

-- -- Lsp
-- keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", silent)

-- -- Toggle highlight search
-- keymap("n", "<leader>hs", ":set hlsearch!<Enter>", noremap)
-- -- Clear highlights
-- keymap("n", "<leader>hc", "<cmd>nohlsearch<CR>", noremap)
-- -- Highlight + search current word
-- vim.api.nvim_set_keymap('n', '*', [[:let @/ = '<c-r><c-w>' | set hlsearch<cr>]], noremap)

-- -- Change layout -> vertical/horizontal
-- keymap("n", "<leader>lb", "<C-w>t<C-w>K<CR>", silent_and_no_remap)
-- keymap("n", "<leader>lv", "<C-w>t<C-w>H<CR>", silent_and_no_remap)

-- -- window swap plugin
-- keymap("n", "<leader><Space>", ":call WindowSwap#EasyWindowSwap()<CR>", silent)

-- -- Keep default CR behaviour for quickfix list
-- vim.api.nvim_command("autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>")

-- -- ai fuck shit
-- keymap("n", "<Space>ki", ":ChatGPT<Enter>", noremap)

-- keymap("n", "<Space>kk", ":ChatGPTEditWithInstructions<Enter>", noremap)
-- keymap("v", "<Space>kk", ":<Backspace><Backspace><Backspace><Backspace><Backspace>ChatGPTEditWithInstructions<Enter>", noremap)

-- keymap("n", "<Space>ka", ":ChatGPTActAs<Enter>", noremap)

-- keymap("n", "<Space>kr", ":ChatGPTRun<Space>", noremap)
-- keymap("v", "<Space>kr", ":ChatGPTRun<Space>", noremap)
-- keymap("v", "<Space>ko", ":ChatGPTRun<Space>optimize_code<Enter>", noremap)
-- keymap("v", "<Space>ke", ":ChatGPTRun<Space>explain_code<Enter>", noremap)
