-- Config for monitors

hl.monitor({
	output="",
	mode="1920x1080@60",
	position="auto",
	scale="1.2",
})

hl.config({
	xwayland = {
		force_zero_scaling = true
	}
})
