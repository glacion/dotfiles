---@type vim.lsp.Config
return {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = {
    "ruff.toml",
    "pylock.toml",
    "uv.lock",
    "requirements.txt",
    ".git",
  },
  single_file_support = true,
}
