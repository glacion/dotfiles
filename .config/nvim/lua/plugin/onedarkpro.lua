return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "onedark",
    colors = require("color"),
    options = {
      bold = true,
      cursorline = true,
      italic = true,
      undercurl = true,
      underline = true,
    },
  },
  config = function(_, opts)
    local onedarkpro = require("onedarkpro")
    onedarkpro.setup(opts)
    onedarkpro.load()
  end,
}
