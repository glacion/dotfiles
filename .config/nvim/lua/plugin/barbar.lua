return {
  "romgrk/barbar.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    "nvim-tree/nvim-tree.lua",
  },
  opts = {
    animation = true,
    icon_separator_active = "|",
    icon_separator_inactive = "|",
  },
  config = function(_, opts)
    require("bufferline").setup(opts)

    local events = require("nvim-tree.events")
    local bufferline = require("bufferline.api")

    events.subscribe("Resize", function(size)
      bufferline.set_offset(size, "Files")
    end)

    events.subscribe("TreeClose", function()
      bufferline.set_offset(0)
    end)
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
