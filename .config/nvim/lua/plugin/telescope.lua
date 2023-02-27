local telescope = require("telescope.builtin")

return {
  "nvim-telescope/telescope.nvim",
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
    telescope.load_extension("fzf")
    telescope.load_extension("noice")
  end,
  keys = {
    {
      "<A-b>",
      telescope.buffers,
      desc = "Telescope buffers",
    },
    {
      "<A-f>",
      telescope.find_files,
      desc = "Telescope files",
    },
    {
      "<A-g>",
      telescope.live_grep,
      desc = "Telescope live grep",
    },
    {
      "<A-'>",
      telescope.registers,
      desc = "Telescope registers",
    },
  },
}
