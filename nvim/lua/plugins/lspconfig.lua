return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp_nvim_lsp = require("cmp_nvim_lsp")

            local capabilities = cmp_nvim_lsp.default_capabilities()

            local on_attach = function(_, bufnr)
                local opts = { noremap = true, silent = true, buffer = bufnr }

                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)       -- Go to definition
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)            -- Hover documentation
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)  -- Go to implementation
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)  -- Rename symbol
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)      -- List references
            end

            local servers = { "lua_ls", "ts_ls", "pyright", "gopls" }

            for _, server in ipairs(servers) do
                lspconfig[server].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' },
                        },
                    },
                },
                on_attach = on_attach,
                capabilities = capabilities,
            })
        end,
    }
}
