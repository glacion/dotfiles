---@type vim.lsp.Config
return {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = {
    "Cargo.lock",
    ".git",
  },
  single_file_support = true,
  settings = {
    ["rust-analyzer"] = {
      completion = {
        fullFunctionSignatures = { enable = true },
        privateEditable = { enable = true },
        termSearch = { enable = true },
        hideDeprecated = true,
      },
      diagnostics = { styleLints = { enable = true } },
      hover = { actions = { references = { enable = true } } },
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
