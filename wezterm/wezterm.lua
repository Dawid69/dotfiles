local wezterm = require("wezterm")
local act = wezterm.action
return {
	color_scheme = "tokyonight",
	window_background_opacity = 0.87,

	font = wezterm.font 'Fira Code',
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,

	window_decorations = "RESIZE",

	window_padding = {
		left = 2,
		right = 0,
		top = 10,
		bottom = 0,
	},

	warn_about_missing_glyphs = false,
	use_fancy_tab_bar = false,
	show_new_tab_button_in_tab_bar = false,

	-- Set up new keybinds...
	-- They are kind of like my i3/sway keybinds... Using ALT as the modifier...
	keys = {
		{ key = "Tab", mods = "ALT", action = wezterm.action.SpawnWindow },
		{ key = "b",   mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
		{ key = "t",   mods = "ALT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
		{ key = "w",   mods = "ALT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },

		{
			key = "n",
			mods = "ALT",
			action = wezterm.action.SplitHorizontal({}),
		},
		{
			key = "v",
			mods = "ALT",
			action = wezterm.action.SplitVertical({}),
		},
		{
			key = "0",
			mods = "ALT",
			action = wezterm.action.SplitHorizontal({
				args = { "btm" },
			}),
		},
		{
			key = "/",
			mods = "ALT",
			action = wezterm.action.SpawnCommandInNewTab({
				args = { "btm" },
			}),
		},
		{
			key = 'p',
			mods = 'ALT',
			action = act.PaneSelect,
		},

		{ key = "1", mods = "ALT", action = wezterm.action({ ActivateTab = 0 }) },
		{ key = "2", mods = "ALT", action = wezterm.action({ ActivateTab = 1 }) },
		{ key = "3", mods = "ALT", action = wezterm.action({ ActivateTab = 2 }) },
		{ key = "4", mods = "ALT", action = wezterm.action({ ActivateTab = 3 }) },
		{ key = "5", mods = "ALT", action = wezterm.action({ ActivateTab = 4 }) },
		{ key = "6", mods = "ALT", action = wezterm.action({ ActivateTab = 5 }) },
		{ key = "7", mods = "ALT", action = wezterm.action({ ActivateTab = 6 }) },
		{ key = "8", mods = "ALT", action = wezterm.action({ ActivateTab = 7 }) },
		{ key = "9", mods = "ALT", action = wezterm.action({ ActivateTab = 8 }) },

	},
}
