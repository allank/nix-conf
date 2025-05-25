-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- UI options
vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 10

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Indentation
vim.opt.breakindent = true

-- File handling
vim.opt.undofile = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.inccommand = "split"

-- Timing
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Visual indicators
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }