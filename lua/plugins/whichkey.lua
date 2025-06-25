return {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
        local which_key = require('which-key')
        which_key.setup()

        -- Updated registration using the new spec
        which_key.add({
            { "<leader>/", group = "Comments" },
            { "<leader>J", group = "[J]ava" },
            { "<leader>c", group = "[C]ode" },
            { "<leader>d", group = "[D]ebug" },
            { "<leader>e", group = "[E]xplorer" },
            { "<leader>f", group = "[F]ind" },
            { "<leader>g", group = "[G]it" },
            { "<leader>t", group = "[T]ab" },
            { "<leader>th", "<cmd>Themery<cr>", desc = "Theme selector" },
            { "<leader>w", group = "[W]indow" },
        })
    end
}