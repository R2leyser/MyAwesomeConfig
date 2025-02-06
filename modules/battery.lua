local awful = require("awful")

local wibox = require("wibox")
local battery_widget = require("awesome-battery_widget")

-- Create the battery widget:
local my_battery_widget = battery_widget {
    screen = screen,
    use_display_device = true,
    instant_update = true,
    widget_template = wibox.widget.textbox
}

-- When UPower updates the battery status, the widget is notified
-- and calls a signal you need to connect to:
my_battery_widget:connect_signal('upower::update', function (widget, device)
    if (device.state ~= 2) then
        widget.text = string.format(' %3d', device.percentage) .. '%'
    else
        widget.text = string.format(' %3d', device.percentage) .. '%'
    end
end)

return my_battery_widget
