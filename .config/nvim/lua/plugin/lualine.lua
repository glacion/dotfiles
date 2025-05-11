local color = require("color")

local onedark = {
  normal = {
    a = { fg = color.bg, bg = color.yellow },
    b = { fg = color.bg, bg = color.cyan },
    c = { fg = color.fg, bg = color.bg },
    x = { fg = color.fg, bg = color.bg },
    y = { fg = color.fg, bg = color.bg_statusline },
    z = { fg = color.bg, bg = color.red },
  },
  command = { a = { fg = color.bg, bg = color.red } },
  insert = { a = { fg = color.bg, bg = color.blue } },
  visual = { a = { fg = color.bg, bg = color.purple } },
  terminal = { a = { fg = color.bg, bg = color.cyan } },
  replace = { a = { fg = color.bg, bg = color.red } },
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "folke/noice.nvim" },
  opts = {
    extensions = {
      "lazy",
      "mason",
      "nvim-tree",
      "trouble",
    },
    options = {
      theme = onedark,
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {},
      lualine_x = {
        {
          require("noice").api.status.message.get_hl,
          cond = require("noice").api.status.message.has,
        },
      },
      lualine_y = { "encoding", "filetype" },
      lualine_z = { "diagnostics", "lsp_status" },
    },
  },
}
