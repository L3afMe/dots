local gears     = require("gears")
local beautiful = require("beautiful")

local default_theme = gears.filesystem.get_themes_dir() ..
                        "default/theme.lua";
local theme = dofile(default_theme)

theme.text    = "#575279"
theme.subtle  = "#6e6a86"
theme.ignored = "#9893a5"
theme.base    = "#F5E9DA"
theme.surface = "#FAF4ED"
theme.overlay = "#EDD7BD"
theme.love    = "#B4637A"
theme.sun     = "#EA9D34"
theme.rose    = "#D7827E"
theme.pine    = "#286983"
theme.foam    = "#56949F"
theme.iris    = "#907AA9"

theme.font_name    = "Fira Code "
theme.font         = theme.font_name .. "9"
theme.icon_font    = "FiraCode Nerd Font Mono 18"
theme.font_taglist = "FiraCode Nerd Font Mono 13"
theme.max_font     = "FiraCode Nerd Font Mono 10"

-- Background
gears.wallpaper.set(theme.surface)
theme.bg_dark   = theme.overlay
theme.bg_normal = theme.base
theme.bg_focus  = theme.overlay
theme.bg_urgent = theme.sun

-- Foreground
theme.fg_normal = theme.text
theme.fg_focus  = theme.iris
theme.fg_urgent = theme.love

-- Borders
theme.border_width  = 4
theme.border_normal = theme.base
theme.border_focus  = theme.overlay
theme.border_radius = 10
theme.client_radius = 20

-- Gaps
theme.useless_gap = 30

-- Hotkeys Widget
theme.hotkeys_border_color = theme.overlay
theme.hotkeys_group_margin = 20
theme.hotkeys_label_fg     = theme.text
-- TODO: Figure out why this doesn't work
theme.hotkeys_label_bg     = theme.base
theme.hotkeys_modifiers_fg = theme.iris
theme.hotkeys_fg           = theme.iris
theme.hotkeys_bg           = theme.base

-- Wibar
theme.wibar_height     = 34 
theme.wibar_margin     = 15
theme.wibar_spacing    = 15
theme.wibar_y_padding  = theme.useless_gap / 3 * 2
theme.wibar_x_padding  = theme.useless_gap * 2 / 3 * 2
theme.wibar_bg         = theme.base

-- Wibar Taglist
theme.taglist_fg_focus       = theme.text
theme.taglist_spacing        = 4
theme.taglist_shape          = gears.shape.circle
theme.taglist_shape_focus    = gears.shape.circle
theme.taglist_shape_empty    = gears.shape.circle
theme.taglist_shape_volatile = gears.shape.circle

return theme
