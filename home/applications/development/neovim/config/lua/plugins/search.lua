local telescope = require("telescope")
--local harpoon = require("harpoon")
local marks = require("marks")
local spaceport = require("spaceport")
local improved_search = require("improved-search")
local highlight_current_n = require("highlight_current_n")
local search = require("search")
local hlslens = require("hlslens")
local hlsearch = require("hlsearch")

telescope.load_extension('ultisnips')
telescope.load_extension('manix')
telescope.load_extension('gh')

-- hlslens
hlslens.setup()

-- return telescope, harpoon, spaceport, improved_search, highlight_current_n, search, hlslens, hlsearch
return telescope, marks, spaceport, improved_search, highlight_current_n, search, hlslens, hlsearch

