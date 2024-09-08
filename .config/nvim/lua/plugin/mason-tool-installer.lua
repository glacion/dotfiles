return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    auto_update = true,
    ensure_installed = {
      "ansible-lint",
      "dockerfile-language-server",
      "eslint_d",
      "gopls",
      "jedi-language-server",
      "luacheck",
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
