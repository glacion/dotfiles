local wezterm = require("wezterm")
local act = wezterm.action

return {
  { event = { Up = { streak = 1, button = "Left" } }, mods = "CTRL|SHIFT", action = act.OpenLinkAtMouseCursor },
  { event = { Up = { streak = 1, button = "Left" } }, mods = "SUPER", action = act.OpenLinkAtMouseCursor },
}
