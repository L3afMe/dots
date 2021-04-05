pcall(require, "luarocks.loader")

local gears     = require("gears")
local awful     = require("awful")
                  require("awful.autofocus")
local wibox     = require("wibox")
local beautiful = require("beautiful")
local naughty   = require("naughty")

--- Theme
beautiful.init(gears.filesystem.get_configuration_dir() .. "config/theme.lua")

--- Autostart
require("config.autostart")

--- Keys
require("config.keys")

--- Layouts
awful.layout.layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
}

--- Widgets
require("widget.bar")

if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = tostring(err) })
        in_error = false
    end)
end

terminal = "kitty"
editor = "nvim"
editor_cmd = terminal .. " -e " .. editor

-- Table of layouts to cover with awful.layout.inc, order matters.


awful.rules.rules = {
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen
     }
    },

    { rule_any = {
        instance = {},
        class = {},
        name = {},
        role = {}
      },
      properties = { floating = true }},

    { rule_any = { type = { "normal", "dialog" } },
        properties = { titlebars_enabled = true } },

    { rule = { class = "kitty" },
        properties = { screen = 1, tag = "1" } },
}
-- }}}

client.connect_signal("manage", function (c)
    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
        awful.placement.no_offscreen(c)
    end
end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
