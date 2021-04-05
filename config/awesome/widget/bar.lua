local awful     = require("awful")
local gears     = require("gears")
local wibox     = require("wibox")
local beautiful = require("beautiful")


awful.screen.connect_for_each_screen(function(s)
    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = taglist_buttons
    }

    s.bar = awful.wibar({
        screen = s,
        position = "top",
        height = beautiful.wibar_height,
        width = s.geometry.width -
                    (beautiful.wibar_x_padding * 2),
        shape = gears.shape.rounded_rect,
        bg = beautiful.wibar_bg,
    })

    s.bar.y = beautiful.wibar_y_padding

    s.bar:setup({
        layout = wibox.layout.align.horizontal,
        expand = "none",
       {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = beautiful.wibar_spacing,
                s.mytaglist
            },
            left = beautiful.wibar_spacing,
            right = beautiful.wibar_spacing,
            widget = wibox.container.margin,
        }, {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = beautiful.wibar_spacing,
                wibox.widget.textclock(),
            },
            left = beautiful.wibar_spacing,
            right = beautiful.wibar_spacing,
            widget = wibox.container.margin,
        }, {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = beautiful.wibar_spacing,
                awful.widget.layoutbox(s)
            },
            left = beautiful.wibar_spacing,
            right = beautiful.wibar_spacing,
            widget = wibox.container.margin,
        }, 
    })
end)
