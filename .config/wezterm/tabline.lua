local wezterm = require("wezterm")
local plugin = wezterm.plugin.require

local M = {}
M.apply_to_config = function(config)
  local tabline = plugin("https://github.com/michaelbrusegard/tabline.wez")
  local options = {
    extensions = {},
    options = {
      theme = config.colors,
      section_separators = {
        left = wezterm.nerdfonts.pl_left_hard_divider,
        right = wezterm.nerdfonts.pl_right_hard_divider,
      },
      component_separators = {
        left = wezterm.nerdfonts.pl_left_soft_divider,
        right = wezterm.nerdfonts.pl_right_soft_divider,
      },
      tab_separators = {
        right = "",
      },
    },
    sections = {
      tabline_a = { "mode" },
      tabline_b = {},
      tabline_c = {},
      tab_active = { "index", "process" },
      tab_inactive = { "index", "process" },
      tabline_x = {},
      tabline_y = { "domain" },
      tabline_z = { "hostname" },
    },
  }

  tabline.setup(options)

  config.show_new_tab_button_in_tab_bar = false
  config.status_update_interval = 500
  config.tab_bar_at_bottom = false
  config.tab_max_width = 32
  config.use_fancy_tab_bar = false
  config.window_decorations = "RESIZE"
  config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
end
return M
