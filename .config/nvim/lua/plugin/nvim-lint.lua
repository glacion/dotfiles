return {
  "mfussenegger/nvim-lint",
  opts = {
    lua = { "luacheck" },
    typescript = { "eslint" },
    javascript = { "eslint" },
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
