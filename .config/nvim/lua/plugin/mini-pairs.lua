return {
  "echasnovski/mini.pairs",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  opts = {},
  config = function(_, opts)
    require("mini.pairs").setup(opts)
  end,
}
