return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope-fzf-native.nvim",
    "folke/noice.nvim",
  },
  opts = {},
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("noice")
  end,
  cmd = "Telescope",
  keys = {
    {
      "<A-b>",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Telescope buffers",
    },
    {
      "<A-f>",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Telescope files",
    },
    {
      "<A-g>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Telescope live grep",
    },
  },
}
