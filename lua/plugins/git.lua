return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            local icons = require("config.icons")

            -- Define highlight links to avoid deprecation warnings
            vim.api.nvim_set_hl(0, "GitSignsAddLn", { link = "DiffAdd" })
            vim.api.nvim_set_hl(0, "GitSignsAddNr", { link = "DiffAdd" })
            vim.api.nvim_set_hl(0, "GitSignsChangeLn", { link = "DiffChange" })
            vim.api.nvim_set_hl(0, "GitSignsChangeNr", { link = "DiffChange" })
            vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { link = "DiffDelete" })
            vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { link = "DiffDelete" })
            vim.api.nvim_set_hl(0, "GitSignsTopdeleteLn", { link = "GitSignsDeleteLn" })
            vim.api.nvim_set_hl(0, "GitSignsTopdeleteNr", { link = "GitSignsDeleteNr" })
            vim.api.nvim_set_hl(0, "GitSignsChangedeleteLn", { link = "GitSignsChangeLn" })
            vim.api.nvim_set_hl(0, "GitSignsChangedeleteNr", { link = "GitSignsChangeNr" })

            -- Setup GitSigns
            require("gitsigns").setup({
                signs = {
                    add = {
                        text = icons.ui.BoldLineMiddle,
                    },
                    change = {
                        text = icons.ui.BoldLineDashedMiddle,
                    },
                    delete = {
                        text = icons.ui.TriangleShortArrowRight,
                    },
                    topdelete = {
                        text = icons.ui.TriangleShortArrowRight,
                    },
                    changedelete = {
                        text = icons.ui.BoldLineMiddle,
                    },
                },
                watch_gitdir = {
                    interval = 1000,
                    follow_files = true,
                },
                attach_to_untracked = true,
                current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
                update_debounce = 200,
                max_file_length = 40000,
                preview_config = {
                    border = "rounded",
                    style = "minimal",
                    relative = "cursor",
                    row = 0,
                    col = 1,
                },
            })

            -- Git Preview Hunk Keybinding
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "[G]it Preview [H]unk" })
        end,
    },
}

