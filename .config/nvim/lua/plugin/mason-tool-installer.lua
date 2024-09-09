return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    auto_update = true,
    ensure_installed = {
      "dockerfile-language-server",
      "eslint_d",
      "jedi-language-server",
      "prettierd",
      "ruff-lsp",
      "stylua",
      "terraform-ls",
      "typescript-language-server",
    },
  },
  dependencies = {
    "williamboman/mason.nvim",
  },
}
