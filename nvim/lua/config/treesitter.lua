require("colorizer").setup()
require("nvim-autopairs").setup()

require("nvim-treesitter.configs").setup({
  ensure_installed = "all",
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = false },
  rainbow = { enable = true },
})
