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
    
    -- Optional: Keymaps for buffer navigation (like VSCode tabs)
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {})
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {})
    
    -- Close bufferline tab with <leader> and tab
    vim.keymap.set('n', '<leader><Tab>', ':bdelete<CR>', { desc = "Close buffer (bufferline tab)" })
  end
}
