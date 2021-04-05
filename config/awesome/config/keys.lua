local gears         = require("gears")
local awful         = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
                      require("awful.hotkeys_popup.keys")

modkey = "Mod4"

globalkeys = gears.table.join(
    -- Launcher
    awful.key({ modkey,           }, "Return",    function() awful.spawn(terminal) end,
              {description = "Open terminal",     group = "Awesome: Launcher"}),

    -- Awesome
    awful.key({ modkey,           }, "s",         hotkeys_popup.show_help,
              {description = "Help menu",         group = "Awesome: Awesome"}),
    awful.key({ modkey, "Control" }, "r",         awesome.restart,
              {description = "Reload Awesome",    group = "Awesome: Awesome"}),
    awful.key({ modkey, "Shift"   }, "q",         awesome.quit,
              {description = "Quit Awesome",      group = "Awesome: Awesome"}),

    -- Tags
    awful.key({ modkey, "Control" }, "h",         awful.tag.history.restore,
              {description = "Previous tag",      group = "Awesome: Tag"}),
    awful.key({ modkey, "Shift"   }, "h",         awful.tag.viewprev,
              {description = "Next tag",          group = "Awesome: Tag"}),
    awful.key({ modkey, "Shift"   }, "l",         awful.tag.viewnext,
              {description = "go back",           group = "Awesome: Tag"}),

    -- Clients
    awful.key({ modkey,           }, "j",         function() awful.client.focus.byidx( 1) end,
              {description = "Focus next",        group = "Awesome: Client"}),
    awful.key({ modkey,           }, "k",         function() awful.client.focus.byidx(-1) end,
              {description = "Focus previous",    group = "Awesome: Client"}),
    awful.key({modkey,            }, "f",         function() toggle_fullscreen() end,
              {description = "Toggle fullscreen", group = "Awesome: Client"}),
    awful.key({ modkey, "Shift"   }, "j",         function() awful.client.swap.byidx(  1) end,
              {description = "Swap next",         group = "Awesome: Client"}),
    awful.key({ modkey, "Shift"   }, "k",         function() awful.client.swap.byidx( -1) end,
              {description = "Swap previous",     group = "Awesome: Client"}),
    awful.key({ modkey,           }, "u",         awful.client.urgent.jumpto,
              {description = "Jump to urgent",    group = "Awesome: Client"}),
    awful.key({ modkey, "Shift"   }, "c",         function() client.focus:kill() end,
              {description = "Close",             group = "Awesome: Client"}),
    awful.key({ modkey, "Control" }, "space",     awful.client.floating.toggle                     ,
              {description = "Toggle floating",   group = "Awesome: Client"}),
    awful.key({ modkey,           }, "o",         function() client.focus:move_to_screen()               end,
              {description = "Move to screen",    group = "Awesome: Client"}),

    -- Layout
    awful.key({ modkey,           }, "l",         function() awful.tag.incmwfact( 0.01) end,
              {description = "Increase width",    group = "Awesome: Layout"}),
    awful.key({ modkey,           }, "h",         function() awful.tag.incmwfact(-0.01) end,
              {description = "Decrease width",    group = "Awesome: Layout"}),
    awful.key({ modkey,           }, "space",     function() awful.layout.inc( 1) end,
              {description = "Next layout",       group = "Awesome: Layout"}),
    awful.key({ modkey, "Shift"   }, "space",     function() awful.layout.inc(-1) end,
              {description = "Previous layout",   group = "Awesome: Layout"})
)

for i = 1, 9 do
    local tag_key = "#" .. i + 9
    globalkeys = gears.table.join(globalkeys,
        awful.key({ modkey          }, tag_key,              function() move_to_tag(i) end,
                  {description = "View tag #" .. i,          group = "Awesome: Tag"}),
        awful.key({ modkey, "Shift" }, tag_key,              function() move_client_to_tag(i) end,
                  {description = "Move client to tag " .. i, group = "Awesome: Tag"})
    )
end

root.keys(globalkeys)

-- Helper functions
function move_to_tag(index)
    local screen = awful.screen.focused()
    local tag = screen.tags[index]
    if tag then
        tag:view_only()
    end
end

function move_client_to_tag(index)
    if client.focus then
        local tag = client.focus.screen.tags[index]
        if tag then
            client.focus:move_to_tag(tag)
        end
    end
end

function toggle_fullscreen()
    local win = client.focus
    win.fullscreen = not win.fullscreen
    win:raise()
end
