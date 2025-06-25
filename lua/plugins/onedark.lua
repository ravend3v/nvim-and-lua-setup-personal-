return {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
        require("onedark").setup({
            style = "dark", -- or "darker", "cool", "deep", "warm", "warmer", "light"
            transparent = true, -- Enable transparency
        })
        vim.cmd.colorscheme("onedark")
    end,
}