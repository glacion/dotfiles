local line = require("galaxyline")
local colors = require("galaxyline.theme").default
local condition = require("galaxyline.condition")
local section = line.section

section.left[1] = {
  ViMode = {
    provider = function()
      local alias = { n = " normal ", i = " insert ", c = " command ", v = " visual " }
      return alias[vim.fn.mode()]
    end,
    highlight = { colors.cyan, colors.bg, "bold" },
  },
}

section.left[2] = {
  DiagnosticError = {
    provider = "DiagnosticError",
    icon = "  ",
    highlight = { colors.red, colors.bg },
  },
}

section.left[3] = {
  DiagnosticWarn = {
    provider = "DiagnosticWarn",
    icon = "  ",
    highlight = { colors.yellow, colors.bg },
  },
}

section.left[4] = {
  DiagnosticHint = {
    provider = "DiagnosticHint",
    icon = "  ",
    highlight = { colors.cyan, colors.bg },
  },
}

section.left[5] = {
  DiagnosticInfo = {
    provider = "DiagnosticInfo",
    icon = "  ",
    highlight = { colors.blue, colors.bg },
  },
}

section.right[1] = {
  GitIcon = {
    provider = function()
      return "  "
    end,
    condition = condition.check_git_workspace,
    separator = " ",
    separator_highlight = { "NONE", colors.bg },
    highlight = { colors.violet, colors.bg, "bold" },
  },
}

section.right[2] = {
  GitBranch = {
    provider = "GitBranch",
    condition = condition.check_git_workspace,
    highlight = { colors.violet, colors.bg, "bold" },
  },
}

section.right[3] = {
  DiffAdd = {
    provider = "DiffAdd",
    condition = condition.hide_in_width,
    icon = "  ",
    highlight = { colors.green, colors.bg },
  },
}

section.right[4] = {
  DiffModified = {
    provider = "DiffModified",
    condition = condition.hide_in_width,
    icon = "  ",
    highlight = { colors.orange, colors.bg },
  },
}

section.right[5] = {
  DiffRemove = {
    provider = "DiffRemove",
    condition = condition.hide_in_width,
    icon = "  ",
    highlight = { colors.red, colors.bg },
  },
}

