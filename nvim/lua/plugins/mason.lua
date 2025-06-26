return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup({
      automatic_installation = true,
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- This makes sure that language servers installed by Mason are automatically
    -- configured by nvim-lspconfig.
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
	"pyright",
	"clangd",
	"rust_analyzer",
	"gopls",
	"html",
	"jsonls"
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      },
    })
  end,
}
