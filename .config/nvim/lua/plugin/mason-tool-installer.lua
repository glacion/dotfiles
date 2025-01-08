return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    auto_update = true,
    ensure_installed = {
      "dockerfile-language-server",
      "eslint",
      "gopls",
      "hadolint",
      "jedi-language-server",
      "prettier",
      "ruff",
      "rust-analyzer",
      "stylua",
      "typescript-language-server",
    },
  },
  dependencies = {
    "williamboman/mason.nvim",
  },
}
