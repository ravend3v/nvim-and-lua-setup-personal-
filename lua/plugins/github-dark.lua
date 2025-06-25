return {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    config = function()
        require("github-theme").setup({
            options = {
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    functions = "italic,bold",
                    variables = "NONE"
                }
            }
        })
        -- Uncomment the next line to enable GitHub Dark as your colorscheme
        -- vim.cmd.colorscheme("github_dark")
    end,
}