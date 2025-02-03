local awful = require("awful")
local naughty = require("naughty")
local helpers = require("helpers")
local beautiful = require("beautiful")

local connected = true

function get_ssid()
    local network = io.popen("nmcli -t -f NAME connection show --active"):read("*l")
    return network
end

local wifi_widget = awful.widget.watch("nmcli networking connectivity check", 5, function(widget, stdout)
            if stdout == "full\n" then
                if not connected then
                    naughty.notify({
                        title = "Connected",
                        text = "You have been connected to " .. get_ssid()
                    })
                    connected = true
                end
                widget.text = "直 "
            else
                if connected then
                    naughty.notify({
                        title = "Disconnected",
                        text = "You have been disconnected from the internet"
                    })
                    connected = false
                end
                widget.text = "睊 "
            end
        end)

wifi_widget:connect_signal("mouse::enter", function(widget)
        widget.text = connected and get_ssid() .. " " .. widget.text or "no connection " .. widget.text
end)

wifi_widget:connect_signal("mouse::leave", function(widget)
        widget.text = connected and "直 " or "睊 "
end)

wifi_widget:connect_signal("button::press", function()
        awful.spawn.easy_async_with_shell("alacritty -e nmtui")
end)

return wifi_widget
