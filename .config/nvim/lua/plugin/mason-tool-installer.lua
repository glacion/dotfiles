return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    auto_update = true,
    ensure_installed = {
      "dockerfile-language-server",
      "eslint_d",
      "hadolint",
      "hclfmt",
      "gopls",
      "jedi-language-server",
      "prettierd",
      "ruff-lsp",
      "stylua",
      "terraform-ls",
      "tflint",
      "tfsec",
      "typescript-language-server",
    },
  },
  dependencies = {
    "williamboman/mason.nvim",
  },
}
