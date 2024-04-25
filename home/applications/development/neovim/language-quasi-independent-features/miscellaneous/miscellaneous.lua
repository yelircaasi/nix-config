regexplainer = require("regexplainer")
quicknote = require("quicknote")
carbon_now = require("carbon-now")
colorizer = require("colorizer")
venn = require("venn")
distant = require("distant")
compiler_explorer = require("compiler-explorer")
flatten = require("flatten")
urlview = require("urlview")

-- colorizer
colorizer.setup({
	{
		"nix",
		"css",
		"javascript",
		html = {
			mode = "foreground",
		},
	},
	{
		names = false,
		mode = "foreground",
	},
})

return regexplainer, quicknote, carbon_now, colorizer, venn, distant, compiler_explorer, flatten, urlvew
