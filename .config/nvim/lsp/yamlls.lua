---@type vim.lsp.Config
return {
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml" },
  root_dir = ".",
  single_file_support = true,
  settings = {
    redhat = { telemetry = { enabled = false } },
    yaml = {
      completion = true,
      hover = true,
      schemaStore = { enable = true },
      validate = true,
      format = {
        enable = true,
        singleQuote = false,
        bracketSpacing = false,
        printWidth = 120,
      },
    },
  },
}
