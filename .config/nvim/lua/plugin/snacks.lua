return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    dim = { enabled = true },
    image = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    {
      "<A-f>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Find Files",
    },
    {
      "<A-g>",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>g",
      function()
        Snacks.lazygit()
      end,
      desc = "LazyGit",
    },
  },
}
