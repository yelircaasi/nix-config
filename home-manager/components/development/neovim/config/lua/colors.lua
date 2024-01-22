local M = {}

M.styles_list = { 'normal', 'dim', 'bright' }

---Change color option (vim.g.hmcolor_config.option)
---It can't be changed directly by modifying that field due to a Neovim lua bug with global variables (schwarzwald_config is a global variable)
---@param opt string: option name
---@param value any: new value
function M.set_options(opt, value)
  local cfg = vim.g.hmcolor_config
  cfg[opt] = value
  vim.g.hmcolor_config = cfg
end

function setup_highlights()

end

function setup_terminal()

end

---Apply the colorscheme (same as ':colorscheme hmcolors')
function M.colorscheme()
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'hmcolors'
  if vim.o.background == 'bright' then
    M.set_options('style', 'bright')
  elseif vim.g.hmcolor_config.style == 'bright' then
    M.set_options('style', 'normal')
  end
  -- require('schwarzwald.highlights').setup()
  -- require('schwarzwald.terminal').setup()
  setup_highlights()  -- TODO
  setup_terminal()    -- TODO
end

---Toggle between schwarzwald styles
function M.toggle()
  local index = vim.g.hmcolor_config.toggle_style_index + 1
  if index > #vim.g.hmcolor_config.toggle_style_list then
    index = 1
  end
  M.set_options('style', vim.g.hmcolor_config.toggle_style_list[index])
  M.set_options('toggle_style_index', index)
  if vim.g.hmcolor_config.style == 'bright' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end

local default_config = {
  -- Main options -- 
  -- choose between 'normal' (regular), 'dim' (greener), and 'bright'
  style = 'normal',
  toggle_style_key = nil,
  toggle_style_list = M.styles_list,
  transparent = false, -- don't set background
  dim_inactive = false, -- don't dim inactive windows
  term_colors = true, -- if true enable the terminal
  ending_tildes = false, -- show the end-of-buffer tildes
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

  -- Changing Formats --
  code_style = {
    comments = 'italic',
    conditionals = 'italic',
    keywords = 'none',
    functions = 'none',
    namespaces = 'italic',
    parameters = 'italic',
    strings = 'none',
    variables = 'none',
  },

  -- Lualine options --
  lualine = {
    transparent = false, -- center bar (c) transparency
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors
  highlights = {}, -- Override highlight groups

  -- Plugins Related --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true, -- use undercurl for diagnostics
    background = true, -- use background color for virtual text
  },
}

---Setup colorscheme options, without applying colorscheme
---@param opts table: a table containing options
function M.setup(opts)
  if not vim.g.hmcolor_config or not vim.g.hmcolor_config.loaded then -- if it's the first time setup() is called
    vim.g.hmcolor_config =
      vim.tbl_deep_extend('keep', vim.g.hmcolor_config or {}, default_config)
    M.set_options('loaded', true)
    M.set_options('toggle_style_index', 1)
  end
  if opts then
    vim.g.hmcolor_config =
      vim.tbl_deep_extend('force', vim.g.hmcolor_config, opts)
    if opts.toggle_style_list then -- this table cannot be extended, it has to be replaced
      M.set_options('toggle_style_list', opts.toggle_style_list)
    end
  end
  if vim.g.hmcolor_config.toggle_style_key then
    vim.api.nvim_set_keymap(
      'n',
      vim.g.hmcolor_config.toggle_style_key,
      -- '<cmd>lua require("schwarzwald").toggle()<cr>',
      '<cmd>lua require("colors").toggle()<cr>',
      { noremap = true, silent = true }
    )
  end
end

function M.load()
  vim.cmd('colorscheme hmcolor')
end

return M


--[[

vim.cmd('hi clear')


-------------------------------------------------------------------------

https://smarttech101.com/how-to-configure-colorscheme-in-vim-neovim/

vim

hi Normal guifg=#ffffff guibg=#333333
hi Comment guifg=#111111 gui=bold
hi Error guifg=#ff0000 gui=undercurl
hi Cursor gui=reverse

lua

vim.api.nvim_set_hl(0, 'Normal', { fg = "#ffffff", bg = "#333333" })
vim.api.nvim_set_hl(0, 'Comment', { fg = "#111111", bold = true })
vim.api.nvim_set_hl(0, 'Error', { fg = "#ffffff", undercurl = true })
vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })


set background=dark
let g:colors_name = 'euclidian'
hi clear Comment
hi Comment guifg=#77405F
hi clear Constant
hi Constant guifg=#D16161
hi clear CursorColumn
hi CursorColumn guibg=#2B2735
hi clear CursorLine
hi CursorLine guibg=#2B2735
hi clear CursorLineNr
hi CursorLineNr guibg=#16131F
hi clear Delimiter
hi Delimiter guifg=#817998
hi clear DiagnosticError
hi DiagnosticError guifg=#E69090
hi clear DiagnosticHint
hi DiagnosticHint guifg=#EFEFEF
hi clear DiagnosticInfo
hi DiagnosticInfo guifg=#D8CEE4 guibg=#181520
hi clear DiagnosticWarning
hi DiagnosticWarning guifg=#FFC590
hi clear Directory
hi Directory guifg=#799AE0
hi clear Error
hi Error guifg=#E69090
hi clear ErrorMsg
hi ErrorMsg guifg=#E69090
hi clear FloatBorder
hi FloatBorder guifg=#817998 guibg=#2B2735
hi clear FoldColumn
hi FoldColumn guifg=#77405F guibg=#16131F
hi clear Folded
hi Folded guifg=#77405F guibg=#2B2735
hi clear Function
hi Function guifg=#AAC3FD
hi clear Identifier
hi Identifier guifg=#D8CEE4 guibg=#181520
hi clear IncSearch
hi IncSearch guifg=#16131F guibg=#E69090
hi clear Keyword
hi Keyword guifg=#799AE0
hi clear LineNr
hi LineNr guifg=#464252 guibg=#16131F
hi clear NonText
hi NonText guifg=#2B2735
hi clear Normal
hi Normal guifg=#D8CEE4 guibg=#181520
hi clear Operator
hi Operator guifg=#9876D9
hi clear Pmenu
hi Pmenu guifg=#D8CEE4 guibg=#2B2735
hi clear PmenuSbar
hi PmenuSbar guibg=#817998
hi clear PmenuSel
hi PmenuSel guibg=#464252
hi clear PmenuThumb
hi PmenuThumb guibg=#464252
hi clear PreProc
hi PreProc guifg=#799AE0
hi clear Question
hi Question guifg=#53B67E
hi clear Search
hi Search guifg=#16131F guibg=#D16161
hi clear SignColumn
hi SignColumn guifg=#2B2735 guibg=#16131F
hi clear Special
hi Special guifg=#AAC3FD
hi clear SpecialChar
hi SpecialChar guifg=#E69090
hi clear SpecialComment
hi SpecialComment guifg=#E69090
hi clear Statement
hi Statement guifg=#799AE0
hi clear StatusLine
hi StatusLine guifg=#16131F guibg=#77405F
hi clear StatusLineNC
hi StatusLineNC guibg=#464252
hi clear StorageClass
hi StorageClass guifg=#C7B1F2
hi clear TabLine
hi TabLine guifg=#77405F guibg=#464252
hi clear TabLineFill
hi TabLineFill guibg=#332F3C
hi clear TabLineSel
hi TabLineSel guifg=#D16161 guibg=#464252
hi clear Tag
hi Tag guifg=#AAC3FD
hi clear Title
hi Title guifg=#77405F
hi clear Todo
hi Todo guifg=#E69090
hi clear Type
hi Type guifg=#C7B1F2
hi clear VertSplit
hi VertSplit guibg=#464252
hi clear Visual
hi Visual guifg=#D8CEE4 guibg=#395081
hi clear WarningMsg
hi WarningMsg guibg=#D16161
hi clear WildMenu
hi WildMenu guifg=#181520 guibg=#D5C876
hi clear diffAdded
hi diffAdded guifg=#53B67E
hi clear diffRemoved
hi diffRemoved guifg=#D16161
finish
--]]

