return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
  opts = {
    auto_update = true,
    ensure_installed = {
      "basedpyright",
      "bash-language-server",
      "biome",
      "bzl",
      "dockerfile-language-server",
      "hadolint",
      "lua-language-server",
      "luacheck",
      "ruff",
      "rust-analyzer",
      "shellcheck",
      "shfmt",
      "stylua",
      "taplo",
      "vtsls",
      "yaml-language-server",
    },
  },
}
