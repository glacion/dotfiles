return {
  "HiPhish/rainbow-delimiters.nvim",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  opts = {},
  config = function(_, opts)
    require("rainbow-delimiters.setup").setup(opts)
  end,
}
