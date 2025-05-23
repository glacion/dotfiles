---@type vim.lsp.Config
return {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  single_file_support = true,
  root_markers = {
    "ruff.toml",
    "pylock.toml",
    "uv.lock",
    "requirements.txt",
    ".git",
  },
}
