return {
  "jose-elias-alvarez/null-ls.nvim",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  opts = function()
    local null = require("null-ls")
    return {
      sources = {
        null.builtins.diagnostics.ansiblelint,
        null.builtins.diagnostics.luacheck,
        null.builtins.formatting.prettier,
        null.builtins.formatting.stylua,
      },
    }
  end,
}
