-- Set our leader keybinding to space
-- Anywhere you see <leader> in a keymapping specifies the space key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remove search highlights after searching
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

-- Exit Vim's terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- OPTIONAL: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Better window navigation
vim.keymap.set("n", "<leader><Left>", ":wincmd h<cr>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader><Right>", ":wincmd l<cr>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader><Down>", ":wincmd j<cr>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader><Up>", ":wincmd k<cr>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>tc", ":tabnew<cr>", {desc = "[T]ab [C]reat New"})
vim.keymap.set("n", "<leader>tn", ":tabnext<cr>", {desc = "[T]ab [N]ext"})
vim.keymap.set("n", "<leader>tp", ":tabprevious<cr>", {desc = "[T]ab [P]revious"})
vim.keymap.set("n", "<leader>td", ":tabclose<CR>", {desc = "[T]ab [D]elete"})

-- Easily split windows
vim.keymap.set("n", "<leader>wv", ":vsplit<cr>", { desc = "[W]indow Split [V]ertical" })
vim.keymap.set("n", "<leader>wh", ":split<cr>", { desc = "[W]indow Split [H]orizontal" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left in visual mode" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right in visual mode" })

-- Undo
vim.keymap.set("n", 'C-z', 'u', { noremap = true, silent = true, desc = "Undo" })

-- Copy to system clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipboard" })

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })

-- Find in current file with fuzzy search and preview
vim.keymap.set("n", "<leader>fs", function()
  require('telescope.builtin').current_buffer_fuzzy_find()
end, { desc = "[F]ind in current file [S]earch" })
