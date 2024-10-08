local wezterm = require 'wezterm';
local config = wezterm.config_builder()

config.color_scheme = "Dracula"
config.font = wezterm.font { family = "SauceCodePro NFM" }
config.font_size = 15
config.line_height = 1.1
config.quit_when_all_windows_are_closed = false

config.window_frame = {
    font = wezterm.font { family = 'SauceCodePro NFM', weight = 'Bold' },
    font_size = 15,
  }
config.window_decorations = 'RESIZE'

return config