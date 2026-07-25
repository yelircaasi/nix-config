---@module 'hl'

local paths = require("lua.paths")

local LMB = "mouse:272"

local RMB = "mouse:275"

local directions = {
	down = "j",
	right = "l",
	left = "h",
	up = "k",
}

local mainMod = "SUPER"

local commands = {
	menu = "fuzzel",
	opener = "handlr launch",
	scratchpad = "scratchpad -m fuzzel --dmenu",
	wallpaper = "hyprpaper",
	logout = "wlogout",
	launcher = "pkill fuzzel || fuzzel",
	terminal = "wezterm",
	screensaver = "hypridle",
	handlr = {
		terminal = "handlr launch x-scheme-handler/terminal --",
	},
	desktop_environment = "noctalia-shell",
	startup = paths.dbus
		.. "/bin/dbus-update-activation-environment"
		.. " --systemd DISPLAY HYPRLAND_INSTANCE_SIGNATURE WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
		.. " && systemctl --user stop hyprland-session.target && systemctl --user start hyprland-session.target",
}

hl.config({
	animations = {
		enabled = true,
	},

	decoration = {
		blur = {
			enabled = true,
			passes = 2,
			size = 3,
		},
		rounding = 5,
		active_opacity = 0.96,
		fullscreen_opacity = 0.98,
		inactive_opacity = 0.93,
	},

	group = {
		groupbar = {
			text_color = "0xffffffff",
		},
		col = {
			border_locked_active = "rgb(003366)",
			border_locked_inactive = "rgb(242424)",
		},
	},

	dwindle = {
		preserve_split = true,
		-- TODO: REMOVE/CHANGE pseudotile = true,
	},

	general = {
		border_size = 2,
		col = {
			active_border = "rgb(002400)",
			inactive_border = "rgb(162016)",
		},
		gaps_in = 5,
		gaps_out = 20,
		layout = "dwindle",
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		enable_swallow = true,
		swallow_regex = "^(org.wezfurlong.wezterm)$",
	},
})

hl.window_rule({
	name = "opacity_1_0",
	match = {
		class = "^(Hyprlock)$",
	},
	opacity = 1.0,
})

hl.window_rule({
	name = "noanim",
	match = {
		class = "^(Hyprlock)$",
	},
	no_anim = true,
})

hl.window_rule({
	name = "nofocus",
	match = {
		class = "^(Hyprlock)$",
	},
	no_focus = true,
})

local command = hl.dsp.exec_cmd

local function join(...)
	return table.concat({ ... }, " + ")
end

local function mainmod_bind(keyname, action)
	hl.bind(join(mainMod, keyname), action)
end

for i = 1, 9 do
	mainmod_bind("SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
	mainmod_bind(i, hl.dsp.focus({ workspace = i }))
end

local mainmod_keymap = {
	["Return"] = command(commands.handlr.terminal),
	["Q"] = hl.dsp.window.close(),
	["SHIFT + Q"] = command(commands.logout),
	["R"] = command(commands.launcher),
	["W"] = command(commands.terminal),
}
for key, action in pairs(mainmod_keymap) do
	mainmod_bind(key, action)
end

require("lua/setup-specific")

-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd(commands.startup)
	hl.exec_cmd(commands.wallpaper)
	hl.exec_cmd(commands.screensaver)
	hl.exec_cmd(commands.desktop_environment)
end)

--[[
hl.monitor({
	output = "desc:BOE 0x0C3F",
	mode = "1920x1200",
	position = "0x0",
	scale = 1,
})

hl.monitor({
	output = "<|  |>", -- desc:Ancor Communications Inc ASUS PB278 E8LMTF000788",
	mode = "<|  |>", -- "2560x1440",
	position = "<|  |>", -- "1920x0",
	scale = "<|  |>", -- 1,
})

hl.monitor({
	output = "desc:Ancor Communications Inc ASUS PB278 E8LMTF000809",
	mode = "2560x1440",
	position = "4480x0",
	scale = 1,
})

hl.workspace_rule({
	workspace = 1,
	monitor = "desc:BOE 0x0C3F",
	is_default = true,
})

hl.workspace_rule({
	workspace = 2,
	monitor = "desc:Ancor Communications Inc ASUS PB278 E8LMTF000788",
	is_default = true,
})

hl.workspace_rule({
	workspace = 3,
	monitor = "desc:Ancor Communications Inc ASUS PB278 E8LMTF000809",
	is_default = true,
})
--]]
