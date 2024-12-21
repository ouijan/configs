local wezterm = require("wezterm")
local config = {}
config.colors = {}

config.color_scheme = "nord"

config.font = wezterm.font("FiraCode Nerd Font", { weight = "Regular" })
config.font_size = 16
config.line_height = 1.4

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 25

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false
config.colors.tab_bar = {
	background = "#2e3440",
	active_tab = {
		bg_color = "#3b4252",
		fg_color = "#d8dee9",
		intensity = "Normal",
	},
	inactive_tab = {
		bg_color = "#2e3440",
		fg_color = "#4c566a",
	},
	inactive_tab_hover = {
		bg_color = "#2e3440",
		fg_color = "#d8dee9",
	},
	new_tab = {
		bg_color = "#2e3440",
		fg_color = "#4c566a",
	},
	new_tab_hover = {
		bg_color = "#2e3440",
		fg_color = "#d8dee9",
	},
}

return config
