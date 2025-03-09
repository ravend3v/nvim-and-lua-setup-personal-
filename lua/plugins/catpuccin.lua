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
                -- ⚠️ Remove Lualine from here and set it up separately
            },
        })

        -- Apply the colorscheme
        vim.cmd.colorscheme("catppuccin-mocha")
    end,
}
