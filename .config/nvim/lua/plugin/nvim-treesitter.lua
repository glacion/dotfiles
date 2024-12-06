return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  dependencies = {
    "HiPhish/rainbow-delimiters.nvim",
  },
  opts = {
    ensure_installed = "all",
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
