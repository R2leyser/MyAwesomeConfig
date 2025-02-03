local awful = require("awful")
local gtimer = require("gears.timer")
local naughty = require("naughty")

function get_percentage()
    local battery = io.popen("upower -i (upower -e | grep 'BAT') | grep percentage | sed 's/percentage://g;s/ //g;s/%//'upower -i (upower -e | grep 'BAT') | grep percentage | sed 's/percentage://g;s/ //g;s/%//'"):read("*l")
    return tonumber(battery)
end

local timer = gtimer {
    timeout = 10,
    call_now = true,
    autostart = true,
    callback = function()
        local battery = get_percentage()
        if (battery < 40) then
            
        else if (battery <= 40) then
            awesome.emit_signal("battery::normal")
        end
        end
    end
}

return timer
