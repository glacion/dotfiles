return {
  "mfussenegger/nvim-lint",
  opts = {
    lua = { "luacheck" },
    yaml = { "ansible_lint" },
    typescript = { "eslint_d" },
    javascript = { "eslint_d" },
  },
  config = function(_, opts)
    require("lint").linters_by_ft = opts
  end,
}
