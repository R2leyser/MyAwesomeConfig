local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local icon = wibox.widget{
    widget = wibox.widget.textbox,
    text = " ",
}

local my_systray = wibox.widget.systray()
my_systray.visible = false

local systray = wibox.widget{
    my_systray,
    icon,
    layout = wibox.layout.align.horizontal
}

systray:connect_signal("mouse::enter", function(widget) 
    icon.text = " "
    my_systray.visible = true
end)

systray:connect_signal("button::press", function(widget) 
    my_systray.visible = not my_systray.visible
end)

systray:connect_signal("mouse::leave", function(widget) 
    icon.text = " "
    my_systray.visible = false
end)

return systray
