local navigator = require("navigator")
local numb = require("numb")
local dropbar = require("dropbar")
local leap = require("leap")
local flash = require("flash")
local gx_extended = require("gx-extended")

gx_extended.setup({
	extensions = {
		-- READ BELOW AS A TUTORIAL
		--{ -- match github repos in lazy.nvim plugin specs
		--  patterns = { '*/plugins/**/*.lua' },
		--  name = "neovim plugins",
		--  match_to_url = function(line_string)
		--    local line = string.match(line_string, '["|\'].*/.*["|\']')
		--    local repo = vim.split(line, ':')[1]:gsub('["|\']', '')
		--    local url = 'https://github.com/' .. repo
		--    return line and repo and url or nil
		--  end,
		--}
	},
})

return navigator, numb, dropbar, leap, flash, gx_extended
