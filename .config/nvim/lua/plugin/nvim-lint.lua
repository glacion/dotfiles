return {
  "mfussenegger/nvim-lint",
  opts = {
    lua = { "luacheck" },
    yaml = { "ansible_lint" },
  },
  config = function(_, opts)
    require("lint").linters_by_ft = opts
  end,
}
