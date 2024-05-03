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

	Normal = { bg = "<| color.nvim.Normal.bg |>", fg = "<| color.nvim.Normal.fg |>" },
	NormalFloat = { bg = "<| color.nvim.NormalFloat.bg |>", fg = "<| color.nvim.NormalFloat.fg |>" },
	NormalNC = "Normal",
	-- Cursor =  TODO...

	WinSeparator = { bg = "<| color.nvim.WinSeparator.bg |>", fg = "<| color.nvim.WinSeparator.fg |>" },
	-- VertSplit = { bg = "<|color.nvim.VertSplit.bg |>", fg = "<|color.nvim.VertSplit.fg |>" },
	-- Special = { fg = "<|%color.nvim.Special |>" },
	-- CursorLine = { bg = "<|%color.nvim.CursorLine.bg |>" },

	Identifier = { fg = "<| color.nvim.Identifier.fg |>" }, --$color.nvim.Identifier.fg$" },
	["@variable"] = { fg = "<| color.nvim.at_variable.fg |>" },
	Function = { fg = "<| color.nvim.Function.fg |>" },
	Statement = { fg = "<| color.nvim.Statement.fg |>" },
	Directory = { fg = "<| color.nvim.Directory.fg |>" },
	String = { fg = "<| color.nvim.String.fg |>" },
	Comment = { fg = "<| color.nvim.Comment.fg |>" },
	PreProc = { fg = "<| color.nvim.PreProc.fg |>" },
	Operator = { fg = "<| color.nvim.Operator.fg |>" },
	Delimiter = { fg = "<| color.nvim.Delimiter.fg |>" },
	NeotreeFileName = { fg = "<| color.nvim.NeotreeFileName.fg |>" },

	-- inheriting background from default Nvim* colors
	Search = { fg = "<| color.nvim.Search.fg |>", bg = "<| color.nvim.Search.bg |>" },
	CurSearch = { fg = "<| color.nvim.CurSearch.fg |>", bg = "<| color.nvim.CurSearch.bg |>" },

	StatusLine = { fg = "<| color.nvim.StatusLine.fg |>", bg = "<| color.nvim.StatusLine.bg |>" },
	StatusLineNC = { fg = "<| color.nvim.StatusLineNC.fg |>", bg = "<| color.nvim.StatusLineNC.bg |>" },
	Visual = { fg = "<| color.nvim.Visual.fg |>", bg = "<| color.nvim.Visual.bg |>" },
	Folded = { fg = "<| color.nvim.Folded.fg |>", bg = "<| color.nvim.Folded.bg |>" },
	DiffAdd = { fg = "<| color.nvim.DiffAdd.fg |>", bg = "<| color.nvim.DiffAdd.bg |>" },
	DiffChange = { fg = "<| color.nvim.DiffChange.fg |>", bg = "<| color.nvim.DiffChange.bg |>" },
	DiffDelete = { fg = "<| color.nvim.DiffDelete.fg |>" },
	DiffText = { fg = "<| color.nvim.DiffText.fg |>", bg = "<| color.nvim.DiffText.bg |>" },
	Pmenu = { fg = "<| color.nvim.Pmenu.fg |>", bg = "<| color.nvim.Pmenu.bg |>" },
	PmenuSel = { fg = "<| color.nvim.PmenuSel.fg |>", bg = "<| color.nvim.PmenuSel.bg |>" },
	PmenuThumb = { bg = "<| color.nvim.PmenuThumb.bg |>" },
	CursorColumn = { bg = "<| color.nvim.CursorColumn.bg |>" },
	CursorLine = { bg = "<| color.nvim.CursorLine.bg |>" },
	ColorColumn = { bg = "<| color.nvim.ColorColumn.bg |>" },
	WinBar = { fg = "<| color.nvim.WinBar.fg |>", bg = "<| color.nvim.WinBar.bg |>" },
	WinBarNC = { fg = "<| color.nvim.WinBarNC.fg |>", bg = "<| color.nvim.WinBarNC.bg |>" },
	FloatShadow = { bg = "<| color.nvim.FloatShadow.bg |>" },
	FloatShadowThrough = {
		bg = "<| color.nvim.FloatShadowThrough.bg |>",
	},
	MatchParen = { bg = "<| color.nvim.MatchParen.bg |>" },
	RedrawDebugClear = { bg = "<| color.nvim.RedrawDebugClear.bg |>" },
	RedrawDebugComposed = {
		bg = "<| color.nvim.RedrawDebugComposed.bg |>",
	},
	RedrawDebugRecompose = {
		bg = "<| color.nvim.RedrawDebugRecompose.bg |>",
	},
	Error = { fg = "<| color.nvim.Error.fg |>", bg = "<| color.nvim.Error.bg |>" },

	-- inheriting foreground from default Nvim* colors
	SpecialKey = { fg = "<| color.nvim.SpecialKey.fg |>" },
	NonText = { fg = "<| color.nvim.NonText.fg |>" },
	Directory = { fg = "<| color.nvim.Directory.fg |>" },
	ErrorMsg = { fg = "<| color.nvim.ErrorMsg.fg |>" },
	MoreMsg = { fg = "<| color.nvim.MoreMsg.fg |>" },
	ModeMsg = { fg = "<| color.nvim.ModeMsg.fg |>" },
	LineNr = { fg = "<| color.nvim.LineNr.fg |>" },
	Question = { fg = "<| color.nvim.Question.fg |>" },
	WarningMsg = { fg = "<| color.nvim.WarningMsg.fg |>" },
	SignColumn = { fg = "<| color.nvim.SignColumn.fg |>" },
	Conceal = { fg = "<| color.nvim.Conceal.fg |>", bg = "<| color.nvim.Conceal.bg |>" },
	QuickFixLine = { fg = "<| color.nvim.QuickFixLine.fg |>" },
	Special = { fg = "<| color.nvim.Special.fg |>" },

	DiagnosticError = { fg = "<| color.nvim.DiagnosticError.fg |>" },
	DiagnosticFloatingWarn = { fg = "<| color.nvim.DiagnosticFloatingWarn.fg |>" },
	DiagnosticWarn = { fg = "<| color.nvim.DiagnosticWarn.fg |>" },
	DiagnosticFloatingInfo = { fg = "<| color.nvim.DiagnosticFloatingInfo.fg |>" },
	DiagnosticInfo = { fg = "<| color.nvim.DiagnosticInfo.fg |>" },
	DiagnosticFloatingHint = { fg = "<| color.nvim.DiagnosticFloatingHint.fg |>" },
	DiagnosticHint = { fg = "<| color.nvim.DiagnosticHint.fg |>" },
	DiagnosticFloatingOk = { fg = "<| color.nvim.DiagnosticFloatingOk.fg |>" },
	DiagnosticOk = { fg = "<| color.nvim.DiagnosticOk.fg |>" },
	Added = { fg = "<| color.nvim.Added.fg |>" },
	["@diff.minus"] = { fg = "<| color.nvim.at_diff_minus.fg |>" },
	Removed = { fg = "<| color.nvim.Removed.fg |>" },
	Changed = { fg = "<| color.nvim.Changed.fg |>" },
	CmpItemAbbrDeprecatedDefault = { fg = "<| color.nvim.CmpItemAbbrDeprecatedDefault.fg |>" },
	CmpItemKindDefault = { fg = "<| color.nvim.CmpItemKindDefault.fg |>" },
	RainbowDelimiter1 = { fg = "<| color.nvim.RainbowDelimiter1 |>" },
	RainbowDelimiter2 = { fg = "<| color.nvim.RainbowDelimiter2 |>" },
	RainbowDelimiter3 = { fg = "<| color.nvim.RainbowDelimiter3 |>" },
	RainbowDelimiter4 = { fg = "<| color.nvim.RainbowDelimiter4 |>" },
	RainbowDelimiter5 = { fg = "<| color.nvim.RainbowDelimiter5 |>" },
	RainbowDelimiter6 = { fg = "<| color.nvim.RainbowDelimiter6 |>" },
	RainbowDelimiter7 = { fg = "<| color.nvim.RainbowDelimiter7 |>" },
}) do
	if type(attrs) == "table" then
		vim.api.nvim_set_hl(0, name, attrs)
	else
		vim.api.nvim_set_hl(0, name, { link = attrs })
	end
end
