return {
  "echasnovski/mini.ai",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  opts = {

    mappings = {
      -- Main textobject prefixes
      around = "a",
      inside = "i",

      -- Next/last variants
      around_next = "",
      inside_next = "",
      around_last = "",
      inside_last = "",

      -- Move cursor to corresponding edge of `a` textobject
      goto_left = "",
      goto_right = "",
    },
  },
  config = function(_, opts)
    require("mini.ai").setup(opts)
  end,
}
