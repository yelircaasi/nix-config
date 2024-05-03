local luasnip = require("luasnip")
--local friendly_snippets = require("friendly-snippets")
--local ultisnips = require("ultisnips")
--local telescope_ultisnips = require("telescope-ultisnips") - loaded in telescope config
local snippy = require("snippy")

-- look at friendly-snippets page to see how to hook it into luasnip

-- ultisnips
vim.g.UltiSnipsExpandTrigger = "<tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<c-b>"
vim.g.UltiSnipsJumpBackwardTrigger = "<c-z>"
vim.g.UltiSnipsEditSplit = "vertical"

return luasnip, friendly_snippets, ultisnips, telescope_ultisnips, snippy

