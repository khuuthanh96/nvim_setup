local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x', opts)
keymap.set("n", "<Leader>p", '"0p', opts)
keymap.set("n", "<Leader>P", '"0P', opts)
keymap.set("v", "<Leader>p", '"0p', opts)
keymap.set("n", "<Leader>c", '"_c', opts)
keymap.set("n", "<Leader>C", '"_C', opts)
keymap.set("v", "<Leader>c", '"_c', opts)
keymap.set("v", "<Leader>C", '"_C', opts)
keymap.set("n", "<Leader>d", '"_d', opts)
keymap.set("n", "<Leader>D", '"_D', opts)
keymap.set("v", "<Leader>d", '"_d', opts)
keymap.set("v", "<Leader>D", '"_D', opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>", opts)
keymap.set("n", "-", "<C-x>", opts)

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d', opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Find and center
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- go setting
-- Navigation commands
keymap.set("n", "<leader>ds", "<plug>(go-def-split)", opts)
keymap.set("n", "<leader>dv", "<plug>(go-def-vertical)", opts)

-- Alternate commands
keymap.set("n", "<leader>ae", "<plug>(go-alternate-edit)", opts)
keymap.set("n", "<leader>av", "<plug>(go-alternate-vertical)", opts)
keymap.set("n", "<leader>aa", ":GoAlternate!<CR>", opts)

-- Common Go commands
-- vim.cmd([[ au FileType go nmap <leader>ct :GoCoverageToggle<CR> ]])
-- vim.cmd([[ au FileType go nmap <leader>c :GoCoverage<CR> ]])
-- vim.cmd([[ au FileType go nmap <leader>t :GoTestFunc<CR> ]])
-- vim.cmd([[ au FileType go nmap <leader><S-t> :GoTestFile<CR> ]])
-- vim.cmd([[ au FileType go nmap gie <plug>(go-iferr) ]])
--
keymap.set("n", "gfs", "<plug>(go-fill-struct)", opts)
keymap.set("n", "gat", "<plug>(go-add-tags)", opts)

-- LSP commands
keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
keymap.set("n", "<leader>r", ":LspRestart<CR>", opts)

-- Tmux new session
keymap.set("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>", opts)

-- Fix jumplist by unmaping <Tab>
vim.api.nvim_del_keymap("n", "<Tab>")
-- vim.api.nvim_del_keymap("i", "<Tab>")
