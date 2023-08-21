return {
    'phaazon/hop.nvim',
    branch = 'v2',

    keys = {
        {"<leader>gj", mode={'n', 'v'}},
        {"<leader>gk", mode={'n', 'v'}},
        {"<leader>/", mode={'n', 'v'}},
        {"<leader>gf"}, mode={'n', 'v'},
        {"<leader>gw"}, mode={'n', 'v'},
        {"<leader>gt"}, mode={'n', 'v'},
        {"<leader>gT"}, mode={'n', 'v'},

    },

    config = function()
        require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
        local map = vim.keymap.set
        local hop = require('hop')
        local after = require('hop.hint').HintDirection.AFTER_CURSOR
        local before = require('hop.hint').HintDirection.BEFORE_CURSOR

        map("", "<leader>gj", function()
            hop.hint_lines_skip_whitespace(
                { direction = after })
        end, {})

        map("", "<leader>gk", function()
            hop.hint_lines_skip_whitespace(
                { direction = before })
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
            hop.hint_char1({
                direction = after,
                hint_offset = -1,
                current_line_only = true })
        end, {})

        map("", "<leader>gT", function()
            hop.hint_char1({
                direction = before,
                hint_offset = -1,
                current_line_only = true })
        end, {})

    end
}
