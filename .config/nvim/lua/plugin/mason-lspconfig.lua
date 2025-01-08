local ts_ls_common = {
  inlayHints = {
    includeInlayEnumMemberValueHints = true,
    includeInlayFunctionLikeReturnTypeHints = true,
    includeInlayParameterNameHints = "literals",
    importModuleSpecifierPreference = "non-relative",
  },
}

local settings = {
  typescript = ts_ls_common,
  javascript = ts_ls_common,
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function(_, opts)
    local mason = require("mason-lspconfig")
    local lspconfig = require("lspconfig")
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    mason.setup(opts)
    mason.setup_handlers({
      function(server)
        vim.lsp.inlay_hint.enable()
        lspconfig[server].setup({
          capabilities = capabilities,
          settings = settings,
        })
      end,
    })
  end,
}
