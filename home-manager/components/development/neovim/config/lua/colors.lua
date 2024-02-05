--vim.api.nvim_set_hl(0, "Comment", { bg = "Purple" })
--vim.api.nvim_set_hl(0, 'Normal', { fg = "Green", bg = "Red" })
--vim.api.nvim_set_hl(0, 'Error', { fg = "#ffffff", undercurl = true })
--vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })

--vim.cmd("highlight clear")
vim.cmd("syntax reset")
--vim.g.colors_name = 'melange'

-- local bg = vim.opt.background:get()

-- package.loaded['melange/palettes/' .. bg] = nil -- Only needed for development
--local palette = require('melange/palettes/' .. bg)

--local a = palette.a -- Grays
--local b = palette.b -- Bright foreground colors
--local c = palette.c -- Foreground colors
--local d = palette.d -- Background colors

-- See https://github.com/neovim/neovim/pull/7406
--[[
vim.g.terminal_color_0 = "$C_terminalColor00$"
vim.g.terminal_color_1 = "$C_terminalColor01$"
vim.g.terminal_color_2 = "$C_terminalColor02$"
vim.g.terminal_color_3 = "$C_terminalColor03$"
vim.g.terminal_color_4 = "$C_terminalColor04$"
vim.g.terminal_color_5 = "$C_terminalColor05$"
vim.g.terminal_color_6 = "$C_terminalColor06$"
vim.g.terminal_color_7 = "$C_terminalColor07$"
vim.g.terminal_color_8 = "$C_terminalColor08$"
vim.g.terminal_color_9 = "$C_terminalColor09$"
vim.g.terminal_color_10 = "$C_terminalColor0A$"
vim.g.terminal_color_11 = "$C_terminalColor0B$"
vim.g.terminal_color_12 = "$C_terminalColor0C$"
vim.g.terminal_color_13 = "$C_terminalColor0D$"
vim.g.terminal_color_14 = "$C_terminalColor0E$"
vim.g.terminal_color_15 = "$C_terminalColor0F$"
--]]
local enable_font_variants = true
--vim.g.melange_enable_font_variants == nil or vim.g.melange_enable_font_variants

local bold = enable_font_variants
local italic = enable_font_variants
local underline = enable_font_variants
local undercurl = enable_font_variants
local strikethrough = enable_font_variants

for name, attrs in pairs({
	---- :help highlight-default -------------------------------

	Normal = { bg = "$C_nvim.Normal.bg$", fg = "$C_nvim.Normal.fg$" },
	NormalFloat = { bg = "$C_nvim.NormalFloat.bg$", fg = "$C_nvim.NormalFloat.fg$" },
	NormalNC = "Normal",

	Special = { fg = "$C_nvim.Special.fg$" },

	Identifier = { fg = "$C_nvim.Identifier.fg$" },
	["@variable"] = { fg = "$C_nvim.at_variable.fg$" },
	Function = { fg = "$C_nvim.Function.fg$" },
	Statement = { fg = "$C_nvim.Statement.fg$" },
	Directory = { fg = "$C_nvim.Directory.fg$" },
	String = { fg = "$C_nvim.String.fg$" },
	Comment = { fg = "$C_nvim.Comment.fg$" },
	PreProc = { fg = "$C_nvim.PreProc.fg$" },
	Operator = { fg = "$C_nvim.Operator.fg$" },
	Delimiter = { fg = "$C_nvim.Delimiter.fg$" },
	NeotreeFileName = { fg = "$C_nvim.NeotreeFileName.fg$" },
}) do
	if type(attrs) == "table" then
		vim.api.nvim_set_hl(0, name, attrs)
	else
		vim.api.nvim_set_hl(0, name, { link = attrs })
	end
end
