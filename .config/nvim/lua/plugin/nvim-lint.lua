return {
  "mfussenegger/nvim-lint",
  opts = {
    dockerfile = { "hadolint" },
    lua = { "luacheck" },
  },
  config = function(_, opts)
    local lint = require("lint")
    lint.linters_by_ft = opts
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
