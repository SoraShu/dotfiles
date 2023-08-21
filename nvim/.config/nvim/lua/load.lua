---- load bufferline when open more then one buffer
if #vim.api.nvim_list_bufs() > 1 then
    require("lazy").load({plugins = 'bufferline.nvim'})
end
