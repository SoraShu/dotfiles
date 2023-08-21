return {
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
      -- load the colorscheme here
      vim.g.nord_italic = false
      vim.g.nord_contrast = true
      vim.opt.termguicolors = true
      vim.cmd([[colorscheme nord]])
    end,
}
