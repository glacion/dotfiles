return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  keys = function()
    local split = require("smart-splits")
    return {
      { "<A-h>", split.move_cursor_left, desc = "Move left" },
      { "<A-j>", split.move_cursor_down, desc = "Move down" },
      { "<A-k>", split.move_cursor_up, desc = "Move up" },
      { "<A-l>", split.move_cursor_right, desc = "Move right" },

      { "<A-H>", split.swap_buf_left, desc = "Swap left" },
      { "<A-J>", split.swap_buf_down, desc = "Swap down" },
      { "<A-K>", split.swap_buf_up, desc = "Swap up" },
      { "<A-L>", split.swap_buf_right, desc = "Swap right" },

      { "<C-A-h>", split.resize_left, desc = "Resize left" },
      { "<C-A-j>", split.resize_down, desc = "Resize down" },
      { "<C-A-k>", split.resize_up, desc = "Resize up" },
      { "<C-A-l>", split.resize_right, desc = "Resize right" },
    }
  end,
  opts = {
    default_amount = 4,
    ignored_filetypes = {},
  },
}
