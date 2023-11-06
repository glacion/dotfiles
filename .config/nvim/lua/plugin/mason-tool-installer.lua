return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    auto_update = true,
    ensure_installed = {
      "ansible-lint",
      "dockerfile-language-server",
      "gopls",
      "luacheck",
      "prettierd",
      "ruff-lsp",
      "rust_analyzer",
      "rustfmt",
      "stylua",
      "terraform-ls",
    },
  },
  dependencies = {
    "williamboman/mason.nvim",
  },
}
