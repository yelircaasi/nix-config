local vim_opts = function(options)
	if options ~= nil then
		for scope, table in pairs(options) do
			for setting, value in pairs(table) do
				vim[scope][setting] = value
			end
		end
	end
end

vim.opt.shortmess:append("sIW")

vim_opts({
	opt = {
		hidden = false,
		ignorecase = true,
		splitbelow = true,
		splitright = true,
		termguicolors = true,
		number = true,
		relativenumber = true,
		numberwidth = 2,
		undofile = true,
		tabstop = 4,
		-- textwidth = 88,
		wrap = false,
		cursorline = true,
		colorcolumn = "+1",

		mouse = "a",
		spelllang = "en,fr",

		signcolumn = "yes",
		cmdheight = 1,

		updatetime = 250, -- update interval for gitsigns
		clipboard = "unnamedplus",

		-- for indenline
		expandtab = true,
		shiftwidth = 4,

		-- folding
		foldlevelstart = 50, -- open most folds by default
		foldnestmax = 2, -- 2 nested fold max

		-- concealing
		conceallevel = 1, -- nice because JSON quotes are hidden,
		-- but character position is fixed

		-- commands
	},
})

vim.loader.enable()
