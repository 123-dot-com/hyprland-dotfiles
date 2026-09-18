-- Config for different layouts
-- Imports
require ("dependencies/curves")

-- Dwindle config
hl.config({
	general = {
		border_size = 2,
		gaps_in = 3,
		gaps_out = 6,
		col = {
			active_border = { colors = { "#5bcefa", "#f5a9b8"}, angle = 360-45},
			inactive_border = { colors = { "#173440", "#402c30"}, angle = 360-45},
		},
		layout = "dwindle",
		no_focus_fallback = true,
		resize_on_border = true,
		extend_border_grab_area = 25,
		hover_icon_on_border = true,

		snap = {
			enabled = true,
		},
	},

	decoration = {
		rounding = 12,
		rounding_power = 4.0,
		inactive_opacity = 0.9,
		dim_modal = false,
		dim_strength = 0,
		dim_special = 0.5,
		border_part_of_window = false,

		blur = {
			enabled = true,
			size = 4,
			passes = 2,
			xray = true,
			noise = 0.01,
			brightness = 0.8,
			vibrancy = 0,
			special = true,
		},

		shadow = {
			enabled = false,
		},

		motion_blur = {
			enabled = true,
			samples = 5,
		},
	},

	dwindle = {
		force_split = 2,
	},
})

-- Animations

hl.config({
	animations = {
		enabled = true,
		workspace_wraparound = false,
	},
})

-- Windows
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, bezier = "bezier_1" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "bezier_1" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "bezier_2" })

-- Layers
hl.animation({ leaf = "layers", enabled = true, speed = 1, spring = "spring_1", style = "slide" })

-- Fade
hl.animation({ leaf =  "fadeIn", enabled = true, speed = 5, bezier = "bezier_1" })
hl.animation({ leaf =  "fadeOut", enabled = true, speed = 5, bezier = "bezier_1" })
hl.animation({ leaf =  "fadeShadow", enabled = true, speed = 5, bezier = "bezier_1" })
hl.animation({ leaf =  "fadeLayers", enabled = true, speed = 5, bezier = "bezier_1" })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 0.5, spring = "spring_1", style = "slide"})

