-- Clear search highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Buffer management
vim.keymap.set("n", "<Tab>", "<cmd>bn<CR>", { desc = "Move to next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bp<CR>", { desc = "Move to previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close current buffer" })

-- Text manipulation
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move selected lines up" })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move selected lines down" })
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Command mode navigation
vim.keymap.set("c", "<C-a>", "<Home>", { desc = "Move to start of line" })
vim.keymap.set("c", "<C-e>", "<End>", { desc = "Move to end of line" })
vim.keymap.set("c", "<C-f>", "<C-R>=expand('%:p')<CR>", { desc = "Insert current file path" })