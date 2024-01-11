
local cmd = vim.cmd
local g = vim.g

g.mapleader = " "

-- basics
require("options")
require("mappings")

-- plugins without custom config
require("neogit")

-- custom plugin config, named semantically rather than using plugin name
require("plugins.editing")
require("plugins.terminal")
require("plugins.icons")
require("plugins.filetree")
require("plugins.statusline")
require("plugins.bufferline")
require("plugins.lsp")
require("plugins.completion")
require("plugins.quickfix")
require("plugins.markdown")

-- color theme
require("schwarzwald").load()

-- temporary overrides to be adjusted in color theme
vim.cmd("highlight NormalFloat         guibg=#000800")
vim.cmd("highlight NeoTreeEndOfBuffer  guibg=#000800 guifg=#000800")
vim.cmd("highlight NeoTreeNormal       guibg=#000800")
vim.cmd("highlight NeoTreeNormalNC     guibg=#000800")
vim.cmd("highlight NeoTreeWinSeparator guibg=#000800")
vim.cmd("highlight NeoTreeVertSplit    guibg=#900000")
vim.cmd("highlight Terminal            guibg=#000800")

