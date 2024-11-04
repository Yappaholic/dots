local wezterm = require 'wezterm'
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
local tmux = wezterm.plugin.require("https://github.com/sei40kr/wez-tmux")

local config = wezterm.config_builder()

config.color_scheme = 'Kanagawa (Gogh)'
config.font = wezterm.font ("JetBrains Mono Nerd Font", {weight = "Regular", italic = false})
config.font_size = 12
config.enable_wayland = false
config.default_cursor_style = "SteadyUnderline"
config.leader = { key = "VoidSymbol", mods = ""}
config.window_padding = {
  left = 2,
  right = 0,
  top = 0,
  bottom = 0,
}

-- Plugins
bar.apply_to_config(config)
tmux.apply_to_config(config, {})

return config
