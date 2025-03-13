return {
    'mg979/vim-visual-multi',
    branch = 'master',
    config = function()
        -- Add your configuration settings here
        vim.g.VM_default_mappings = 0
        vim.g.VM_maps = {
            -- Key bindings
            ['Find Under'] = '<C-d>',
            ['Find Subword Under'] = '<C-d>',
            ['Select All'] = '<C-a>',
            ['Add Cursor Down'] = '<C-j>',
            ['Add Cursor Up'] = '<C-k>',
        }
    end
}