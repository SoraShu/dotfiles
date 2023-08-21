local map = vim.keymap.set
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>x", "\"+", {})
map("v", "<leader>x", "\"+", {})

map("n", "<C-/>", ":noh<CR>", {silent = true})
map("n", "<leader>h", "<C-w>h", {noremap = true, silent = true})
map("n", "<leader>l", "<C-w>l", {noremap = true, silent = true})
map("n", "<leader>j", "<C-w>j", {noremap = true, silent = true})
map("n", "<leader>k", "<C-w>k", {noremap = true, silent = true})

