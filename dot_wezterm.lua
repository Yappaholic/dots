-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.default_prog = { '/usr/bin/elvish' }
config.front_end = "OpenGL"
config.window_background_opacity = 0.9
config.font = wezterm.font "JetBrainsMono Nerd Font"
config.font_size = 11.5
config.enable_wayland = true
config.enable_tab_bar = false
config.color_scheme = "Srcery (Gogh)"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.default_cursor_style = "SteadyUnderline"


-- and finally, return the configuration to wezterm
return config
