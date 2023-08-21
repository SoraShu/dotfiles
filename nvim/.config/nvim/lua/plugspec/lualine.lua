return {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nord.nvim',
    lazy = false,
    config = function()
        require('lualine').setup {
            options = {
            theme = 'nord',
            icons_enabled = true,
            },

            tabline = {},
            winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },

            inactive_winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            }
        }
    end
}
