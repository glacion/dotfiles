return {
  "romgrk/barbar.nvim",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-tree.lua",
  },
  opts = {
    animation = true,
    auto_hide = true,
    sidebar_filetypes = { NvimTree = true },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
  end,
  keys = {
    { "<A-,>", "<CMD>BufferPrevious<CR>" },
    { "<A-.>", "<CMD>BufferNext<CR>" },
    { "<A-<>", "<CMD>BufferMovePrevious<CR>" },
    { "<A->>", "<CMD>BufferMoveNext<CR>" },
    { "<C-s>", "<CMD>silent! write<CR>" },
  },
}
