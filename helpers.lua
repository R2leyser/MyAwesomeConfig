local gears = require("gears")
local beautiful = require("beautiful")
local color = require("color")
local rubato = require("rubato")

helpers = {}

 function helpers.apply_transition(opts)
     opts = opts or {}

     local bg = opts.bg or beautiful.bg_normal
     local hbg = opts.hbg or beautiful.bg_normal

     local element, prop = opts.element, opts.prop

     local background = color.color { hex = bg }
     local hover_background = color.color { hex = hbg }

     local transition = color.transition(background, hover_background, color.transition.RGB)

     local fading = rubato.timed { duration = 0.30 }

     fading:subscribe(function (pos)
         element[prop] = transition(pos / 100).hex
     end)

     return {
         on = function ()
             fading.target = 100
         end,
         off = function ()
             fading.target = 0
         end
     }
 end

helpers.prr = function (radius, tl, tr, br, bl)
    return function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, tl, tr, br, bl, radius)
    end
end

helpers.rr = function (radius)
    return function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, radius)
    end
end

return helpers
