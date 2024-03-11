return {
  "romgrk/barbar.nvim",
  event = { 
    "BufReadPost", 
    "BufNewFile",
  },
  dependencies = {
    "nvim-tree/nvim-tree.lua",
  },
  opts = {
    animation = true,
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
  end,
  keys = {
    {
      "<C-s>",
      "<CMD>silent! write<CR>",
      desc = "Save buffer",
    },
    {
      "<A-p>",
      "<CMD>BufferPick<CR>",
      desc = "Buffer picker",
    },
    {
      "<A-w>",
      "<CMD>BufferClose<CR>",
      desc = "Close buffer",
    },
    {
      "<A-,>",
      "<CMD>BufferPrevious<CR>",
      desc = "Previous buffer",
    },
    {
      "<A-.>",
      "<CMD>BufferNext<CR>",
      desc = "Next buffer",
    },
  },
}
