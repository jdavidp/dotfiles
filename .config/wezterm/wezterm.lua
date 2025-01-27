-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme = "nord",
	-- window_background_opacity = 0.8,
	-- macos_window_background_blur = 10,
	font_size = 14,
	-- Disable font ligatures
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },

	-- Set leader key and keymaps for splitting panes
	leader = { key = "Space", mods = "CTRL" },
	keys = {
		{
			-- Split pane vertically with CTRL+Space+v
			key = "v",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			-- Split pane horizontally with CTRL+Space+h
			key = "h",
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
	},
}

return config
