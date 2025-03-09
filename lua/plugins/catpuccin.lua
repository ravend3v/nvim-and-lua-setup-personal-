return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
            transparent_background = true,
            term_colors = true,
            integrations = {
                treesitter = true,
                native_lsp = { enabled = true },
                telescope = true,
                nvimtree = true,
                cmp = true,
                gitsigns = true,
                lualine = true,
            },
        })
        vim.cmd.colorscheme("catppuccin-mocha") -- Set Catppuccin Mocha as the default theme
    end,
}

