-- Config for autostart apps

hl.on("hyprland.start", function()
	hl.exec_cmd("anyrun daemon")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl=paste --type image --watch cliphist store")
end)
