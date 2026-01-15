local wezterm = require 'wezterm'
local config = {}

-- Use config_builder for clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Font settings
config.font_size = 14

-- Window settings
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

-- Color scheme (uncomment to use)
-- config.color_scheme = 'Catppuccin Mocha'

return config
