local wezterm = require "wezterm"
return {
  color_scheme = 'tokyonight',
  window_background_opacity = 0.87,

  -- font = wezterm.font 'Fira Code',
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,

  warn_about_missing_glyphs = false,


  -- Set up new keybinds... Going to set it up as a browser..
  keys = {
    { key = "Tab", mods = 'CTRL', action = wezterm.action.SpawnWindow },
    -- { key = "b", mods = 'CTRL', action = wezterm.action.ActivateTabRelative },
  },

}
