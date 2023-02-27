local colors = require("color")

local onedark = {
  normal = {
    a = {
      fg = colors.background,
      bg = colors.yellow,
      gui = "bold",
    },
    b = {
      fg = colors.foreground,
      bg = colors.background_light,
      gui = "bold",
    },
    c = { fg = colors.foreground, bg = colors.background, gui = "bold" },
    x = { fg = colors.foreground, bg = colors.background, gui = "bold" },
    y = { fg = colors.foreground, bg = colors.background_light, gui = "bold" },
    z = { fg = colors.foreground, bg = colors.background_light, gui = "bold" },
  },
  command = {
    a = { fg = colors.background, bg = colors.yellow, gui = "bold" },
  },
  insert = {
    a = { fg = colors.background, bg = colors.blue, gui = "bold" },
  },
  visual = {
    a = { fg = colors.background, bg = colors.magenta, gui = "bold" },
  },
  terminal = {
    a = { fg = colors.background, bg = colors.cyan, gui = "bold" },
  },
  replace = { a = { fg = colors.background, bg = colors.red, gui = "bold" } },
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "folke/noice.nvim",
  },
  opts = {
    extensions = {
      "nvim-tree",
      "quickfix",
      -- "nvim-dap-ui", -- TODO: remember this
    },
    options = {
      theme = onedark,
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        -- { { gps.get_location, cond = gps.is_available } },
      },
      lualine_x = {
        {
          require("noice").api.status.message.get_hl,
          cond = require("noice").api.status.message.has,
        },
      },
      lualine_y = { "encoding", "fileformat", "filetype" },
      lualine_z = { "diagnostics" },
    },
  },
}
