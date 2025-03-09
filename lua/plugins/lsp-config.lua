return {
    -- Mason setup
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded"
                }
            })
        end,
    },
    -- Mason LSP config
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    -- Mason DAP setup
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            require("mason-nvim-dap").setup({
                ensure_installed = { "java-debug-adapter", "java-test" },
            })
        end,
    },
    -- Java language server setup
    {
        "mfussenegger/nvim-jdtls",
        dependencies = {
            "mfussenegger/nvim-dap",
            "ray-x/lsp_signature.nvim"
        },
    },
    -- LSP signature setup
    {
        "ray-x/lsp_signature.nvim",
        config = function()
            require "lsp_signature".setup()
        end
    },
    -- LSP config setup
    {
        "neovim/nvim-lspconfig",
        config = function()
            local icons = require("config.icons")
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Language servers to setup
            local servers = { "lua_ls", "ts_ls", "cssls" }

            -- Setup each language server
            for _, server in ipairs(servers) do
                lspconfig[server].setup({
                    capabilities = capabilities,
                })
            end

            -- Diagnostic configuration
            local default_diagnostic_config = {
                signs = {
                    active = true,
                    values = {
                        { name = "DiagnosticSignError", text = icons.diagnostics.Error },
                        { name = "DiagnosticSignWarn",  text = icons.diagnostics.Warning },
                        { name = "DiagnosticSignHint",  text = icons.diagnostics.Hint },
                        { name = "DiagnosticSignInfo",  text = icons.diagnostics.Information },
                    },
                },
                virtual_text = false,
                update_in_insert = false,
                underline = true,
                severity_sort = true,
                float = {
                    focusable = true,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            }

            vim.diagnostic.config(default_diagnostic_config)

            for _, sign in ipairs(vim.tbl_get(vim.diagnostic.config(), "signs", "values") or {}) do
                vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = sign.name })
            end

            -- Key mappings for LSP
            local keymap_opts = { desc = "[C]ode [H]over Documentation" }
            vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, keymap_opts)
            vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "[C]ode Goto [D]efinition" })
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
            vim.keymap.set("n", "<leader>cr", require("telescope.builtin").lsp_references, { desc = "[C]ode Goto [R]eferences" })
            vim.keymap.set("n", "<leader>ci", require("telescope.builtin").lsp_implementations, { desc = "[C]ode Goto [I]mplementations" })
            vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })
            vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "[C]ode Goto [D]eclaration" })
        end,
    },
}