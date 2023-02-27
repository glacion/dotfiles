return {
  "echasnovski/mini.surround",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  opts = {},
  config = function(_, opts)
    require("mini.surround").setup(opts)
  end,
}
