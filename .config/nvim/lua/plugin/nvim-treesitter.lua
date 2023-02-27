return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
    "mrjones2014/nvim-ts-rainbow",
  },
  opts = {
    ensure_installed = "all",
    highlight = {
      enable = true,
    },
    rainbow = {
      enable = true,
      extended_mode = true,
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
