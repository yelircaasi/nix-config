local autoclose = require("autoclose")
local rainbow_delimiters = require("rainbow-delimiters")
local ultimate_autopair = require("ultimate-autopair")
local sentiment = require("sentiment")

vim.g.rainbow_delimiters = {
	strategy = {
		[""] = rainbow_delimiters.strategy["global"],
		vim = rainbow_delimiters.strategy["local"],
	},
	query = {
		[""] = "rainbow-delimiters",
		lua = "rainbow-blocks",
	},
	priority = {
		[""] = 110,
		lua = 210,
	},
	highlight = {
		"RainbowDelimiterViolet",
		"RainbowDelimiterYellow",
		"RainbowDelimiterBlue",
		"RainbowDelimiterGreen",
		-- 'RainbowDelimiterRed',
		"RainbowDelimiterOrange",
		"RainbowDelimiterCyan",
	},
}

return autoclose, rainbow_delimiters, ultimate_autopair, sentiment
