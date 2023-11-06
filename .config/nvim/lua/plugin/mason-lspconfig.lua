return {
  "williamboman/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function(_, opts)
    local mason = require("mason-lspconfig")
    local lspconfig = require("lspconfig")
    mason.setup(opts)

    mason.setup_handlers({
      function(server)
        lspconfig[server].setup({
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
      end,
    })
  end,
}
