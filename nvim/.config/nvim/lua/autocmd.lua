vim.cmd[[
autocmd InsertLeave * :silent !fcitx5-remote -c 
autocmd BufCreate *  :silent !fcitx5-remote -c 
autocmd BufEnter *  :silent !fcitx5-remote -c 
autocmd BufLeave *  :silent !fcitx5-remote -c 
]]
