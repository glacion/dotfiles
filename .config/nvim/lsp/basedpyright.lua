---@type vim.lsp.Config
return {
  cmd = { "basedpyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = {
    "pylock.toml",
    "uv.lock",
    "requirements.txt",
    ".git",
  },
  single_file_support = true,
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        ignore = { "*" }, -- ruff does this
        typeCheckingMode = "off", -- ruff does this
        useLibraryCodeForTypes = true,
      },
    },
  },
}
