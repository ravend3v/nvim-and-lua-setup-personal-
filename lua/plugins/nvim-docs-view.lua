-- Temporarily disabled due to deprecated function calls
-- Will be re-enabled when plugin is updated
-- return {
--     "amrbashir/nvim-docs-view",
--     lazy = true,
--     cmd = { "DocsViewToggle", "DocsViewUpdate" },
--     opts = {
--         position = "right", -- right | left | top | bottom
--         width = 60,         -- Width when position is right or left
--         height = 10,        -- Height when position is top or bottom
--         update_mode = "auto" -- auto | manual
--     },
--     keys = {
--         { "<leader>dv", "<cmd>DocsViewToggle<cr>", desc = "Toggle Docs View" },
--         { "<leader>du", "<cmd>DocsViewUpdate<cr>", desc = "Update Docs View" },
--     },
-- }

-- Alternative: Use built-in LSP hover or trouble.nvim for documentation
return {}
