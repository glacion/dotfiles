local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "OneDark"
config.disable_default_key_bindings = true
config.enable_tab_bar = false
config.font = wezterm.font("Hasklug Nerd Font Mono", { weight = "DemiBold" })
config.show_new_tab_button_in_tab_bar = false
config.status_update_interval = 500
config.tab_bar_at_bottom = false
config.tab_max_width = 32
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

config.keys = require("key")

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  config.default_domain = "WSL:archlinux"
elseif wezterm.target_triple == "aarch64-apple-darwin" then
  config.font_size = 14
end
return config
