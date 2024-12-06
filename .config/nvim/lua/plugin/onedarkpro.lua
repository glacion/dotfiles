local color = require("color")

return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "onedark",
    colors = {
      bg = color.background,
      black = color.background,
    },
    options = {
      bold = true,
      cursorline = true,
      italic = true,

      undercurl = true,
      underline = true,
    },
    plugins = {
      all = true,
    },
  },
  config = function(_, opts)
    local onedarkpro = require("onedarkpro")

    onedarkpro.setup(opts)
    onedarkpro.load()
  end,
}
