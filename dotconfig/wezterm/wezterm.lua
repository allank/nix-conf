local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 12
-- config.color_scheme = "Dracula (Official)"
-- config.color_scheme = "Primary"
config.color_scheme = "Catppuccin Mocha"
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"

return config
