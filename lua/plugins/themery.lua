return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        -- Dark themes
        {
          name = "Catppuccin Mocha",
          colorscheme = "catppuccin-mocha",
        },
        {
          name = "Catppuccin Macchiato",
          colorscheme = "catppuccin-macchiato",
        },
        {
          name = "Onedark",
          colorscheme = "onedark",
        },
        {
          name = "Catppuccin Latte",
          colorscheme = "catppuccin-latte",
        },
        {
          name = "GitHub Dark",
          colorscheme = "github_dark",
        },
        {
          name = "Gruvbox Dark",
          colorscheme = "gruvbox",
        },
      },
      
      -- Live preview as you navigate
      livePreview = true,
      
      -- Default theme (make sure this matches one of the theme names above)
      defaultTheme = "Onedark",
    })
  end,
}