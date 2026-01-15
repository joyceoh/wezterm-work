local wezterm = require 'wezterm'
local config = {}

-- Use config_builder for clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Font settings
config.font_size = 13

-- Window settings
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

-- Color scheme (uncomment to use)
-- config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'JetBrains Mono'

-- background
config.macos_window_background_blur = 20
-- The art is a bit too bright and colorful to be useful as a backdrop
-- for text, so we're going to dim it down to 10% of its normal brightness
local dimmer = { brightness = 0.1 }

-- Use config_dir for absolute paths to images
local config_dir = wezterm.config_dir

config.enable_scroll_bar = true
config.min_scroll_bar_height = '2cell'
config.colors = {
  scrollbar_thumb = 'white',
}
-- Galaxy + Luna background
config.background = {
  -- Galaxy video background
  {
    source = {
      File = config_dir .. '/background_images/meow.jpg',
    },
    -- width = '100%',
    -- height = '100%',
    hsb = dimmer,
    attachment = { Parallax = 0.1 },
  },
  -- Luna overlay fixed at the bottom
  {
    source = {
      File = config_dir .. '/background_images/luna_bgr.jpg',
    },
    height = '20%',
    width = '20%',
    repeat_x = 'NoRepeat',
    repeat_y = 'NoRepeat',
    vertical_align = 'Middle',
    horizontal_align = 'Center',
    hsb = dimmer,
    attachment =  { Parallax = 0.1 },
  },
}

--[[ Spaceship background (commented out)
config.background = {
  -- This is the deepest/back-most layer. It will be rendered first
  {
    source = {
      File = config_dir .. '/Alien_Ship_bg_vert_images/Backgrounds/spaceship_bg_1.png',
    },
    -- The texture tiles vertically but not horizontally.
    -- When we repeat it, mirror it so that it appears "more seamless".
    -- An alternative to this is to set `width = "100%"` and have
    -- it stretch across the display
    repeat_x = 'Mirror',
    hsb = dimmer,
    -- When the viewport scrolls, move this layer 10% of the number of
    -- pixels moved by the main viewport. This makes it appear to be
    -- further behind the text.
    attachment = { Parallax = 0.1 },
  },
  -- Subsequent layers are rendered over the top of each other
  {
    source = {
      File = config_dir .. '/Alien_Ship_bg_vert_images/Overlays/overlay_1_spines.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    -- position the spins starting at the bottom, and repeating every
    -- two screens.
    vertical_align = 'Bottom',
    repeat_y_size = '200%',
    hsb = dimmer,

    -- The parallax factor is higher than the background layer, so this
    -- one will appear to be closer when we scroll
    attachment = { Parallax = 0.2 },
  },
  {
    source = {
      File = config_dir .. '/Alien_Ship_bg_vert_images/Overlays/overlay_2_alienball.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    -- start at 10% of the screen and repeat every 2 screens
    vertical_offset = '10%',
    repeat_y_size = '200%',
    hsb = dimmer,
    attachment = { Parallax = 0.3 },
  },
  {
    source = {
      File = config_dir .. '/Alien_Ship_bg_vert_images/Overlays/overlay_3_lobster.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    vertical_offset = '30%',
    repeat_y_size = '200%',
    hsb = dimmer,
    attachment = { Parallax = 0.4 },
  },
  {
    source = {
      File = config_dir .. '/Alien_Ship_bg_vert_images/Overlays/overlay_4_spiderlegs.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    vertical_offset = '50%',
    repeat_y_size = '150%',
    hsb = dimmer,
    attachment = { Parallax = 0.5 },
  },
}
--]]

return config
