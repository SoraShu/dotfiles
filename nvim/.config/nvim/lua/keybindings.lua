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


local hop = require('hop')
local dirs = require('hop.hint').HintDirection

map("", "<leader>gj", function()
    hop.hint_lines_skip_whitespace({ direction = dirs.AFTER_CURSOR })
end, {})

map("", "<leader>gk", function()
    hop.hint_lines_skip_whitespace({ direction = dirs.BEFORE_CURSOR })
end, {})

map("", "<leader>/", function()
    hop.hint_patterns()
end, {})

map("", "<leader>gf", function()
    hop.hint_char2()
end, {})

map("", "<leader>gw", function()
    hop.hint_words()
end, {})

map("", "<leader>gt", function()
    hop.hint_char1({ direction = dirs.AFTER_CURSOR, hint_offset = -1, current_line_only = true })
end, {})

map("", "<leader>gT", function()
    hop.hint_char1({ direction = dirs.BEFORE_CURSOR, hint_offset = -1, current_line_only = true })
end, {})

---map("n", "[b", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})
---map("n", "]b", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})

---map("n", "<leader>bp", ":BufferLinePick<CR>", {noremap = true, silent = true}) 
---map("n", "<leader>bc", ":BufferLinePickClose<CR>", {noremap = true, silent = true}) 

