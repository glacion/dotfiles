---@type vim.lsp.Config
return {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.lock" },
  single_file_support = true,
  settings = {
    ["rust-analyzer"] = {
      diagnostics = { styleLints = { enable = true } },
      hover = { actions = { references = { enable = true } } },
      completion = {
        fullFunctionSignatures = { enable = true },
        hideDeprecated = true,
        privateEditable = { enable = true },
        termSearch = { enable = true },
      },
      inlayHints = {
        bindingModeHints = { enable = true },
        closureCaptureHints = { enable = true },
        implicitDrops = { enable = true },
        genericParameterHints = {
          lifetime = { enable = true },
          type = { enable = true },
        },
      },
    },
  },
}
