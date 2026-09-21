--   omarchy menu keybindings --print

-- Removing omarchy stds we don't use
hl.unbind("SUPER + W") -- default is close window
hl.unbind("SUPER + SHIFT + Return") -- default is open browser
hl.unbind("SUPER + L") -- default is toggle layout scroll mode
hl.unbind("SUPER + J")
hl.unbind("SUPER + K")
hl.unbind("SUPER + SHIFT + P") -- default is google photos
hl.unbind("SUPER + SHIFT + C") -- default is app hey calendar
hl.unbind("SUPER + SHIFT + E") -- default is app hey email
hl.unbind("SUPER + SHIFT + S") -- default is google maps
hl.unbind("SUPER + SHIFT + W") -- default is Omawrite
hl.unbind("SUPER + SHIFT + F") -- default is Nautilus File Manager
hl.unbind("SUPER + SHIFT + M") -- default is Spotify

-- Basic navigation
o.bind("SUPER + SHIFT + Q", "Close window", hl.dsp.window.close())
----  Move windows
o.bind("SUPER + SHIFT + L", "Move window Right", hl.dsp.window.move({direction ="right"}))
o.bind("SUPER + SHIFT + K", "Move window Up", hl.dsp.window.move({direction ="up"}))
o.bind("SUPER + SHIFT + J", "Move window Down", hl.dsp.window.move({direction ="down"}))
o.bind("SUPER + SHIFT + H", "Move window Left", hl.dsp.window.move({direction ="left"}))
----  Move focus
o.bind("SUPER + L", "Move focus Right", hl.dsp.focus({direction ="right"}))
o.bind("SUPER + K", "Move focus Up", hl.dsp.focus({direction ="up"}))
o.bind("SUPER + J", "Move focus Down", hl.dsp.focus({direction ="down"}))
o.bind("SUPER + H", "Move focus Left", hl.dsp.focus({direction ="left"}))

-- Open Apps
o.bind("SUPER + SHIFT + Return", "Terminal", hl.dsp.exec_cmd("kitty"))
o.bind("SUPER + SHIFT + P", "Kee", hl.dsp.exec_cmd("keepassxc")) 
o.bind("SUPER + SHIFT + S", "Slack", hl.dsp.exec_cmd("slack")) 
o.bind("SUPER + SHIFT + F", "Yazi File Manager", hl.dsp.exec_cmd("kitty -e yazi"))
o.bind("SUPER + SHIFT + W", "Whatsapp", hl.dsp.exec_cmd("com.rtosta.zapzap")) 
o.bind("SUPER + SHIFT + C", "Calendar", { webapp = "https://calendar.google.com/calendar/u/0/r" })
o.bind("SUPER + SHIFT + E", "Email", { webapp = "https://mail.google.com/mail/u/1/#inbox" })
o.bind("SUPER + SHIFT + M", "Email", { webapp = "https://music.youtube.com/" })


-- Utilities
---- Toggle Layout
o.bind("SUPER + ALT + L", "Toggle workspace layout", "omarchy-hyprland-workspace-layout-toggle")
---- Lid behavior
o.bind("switch:on:Lid Switch", nil, "omarchy-system-lid-close", { locked = true })
hl.unbind("switch:on:Lid Switch")
o.bind("switch:off:Lid Switch", nil, "omarchy-hyprland-monitor-clamshell", { locked = true })
hl.unbind("switch:off:Lid Switch")
--
-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false
