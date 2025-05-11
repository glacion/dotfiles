local wezterm = require("wezterm")
local act = wezterm.action

local function navigate(key, mods, action, direction)
  return {
    key = key,
    mods = mods,
    action = wezterm.action_callback(function(win, pane)
      if pane:get_user_vars().IS_NVIM == "true" then
        win:perform_action({ SendKey = { key = key, mods = mods } }, pane)
      else
        if action == "resize" then
          win:perform_action({ AdjustPaneSize = { direction, 4 } }, pane)
        elseif action == "swap" then
          win:perform_action({ RotatePanes = direction }, pane)
        elseif action == "move" then
          win:perform_action({ ActivatePaneDirection = direction }, pane)
        end
      end
    end),
  }
end

return {
  { key = "p", mods = "ALT", action = act.ActivateCommandPalette },

  { key = "c", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard") },
  { key = "c", mods = "SUPER", action = act.CopyTo("Clipboard") },
  { key = "v", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard") },
  { key = "v", mods = "SUPER", action = act.PasteFrom("Clipboard") },

  { key = "Enter", mods = "ALT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "Enter", mods = "ALT|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

  { key = "w", mods = "ALT", action = act.CloseCurrentPane({ confirm = false }) },

  navigate("h", "ALT", "move", "Left"),
  navigate("j", "ALT", "move", "Down"),
  navigate("k", "ALT", "move", "Up"),
  navigate("l", "ALT", "move", "Right"),

  navigate("h", "ALT|CTRL", "resize", "Left"),
  navigate("j", "ALT|CTRL", "resize", "Down"),
  navigate("k", "ALT|CTRL", "resize", "Up"),
  navigate("l", "ALT|CTRL", "resize", "Right"),

  navigate("h", "ALT|SHIFT", "swap", "CounterClockwise"),
  navigate("j", "ALT|SHIFT", "swap", "CounterClockwise"),
  navigate("k", "ALT|SHIFT", "swap", "Clockwise"),
  navigate("l", "ALT|SHIFT", "swap", "Clockwise"),

  { key = "t", mods = "ALT", action = act.SpawnTab("CurrentPaneDomain") },
  { key = "1", mods = "ALT", action = act.ActivateTab(0) },
  { key = "2", mods = "ALT", action = act.ActivateTab(1) },
  { key = "3", mods = "ALT", action = act.ActivateTab(2) },
  { key = "4", mods = "ALT", action = act.ActivateTab(3) },
  { key = "5", mods = "ALT", action = act.ActivateTab(4) },
  { key = "6", mods = "ALT", action = act.ActivateTab(5) },
  { key = "7", mods = "ALT", action = act.ActivateTab(6) },
  { key = "8", mods = "ALT", action = act.ActivateTab(7) },
  { key = "9", mods = "ALT", action = act.ActivateTab(8) },
  { key = "0", mods = "ALT", action = act.ActivateTab(9) },
}
