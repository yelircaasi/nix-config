
local opt = vim.opt


opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.undofile = true
-- textwidth = 88
-- wrap = true
opt.cursorline = true
opt.colorcolumn = "+1"

opt.mouse = "a"
opt.spelllang = "en,fr"

opt.signcolumn = "yes"
opt.cmdheight = 1

opt.updatetime = 250 -- update interval for gitsigns
opt.clipboard = "unnamedplus"

-- for indenline
opt.expandtab = true
opt.shiftwidth = 4

-- folding
opt.foldlevelstart = 50  -- open most folds by default
opt.foldnestmax = 2  -- 2 nested fold max

return opt
