---------------------------
-- Default awesome theme --
---------------------------

local awful = require("awful")
local gc = require("gears.color")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local awful = require("awful")

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

local clrs = {}

-- everyblush
-- clrs.nbg   = "#141b1e"
-- clrs.lbg   = "#1b2226"
-- clrs.blk   = "#232a2d"
-- clrs.gry   = "#3b4244"
-- clrs.wht   = "#97a09e"
-- clrs.dfg   = "#bdc3c2"
-- clrs.nfg   = "#dadada"
-- clrs.red   = "#ef7d7d"
-- clrs.grn   = "#8ccf7e"
-- clrs.ylw   = "#f4d67a"
-- clrs.blu   = "#71baf2"
-- clrs.mag   = "#ce89df"
-- clrs.cya   = "#67cbe7"
-- clrs.red_d = "#e57474"
-- clrs.grn_d = "#6bc568"
-- clrs.ylw_d = "#e5c76b"
-- clrs.blu_d = "#67b0e8"
-- clrs.mag_d = "#c47fd5"
-- clrs.cya_d = "#6cbfbf"

-- camellia
clrs.nbg   = "#17181C"
clrs.lbg   = "#1E1F24"
clrs.blk   = "#26272B"
clrs.gry   = "#333438"
clrs.wht   = "#8F9093"
clrs.dfg   = "#B0B1B4"
clrs.mfg   = "#CBCCCE"
clrs.nfg   = "#E4E5E7"
clrs.red   = "#FA3867"
clrs.grn   = "#3FD43B"
clrs.ylw   = "#FEBD16"
clrs.blu   = "#53ADE1"
clrs.mag   = "#AD60FF"
clrs.cya   = "#47E7CE"
clrs.red_d = "#FC3F2C"
clrs.grn_d = "#3FD43B"
clrs.ylw_d = "#F3872F"
clrs.blu_d = "#53ADE1"
clrs.mag_d = "#AD60FF"
clrs.cya_d = "#47E7CE"

theme.font          = "JetBrainsMono Nerd Font 10"

theme.bg_normal     = clrs.nbg
theme.bg_focus      = clrs.gry
theme.bg_urgent     = clrs.red_d
theme.bg_minimize   = clrs.gry
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = clrs.nfg
theme.fg_focus      = clrs.dfg
theme.fg_urgent     = clrs.dfg
theme.fg_minimize   = clrs.dfg

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(0)
theme.border_normal = clrs.gry
theme.border_focus  = clrs.grn
theme.border_marked = clrs.gry

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"


theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_fg_normal = clrs.gry

theme.titlebar_fg_focus = theme.fg_normal
theme.titlebar_bg_focus = clrs.lbg

-- Generate taglist squares:
--local taglist_square_size = dpi(4)
--theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
--    taglist_square_size, theme.fg_normal
--)
--theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
--    taglist_square_size, theme.fg_normal
--)

taglist_bg_focus = clrs.grn
taglist_fg_focus = theme.bg_normal

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

local titlebar_inactive = "~/.config/awesome/icons/titlebar_inactive.png"
local titlebar_max = "~/.config/awesome/icons/titlebar_max.png"
local titlebar_close = "~/.config/awesome/icons/titlebar_close.png"

-- Define the image to load
theme.titlebar_close_button_normal = titlebar_inactive
theme.titlebar_close_button_focus  = titlebar_close

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = titlebar_inactive
theme.titlebar_maximized_button_focus_inactive = titlebar_max
theme.titlebar_maximized_button_normal_active =  titlebar_inactive
theme.titlebar_maximized_button_focus_active  =  titlebar_max

theme.wallpaper = "~/.config/awesome/wallpapers/camellia-doge.jpeg"

-- You can use your own layout icons like this:
theme.layout_fairh = gc.recolor_image(themes_path.."default/layouts/fairhw.png", theme.fg_normal)
theme.layout_fairv = gc.recolor_image(themes_path.."default/layouts/fairvw.png", theme.fg_normal)
theme.layout_floating  = gc.recolor_image(themes_path.."default/layouts/floatingw.png", theme.fg_normal)
theme.layout_magnifier = gc.recolor_image(themes_path.."default/layouts/magnifierw.png", theme.fg_normal)
theme.layout_max = gc.recolor_image(themes_path.."default/layouts/maxw.png", theme.fg_normal)
theme.layout_fullscreen = gc.recolor_image(themes_path.."default/layouts/fullscreenw.png", theme.fg_normal)
theme.layout_tilebottom = gc.recolor_image(themes_path.."default/layouts/tilebottomw.png", theme.fg_normal)
theme.layout_tileleft   = gc.recolor_image(themes_path.."default/layouts/tileleftw.png", theme.fg_normal)
theme.layout_tile = gc.recolor_image(themes_path.."default/layouts/tilew.png", theme.fg_normal)
theme.layout_tiletop = gc.recolor_image(themes_path.."default/layouts/tiletopw.png", theme.fg_normal)
theme.layout_spiral  = gc.recolor_image(themes_path.."default/layouts/spiralw.png", theme.fg_normal)
theme.layout_dwindle = gc.recolor_image(themes_path.."default/layouts/dwindlew.png", theme.fg_normal)
theme.layout_cornernw = gc.recolor_image(themes_path.."default/layouts/cornernww.png", theme.fg_normal)
theme.layout_cornerne = gc.recolor_image(themes_path.."default/layouts/cornernew.png", theme.fg_normal)
theme.layout_cornersw = gc.recolor_image(themes_path.."default/layouts/cornersww.png", theme.fg_normal)
theme.layout_cornerse = gc.recolor_image(themes_path.."default/layouts/cornersew.png", theme.fg_normal)

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
