vim.g.encoding = "utf-8"
vim.o.termencoding = "utf-8"
vim.o.syntax = "enable"
vim.o.relativenumber = true
vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = true
vim.o.ruler = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.smartcase = true

-- 4 space tab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 4 space shift
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.o.scrolloff = 5
vim.o.sidescrolloff = 5

vim.o.smartindent = true
vim.o.history = 500

vim.o.list = true

if vim.g.neovide then
    vim.o.guifont = "CaskaydiaCove Nerd Font:h16"
    vim.g.neovide_cursor_trail_size = 0
end

