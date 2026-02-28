local xresources                                = require("beautiful.xresources")
local rnotification                             = require("ruled.notification")
local dpi                                       = xresources.apply_dpi

local gfs                                       = require("gears.filesystem")
local themes_path                               = gfs.get_configuration_dir() .. "aw-milk/"

local theme                                     = {}

theme.font                                      = "sans 8"

theme.bg_normal                                 = "#14121a"
theme.bg_focus                                  = "#2a1f3d"
theme.bg_urgent                                 = "#a0002a"
theme.bg_minimize                               = "#1c1826"
theme.bg_systray                                = theme.bg_normal

theme.fg_normal                                 = "#b8b0d8"
theme.fg_focus                                  = "#39ff14"
theme.fg_urgent                                 = "#ffffff"
theme.fg_minimize                               = "#6c6780"

theme.border_width                              = dpi(1)
theme.border_color_normal                       = "#241a36"
theme.border_color_active                       = "#39ff14"
theme.border_color_marked                       = "#ff007f"

-- Taglist
theme.taglist_bg_focus                          = "#39ff14"
theme.taglist_fg_focus                          = "#000000"
theme.taglist_bg_occupied                       = "#2a1f3d"
theme.taglist_fg_occupied                       = "#b8b0d8"
theme.taglist_bg_empty                          = "#14121a"
theme.taglist_fg_empty                          = "#444050"

-- Tasklist
theme.tasklist_bg_focus                         = "#2a1f3d"
theme.tasklist_fg_focus                         = "#39ff14"

-- Menu
theme.menu_bg_normal                            = "#1c1826"
theme.menu_bg_focus                             = "#39ff14"
theme.menu_fg_focus                             = "#000000"

-- Notifications
theme.notification_bg                           = "#1c1826"
theme.notification_fg                           = "#39ff14"

-- Titlebar
theme.titlebar_bg_focus                         = "#2a1f3d"
theme.titlebar_bg_normal                        = "#14121a"

theme.taglist_squares_sel                       = themes_path .. "taglist/squarefw.png"
theme.taglist_squares_unsel                     = themes_path .. "taglist/squarew.png"

theme.menu_submenu_icon                         = themes_path .. "submenu.png"
theme.menu_height                               = dpi(32)
theme.menu_width                                = dpi(100)

-- Define the image to load
theme.titlebar_close_button_normal              = themes_path .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus               = themes_path .. "titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = themes_path .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = themes_path .. "titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive     = themes_path .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = themes_path .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = themes_path .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = themes_path .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = themes_path .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = themes_path .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = themes_path .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = themes_path .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = themes_path .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = themes_path .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "titlebar/maximized_focus_active.png"

theme.wallpaper                                 = themes_path .. "background.png"
theme.lock                                      = themes_path .. "lock.png"

-- You can use your own layout icons like this:
theme.layout_fairh                              = themes_path .. "layouts/fairhw.png"
theme.layout_fairv                              = themes_path .. "layouts/fairvw.png"
theme.layout_floating                           = themes_path .. "layouts/floatingw.png"
theme.layout_magnifier                          = themes_path .. "layouts/magnifierw.png"
theme.layout_max                                = themes_path .. "layouts/maxw.png"
theme.layout_fullscreen                         = themes_path .. "layouts/fullscreenw.png"
theme.layout_tilebottom                         = themes_path .. "layouts/tilebottomw.png"
theme.layout_tileleft                           = themes_path .. "layouts/tileleftw.png"
theme.layout_tile                               = themes_path .. "layouts/tilew.png"
theme.layout_tiletop                            = themes_path .. "layouts/tiletopw.png"
theme.layout_spiral                             = themes_path .. "layouts/spiralw.png"
theme.layout_dwindle                            = themes_path .. "layouts/dwindlew.png"
theme.layout_cornernw                           = themes_path .. "layouts/cornernww.png"
theme.layout_cornerne                           = themes_path .. "layouts/cornernew.png"
theme.layout_cornersw                           = themes_path .. "layouts/cornersww.png"
theme.layout_cornerse                           = themes_path .. "layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon                              = themes_path .. "icon.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme                                = nil

-- Set different colors for urgent notifications.
rnotification.connect_signal('request::rules', function()
    rnotification.append_rule {
        rule       = { urgency = 'critical' },
        properties = { bg = '#ff0000', fg = '#ffffff' }
    }
end)

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
