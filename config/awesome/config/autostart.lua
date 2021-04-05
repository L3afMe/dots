-- Credit to JavaCafe for this
-- https://github.com/JavaCafe01/dotfiles/blob/master/.config/awesome/autostart.lua

local awful = require("awful")
local gears = require("gears")

local function run_once(cmd)
    local findme = cmd
    local firstspace = cmd:find(' ')
    if firstspace then findme = cmd:sub(0, firstspace - 1) end
    awful.spawn.easy_async_with_shell(string.format(
                                          'bash -c "pgrep -u $USER -x %s > /dev/null || (%s)"',
                                          findme, cmd))
end

autostart_apps = {
    "hhpc",
}

for app = 1, #autostart_apps do run_once(autostart_apps[app]) end
