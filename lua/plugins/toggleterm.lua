-- Add toggleterm plugin
return {
    'akinsho/toggleterm.nvim',
    config = function()
        -- Enable true color support
        vim.o.termguicolors = true

        -- Define a custom highlight group with a darker background
        vim.cmd [[
            highlight DarkBackground guibg=#1e1e1e
        ]]

        require("toggleterm").setup{
            -- Add configuration here
            size = 20,
            open_mapping = [[<c-\>]],
            hide_numbers = true, -- hide the number column in toggleterm buffers
            shade_filetypes = {},
            shade_terminals = false,
            shading_factor = '1',
            start_in_insert = true,
            insert_mappings = true, -- whether or not the open mapping applies in insert mode
            persist_size = true,
            direction = 'horizontal',
            close_on_exit = true, -- close the terminal window when the process exits
            shell = 'bash', -- change the default shell
            float_opts = {
                border = 'curved',
                winblend = 0,
                highlights = {
                    border = "Normal",
                    background = "DarkBackground", -- Use the custom highlight group
                }
            }
        }
    end
}
