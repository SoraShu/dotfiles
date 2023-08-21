---- bootstrap lazy.nvim ----
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


if not vim.g.vscode then
    require("lazy").setup({
        {import = "plugspec"}
    })
else
    require("lazy").setup({
        {import = 'plugspec.hop'}
    })
end


--   require('config.nord'),
--   require('config.lualine'),
--   require('config.bufferline'),
--   require('config.hop'),
--   require('config.telescope'),
--   require('config.toggleterm'),
