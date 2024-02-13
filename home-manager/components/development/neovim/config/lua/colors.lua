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
vim.g.terminal_color_0 = "$color.terminalColor00$"
vim.g.terminal_color_1 = "$color.terminalColor01$"
vim.g.terminal_color_2 = "$color.terminalColor02$"
vim.g.terminal_color_3 = "$color.terminalColor03$"
vim.g.terminal_color_4 = "$color.terminalColor04$"
vim.g.terminal_color_5 = "$color.terminalColor05$"
vim.g.terminal_color_6 = "$color.terminalColor06$"
vim.g.terminal_color_7 = "$color.terminalColor07$"
vim.g.terminal_color_8 = "$color.terminalColor08$"
vim.g.terminal_color_9 = "$color.terminalColor09$"
vim.g.terminal_color_10 = "$color.terminalColor0A$"
vim.g.terminal_color_11 = "$color.terminalColor0B$"
vim.g.terminal_color_12 = "$color.terminalColor0C$"
vim.g.terminal_color_13 = "$color.terminalColor0D$"
vim.g.terminal_color_14 = "$color.terminalColor0E$"
vim.g.terminal_color_15 = "$color.terminalColor0F$"
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

	Normal = { bg = "<||color.nvim.Normal.bg||>", fg = "<||color.nvim.Normal.fg||>" },
	NormalFloat = { bg = "<||color.nvim.NormalFloat.bg||>", fg = "<||color.nvim.NormalFloat.fg||>" },
	NormalNC = "Normal",

	Special = { fg = "<||color.nvim.Special.fg||>" },
	CursorLine = { bg = "<||color.nvim.CursorLine.bg||>" },

	Identifier = { fg = "<||color.nvim.Identifier.fg||>" }, --$color.nvim.Identifier.fg$" },
	["@variable"] = { fg = "<||color.nvim.at_variable.fg||>" },
	Function = { fg = "<||color.nvim.Function.fg||>" },
	Statement = { fg = "<||color.nvim.Statement.fg||>" },
	Directory = { fg = "<||color.nvim.Directory.fg||>" },
	String = { fg = "<||color.nvim.String.fg||>" },
	Comment = { fg = "<||color.nvim.Comment.fg||>" },
	PreProc = { fg = "<||color.nvim.PreProc.fg||>" },
	Operator = { fg = "<||color.nvim.Operator.fg||>" },
	Delimiter = { fg = "<||color.nvim.Delimiter.fg||>" },
	NeotreeFileName = { fg = "<||color.nvim.NeotreeFileName.fg||>" },
}) do
	if type(attrs) == "table" then
		vim.api.nvim_set_hl(0, name, attrs)
	else
		vim.api.nvim_set_hl(0, name, { link = attrs })
	end
end
