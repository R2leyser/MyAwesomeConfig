local naughty = require("naughty")
local awful = require("awful")

local notifs = {}

function get_backlight()
    local backlight_raw = io.popen("brightnessctl get"):read("*l")
    local backlight_percent = math.ceil(tonumber(backlight_raw)/937 * 100)
    return tostring(backlight_percent) .. "%"
end

notifs.backlight = function ()
    notification = naughty.notify({
        title = "Backlight changed",
        text = "Current backlight is now " .. get_backlight(),
        replaces_id= _G.prev_backlight_notification_id
    })
    _G.prev_backlight_notification_id = notification.id
end

function get_volume()
    local volume = io.popen("pamixer --get-volume-human"):read("*l")
    return tostring(volume)
end

notifs.volume = function ()
    notification = naughty.notify({
        title = "Volume changed",
        text = "Current volume is now " .. get_volume(),
        replaces_id= _G.prev_volume_notification_id
    })
    _G.prev_volume_notification_id = notification.id
end

return notifs

