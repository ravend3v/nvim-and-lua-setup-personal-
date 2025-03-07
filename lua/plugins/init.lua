return {
    -- Add your plugins here
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } },
    { "kyazdani42/nvim-tree.lua" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "jose-elias-alvarez/null-ls.nvim" }, -- Add null-ls for prettier integration
  }