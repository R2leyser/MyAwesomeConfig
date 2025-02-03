local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")

local power_popup = awful.wibox {
     height = 100,
     width = 300,
     x = 25,
     y = 5,
     ontop = false,
     bg = beautiful.bg_normal,
     visible = false
}

power_popup:setup{
    nil,
    widget = wibox.container.margin
}
