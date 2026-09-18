-- Configuration for keybinds

-- Imports
require ("dependencies/apps")

-- Launch binds
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + R", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(file_manager))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + M", hl.dsp.exec_cmd("waybar"))

-- Window binds
hl.bind("SUPER + W", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({"fullscreen"}))
hl.bind("SUPER + ALT + F", hl.dsp.window.fullscreen({"maximized"}))
hl.bind("SUPER + O", hl.dsp.window.float())
hl.bind("SUPER + O", hl.dsp.window.center())
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("ALT + TAB", hl.dsp.window.cycle_next())
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + SHIFT + LEFT", hl.dsp.window.move({direction = "left"}))
hl.bind("SUPER + SHIFT + UP", hl.dsp.window.move({direction = "up"}))
hl.bind("SUPER + SHIFT + DOWN", hl.dsp.window.move({direction = "down"}))
hl.bind("SUPER + SHIFT + RIGHT", hl.dsp.window.move({direction = "right"}))

-- Workspace binds
for i = 1, 10 do
	num = i % 10
	hl.bind("SUPER + " ..num, hl.dsp.focus({workspace=num}))
	hl.bind("SUPER + SHIFT + " ..num, hl.dsp.window.move({workspace=num}))
end
hl.bind("SUPER + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Multimedia keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
