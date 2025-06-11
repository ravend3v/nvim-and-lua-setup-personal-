return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup{
      options = {
        offsets = {
          {
            filetype = "NvimTree", -- This must match your file explorer's filetype
            text = "File Explorer", -- Optional text shown in offset area
            highlight = "Directory", -- Optional highlight group
            text_align = "left" -- "left", "center", or "right"
          }
        }
      }
    }
    -- Optional: Keymaps for buffer navigation
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {})
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {})
  end
}
