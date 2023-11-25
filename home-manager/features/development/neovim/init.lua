local cmd = vim.cmd
local g = vim.g

g.mapleader = " "


-- misc utils
local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

opt("o", "hidden", true)
opt("o", "ignorecase", true)
opt("o", "splitbelow", true)
opt("o", "splitright", true)
opt("o", "termguicolors", true)
opt("w", "number", true)
opt("w", "relativenumber", true)
opt("o", "numberwidth", 2)
opt("b", "undofile", true)
opt("b", "textwidth", 88)
opt("w", "wrap", true)
opt("w", "cursorline", true)
opt("w", "colorcolumn", "+1")

opt("o", "mouse", "a")
opt("b", "spelllang", "en,fr")


opt("w", "signcolumn", "yes")
opt("o", "cmdheight", 1)

opt("o", "updatetime", 250) -- update interval for gitsigns
opt("o", "clipboard", "unnamedplus")

-- for indenline
opt("b", "expandtab", true)
opt("b", "shiftwidth", 4)

-- folding
opt("o", "foldlevelstart", 50)  -- open most folds by default
opt("w", "foldnestmax", 2)  -- 2 nested fold max

-- nvim-dev-webicons

require "nvim-web-devicons".setup {
     default = true;
    override = {
        html = {
            icon = "",
            color = "#DE8C92",
            name = "html"
        },
        css = {
            icon = "",
            color = "#61afef",
            name = "css"
        },
        js = {
            icon = "",
            color = "#EBCB8B",
            name = "js"
        },
        ts = {
            icon = "ﯤ",
            color = "#519ABA",
            name = "ts"
        },
        kt = {
            icon = "󱈙",
            color = "#ffcb91",
            name = "kt"
        },
        png = {
            icon = " ",
            color = "#BD77DC",
            name = "png"
        },
        jpg = {
            icon = " ",
            color = "#BD77DC",
            name = "jpg"
        },
        jpeg = {
            icon = " ",
            color = "#BD77DC",
            name = "jpeg"
        },
        mp3 = {
            icon = "",
            color = "#C8CCD4",
            name = "mp3"
        },
        mp4 = {
            icon = "",
            color = "#C8CCD4",
            name = "mp4"
        },
        out = {
            icon = "",
            color = "#C8CCD4",
            name = "out"
        },
        Dockerfile = {
            icon = "",
            color = "#b8b5ff",
            name = "Dockerfile"
        },
        rb = {
            icon = "",
            color = "#ff75a0",
            name = "rb"
        },
        vue = {
            icon = "﵂",
            color = "#7eca9c",
            name = "vue"
        },
        py = {
            icon = "",
            color = "#a7c5eb",
            name = "py"
        },
        toml = {
            icon = "",
            color = "#61afef",
            name = "toml"
        },
        lock = {
            icon = "",
            color = "#DE6B74",
            name = "lock"
        },
        zip = {
            icon = "",
            color = "#EBCB8B",
            name = "zip"
        },
        xz = {
            icon = "",
            color = "#EBCB8B",
            name = "xz"
        },
        deb = {
            icon = "",
            color = "#a3b8ef",
            name = "deb"
        },
        rpm = {
            icon = "",
            color = "#fca2aa",
            name = "rpm"
        }
    }
}

-- Bufferline

-- colors

local bar_bg = "#002b36"
local activeBuffer_bg = "#657b83"
local inactiveBuffer_bg = "#073642"
local activeBuffer_fg = "#fdf6e3"
local visibleBuffer_fg = "#eee8d5"
local inactiveBuffer_fg = "#93a1a1"
local duplicate_fg = "#586e75"
local modified_fg = "#b58900"
local info_fg = "#268bd2"
local warning_fg = "#cb4b16"
local error_fg = "#dc322f"

require "bufferline".setup {
    options = {
        buffer_close_icon= "",
        modified_icon = "",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        enforce_regular_tabs = false,
        view = "default",
        show_buffer_close_icons = true,
        show_close_icon = false,
        -- separator_style = "thin",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        -- separator_style = {'', ''}
        separator_style = "slant",
        -- offsets = {{filetype = "NvimTree", text = "File Explorer"}},
        offsets = {{filetype = "neo-tree", text = "File Explorer"}},
        show_tab_indicators = false
    },
    highlights = {
        background = {
            fg = inactiveBuffer_fg,
            bg = inactiveBuffer_bg
        },
        fill = {
            bg = bar_bg,
            fg = inactiveBuffer_fg
        },
        tab = {
            bg = inactiveBuffer_bg,
            fg = inactiveBuffer_fg
        },
        -- focused window
        buffer_selected = {
            fg = activeBuffer_fg,
            bg = activeBuffer_bg,
            bold = true
        },
        tab_selected = {
            fg = activeBuffer_fg,
            bg = activeBuffer_bg,
            bold = true
        },
        duplicate_selected = {
            fg = inactiveBuffer_fg,
            bg = activeBuffer_bg,
        },
        separator_selected = {
            fg = bar_bg,
            bg = activeBuffer_bg
        },
        -- unfocused opened window
        buffer_visible = {
            bg = inactiveBuffer_bg,
            fg = visibleBuffer_fg
        },
        close_button = {
            bg = inactiveBuffer_bg,
            fg = inactiveBuffer_fg
        },
        close_button_visible = {
            bg = inactiveBuffer_bg,
            fg = visibleBuffer_fg
        },
        close_button_selected = {
            fg = activeBuffer_fg,
            bg = activeBuffer_bg,
            bold = true
        },
        duplicate_visible = {
            fg = duplicate_fg,
            bg = inactiveBuffer_bg,
        },
        separator_visible = {
            bg = inactiveBuffer_bg,
            fg = bar_bg
        },
        duplicate = {
            fg = duplicate_fg,
            bg = inactiveBuffer_bg,
        },
        separator = {
            bg = inactiveBuffer_bg,
            fg = bar_bg
        },
        indicator_selected = {
            fg = activeBuffer_fg,
            bg = activeBuffer_bg
        },
        modified_selected = {
            fg = modified_fg,
            bg = activeBuffer_bg
        },
        modified_visible = {
            fg = modified_fg,
            bg = inactiveBuffer_bg
        },
        modified = {
            fg = modified_fg,
            bg = inactiveBuffer_bg
        },
        info_selected = {
            fg = activeBuffer_fg,
            bg = activeBuffer_bg,
            undercurl = true,
            sp = info_fg
        },
        info_visible = {
            fg = visibleBuffer_fg,
            bg = inactiveBuffer_bg,
            undercurl = true,
            sp = info_fg
        },
        info = {
            fg = inactiveBuffer_fg,
            bg = inactiveBuffer_bg,
            undercurl = true,
            sp = info_fg
        },
        info_diagnostic_selected = {
            fg = info_fg,
            bg = activeBuffer_bg,
            bold = true
        },
        info_diagnostic_visible = {
            fg = info_fg,
            bg = inactiveBuffer_bg,
            bold = true
        },
        info_diagnostic = {
            fg = info_fg,
            bg = inactiveBuffer_bg,
        },
        warning_selected = {
            fg = activeBuffer_fg,
            bg = activeBuffer_bg,
            undercurl = true,
            sp = warning_fg
        },
        warning_visible = {
            fg = visibleBuffer_fg,
            bg = inactiveBuffer_bg,
            undercurl = true,
            sp = warning_fg
        },
        warning = {
            fg = inactiveBuffer_fg,
            bg = inactiveBuffer_bg,
            undercurl = true,
            sp = warning_fg
        },
        warning_diagnostic_selected = {
            fg = warning_fg,
            bg = activeBuffer_bg,
            bold = true
        },
        warning_diagnostic_visible = {
            fg = warning_fg,
            bg = inactiveBuffer_bg,
            bold = true
        },
        warning_diagnostic = {
            fg = warning_fg,
            bg = inactiveBuffer_bg,
        },
        error_selected = {
            fg = activeBuffer_fg,
            bg = activeBuffer_bg,
            undercurl = true,
            sp = error_fg
        },
        error_visible = {
            fg = visibleBuffer_fg,
            bg = inactiveBuffer_bg,
            undercurl = true,
            sp = error_fg
        },
        error = {
            fg = inactiveBuffer_fg,
            bg = inactiveBuffer_bg,
            undercurl = true,
            sp = error_fg
        },
        error_diagnostic_selected = {
            fg = error_fg,
            bg = activeBuffer_bg,
            bold = true
        },
        error_diagnostic_visible = {
            fg = error_fg,
            bg = inactiveBuffer_bg,
            bold = true
        },
        error_diagnostic = {
            fg = error_fg,
            bg = inactiveBuffer_bg,
        }
    }
}

local opt = {silent = true}

local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

--command that adds new buffer and moves to it
map("n", "<C-t>", [[<Cmd>tabnew<CR>]], opt)

--removing a buffer
map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt)

-- tabnew and tabprev
map("n", "<S-t>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-n>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
map("n", "gb", [[<Cmd>BufferLinePick<CR>]], opt)

-- Statusline

local gl = require("galaxyline")
local gls = gl.section

gl.short_line_list = {"NvimTree", "minimap", "neo-tree"} -- keeping this table { } as empty will show inactive statuslines

local colors = {
    bg = "#073642",
    line_bg = "#073642",
    fg = "#839496",
    fg_green = "#859900",
    fg_dark = "#002b36";
    yellow = "#b58900",
    cyan = "#2aa198",
    darkblue = "#268bd2",
    green = "#859900",
    orange = "#cb4b16",
    purple = "#6c71c4",
    magenta = "#d33682",
    blue = "#268bd2",
    red = "#dc322f",
    lightbg = "#657b83",
} 

local mode_colors = {
    __ = {colors.fg_dark, colors.yellow},
    c  = {colors.fg_dark, colors.magenta},
    i  = {colors.fg_dark, colors.orange},
    ic = {colors.fg_dark, colors.orange},
    ix = {colors.fg_dark, colors.orange},
    n  = {colors.fg_dark, colors.yellow},
    ni = {colors.fg_dark, colors.yellow},
    no = {colors.fg_dark, colors.yellow},
    R  = {colors.fg_dark, colors.orange},
    Rv = {colors.fg_dark, colors.orange},
    s  = {colors.fg_dark, colors.orange},
    S  = {colors.fg_dark, colors.orange},
    [""] = {colors.fg_dark, colors.red},
    t  = {colors.fg_dark, colors.yellow},
    v  = {colors.fg_dark, colors.green},
    V  = {colors.fg_dark, colors.green},
    ['']  = {colors.fg_dark, colors.green},
}

local function highlight(group, fg, bg, gui)
    local cmd = string.format('highlight %s guifg=%s guibg=%s', group, fg, bg)
    if gui ~= nil then cmd = cmd .. ' gui=' .. gui end
    vim.cmd(cmd)
end

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then
        return true
    end
    return false
end

gls.left[1] = {
    statusIcon = {
        provider = function()
            return "  " .. require("galaxyline.providers.fileinfo").get_file_icon() .. " "
        end,
        condition = buffer_not_empty,
        separator = " ",
        highlight = {require("galaxyline.providers.fileinfo").get_file_icon_color, colors.bg},
        separator_highlight = {colors.bg, colors.fg}
    }
}

gls.left[2] = {
    FileName = {
        provider = {"FileName", "FileSize"},
        condition = buffer_not_empty,
        highlight = {colors.bg, colors.fg}
    }
}

gls.left[3] = {
    teech = {
        provider = function()
            return ""
        end,
        highlight = {colors.fg, colors.bg}
    }
}

gls.left[4] = {
    DiffAdd = {
        provider = "DiffAdd",
        condition = checkwidth,
        icon = "   ",
        highlight = {colors.green, colors.line_bg},
    }
}

gls.left[5] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = " ",
        highlight = {colors.orange, colors.line_bg},
    }
}

gls.left[6] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = " ",
        highlight = {colors.red, colors.line_bg},
    }
}

-- gls.left[7] = {
--     LeftEnd = {
--         provider = function()
--             return " "
--         end,
--         separator = " ",
--         separator_highlight = {colors.line_bg, colors.line_bg},
--         highlight = {colors.line_bg, colors.line_bg}
--     }
-- }

gls.left[7] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = {colors.red, colors.bg},
    }
}

-- gls.left[8] = {
--     Space = {
--         provider = function()
--             return " "
--         end,
--         highlight = {colors.line_bg, colors.line_bg}
--     }
-- }

gls.left[9] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "  ",
        highlight = {colors.orange, colors.bg}
    }
}

gls.right[1] = {
    GitIcon = {
        provider = function()
            return "   "
        end,
        condition = require("galaxyline.providers.vcs").check_git_workspace,
        highlight = {colors.green, colors.line_bg}
    }
}

gls.right[2] = {
    GitBranch = {
        provider = "GitBranch",
        condition = require("galaxyline.providers.vcs").check_git_workspace,
        highlight = {colors.green, colors.line_bg}
    }
}

gls.right[3] = {
    ViMode = {
        provider = function()
            local modehl = mode_colors[vim.fn.mode()]
            highlight('GalaxyViMode', modehl[1], modehl[2])
            highlight('GalaxyViModeInv', modehl[2], modehl[1])
            highlight('GalaxyViModeSep', colors.bg, modehl[2])
            highlight('GalaxyViModeInvSep', modehl[2], colors.bg)
          
            function setDefault (t, d)
              local mt = {__index = function () return d end}
              setmetatable(t, mt)
            end
            local icons = {
              __ = '- ',
              c  = ' command ',
              i  = ' insert ',
              ic = ' insert ',
              ix = ' insert ',
              n  = ' normal ',
              ni = ' normal ',
              no = ' normal ',
              R  = '﯒ replace ',
              Rv = '﯒ replace ',
              s  = ' select ',
              S  = ' select ',
              [""] = ' select ',
              t  = ' terminal ',
              v  = ' visual ',
              V  = ' visual Line ',
              [''] = ' visual Block ',
            }
            setDefault(icons, vim.fn.mode())
            return icons[vim.fn.mode()]
        end,
        highlight = "GalaxyViMode",
        separator_highlight = "GalaxyViModeInvSep",
        separator = " "
    }
}

 gls.right[4] = {
     right_LeftRounded = {
        provider = function()
            return ""
        end,
        highlight = "GalaxyViModeSep",
     }
 }

 gls.right[5] = {
     right_saveStatus = {
        provider = function()
          return "  " .. vim.bo.filetype .. " "
        end,
        highlight = {colors.blue, colors.bg},
     }
 }

gls.right[6] = {
    PerCent = {
        provider = "LinePercent",
        separator = "",
        separator_highlight = {colors.fg, colors.bg},
        highlight = {colors.bg, colors.fg}
    }
}

gls.right[7] = {
    SpecialIconsSep = {
        provider = function()
          return ""
        end,
        highlight = {colors.yellow, colors.fg}
    }
}

gls.right[8] = {
    ReadOnly = {
        provider = function()
          if vim.bo.readonly then
            highlight('GalaxyReadOnly', colors.red, colors.yellow)
            return "  "
          else
            highlight('GalaxyReadOnly', colors.cyan, colors.yellow)
            return "  "
          end
        end,
        highlight = "GalaxyReadOnly"
    }
}

gls.right[9] = {
    Modified = {
        provider = function()
          if vim.bo.modified then
            return "  "
          else
            return "   "
          end
        end,
        separator = "",
        separator_highlight = {colors.bg, colors.yellow},
        highlight = {colors.bg, colors.yellow}
    }
}

gls.right[10] = {
    Paste = {
        provider = function()
          if vim.o.paste then
            return "  "
          else
            return "   "
          end
        end,
        separator = "",
        separator_highlight = {colors.bg, colors.yellow},
        highlight = {colors.bg, colors.yellow}
    }
}

gls.right[11] = {
    Spell = {
        provider = function()
          if vim.wo.spell then
            return " 暈 (" .. vim.o.spelllang .. ") "
          else
            return "   "
          end
        end,
        separator = "",
        separator_highlight = {colors.bg, colors.yellow},
        highlight = {colors.bg, colors.yellow}
    }
}

require("colorizer").setup()
require("neoscroll").setup()

-- Lspconfig
function on_attach(client, bufnr)
    local function map(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings
    local opts = {noremap = true, silent = true}
    map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    map("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    map("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    map("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    map("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    map("n", "<leader>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
    map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
    map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
    map("n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
    map("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

    -- Set some keybinds conditional on server capabilities
    if client.server_capabilities.document_formatting then
        map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.server_capabilities.document_range_formatting then
        map("v", "<leader>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end
end

local lspconf = require "lspconfig"
local servers = {"pyright" , "bashls", "rls", "jsonls", "rnix", "eslint"}
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for k, lang in pairs(servers) do
    lspconf[lang].setup {
        root_dir = vim.loop.cwd,
        on_attach = on_attach,
        capabilities = capabilities,
    }
  end

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)

-- lua lsp settings
require "lspconfig".lua_ls.setup {
    cmd = {"lua-lsp"},
    root_dir = function()
        return vim.loop.cwd()
    end,
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = vim.split(package.path, ";")
            },
            diagnostics = {
                globals = {"vim"}
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                }
            },
            telemetry = {
                enable = false
            }
        }
    }
}

require "lspconfig".jsonls.setup { 
    cmd = {"json-languageserver"},
    root_dir = function()
        return vim.loop.cwd()
    end,
    on_attach = on_attach,
}

require "lspconfig".html.setup { 
    cmd = {"html-languageserver"},
    root_dir = function()
        return vim.loop.cwd()
    end,
    on_attach = on_attach,
}

require "lspconfig".cssls.setup { 
    cmd = {"css-languageserver"},
    root_dir = function()
        return vim.loop.cwd()
    end,
    on_attach = on_attach,
}

-- Compe
vim.o.completeopt = "menuone,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"

local capabilities
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
    view = 'native',
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(':', {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = 'path' }
--   }, {
--     { name = 'cmdline' }
--   })
-- })

-- Set up lspconfig.
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--   capabilities = capabilities
-- }


-- require "compe".setup {
--     enabled = true,
--     autocomplete = true,
--     debug = false,
--     min_length = 1,
--     preselect = "enable",
--     throttle_time = 80,
--     source_timeout = 200,
--     incomplete_delay = 400,
--     max_abbr_width = 100,
--     max_kind_width = 100,
--     max_menu_width = 100,
--     documentation = true,
--     source = {
--         path = true,
--         buffer = true,
--         calc = true,
--         vsnip = true,
--         nvim_lsp = true,
--         nvim_lua = true,
--         spell = true,
--         tags = true,
--         snippets_nvim = true,
--         treesitter = true
--     }
-- }

-- map('i', '<C-Space>', "compe#complete()", {expr = true, noremap = true, silent = true})
-- map('i', '<CR>', "compe#confirm('<CR>')", {expr = true, noremap = true, silent = true})
-- map('i', '<C-e>', "compe#close('<C-e>')", {expr = true, noremap = true, silent = true})

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

-- tab completion

-- _G.tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-n>"
--     elseif check_back_space() then
--         return t "<Tab>"
--     else
--         -- return vim.fn["compe#complete"]()
--         return cmp.mapping.complete()
--     end
-- end
-- _G.s_tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-p>"
--     elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
--         return t "<Plug>(vsnip-jump-prev)"
--     else
--         return t "<S-Tab>"
--     end
-- end

--  mappings

-- map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

function _G.completions()
    local npairs = require("nvim-autopairs")
    if vim.fn.pumvisible() == 1 then
        if vim.fn.complete_info()["selected"] ~= -1 then
            return vim.fn["compe#confirm"]("<CR>")
        end
    end
    return npairs.check_break_line_char()
end

-- local base16 = require "base16"
-- base16(base16.themes["solarized-dark"], true)
vim.cmd('colorscheme base16-rose-pine-moon')

-- blankline
local indent = 4

g.indent_blankline_char = "▏"
g.indent_blankline_use_treesitter = true
g.indent_blankline_show_current_context = true

cmd "highlight IndentBlanklineChar guifg=#073642 gui=nocombine"

g.indent_blankline_filetype_exclude = { "help", "terminal" }
g.indent_blankline_buftype_exclude = { "terminal" }

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

-- Treesitter
local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
    parser_install_dir = "~/.local/share/nvim-treesitter/parser";
    -- ensure_installed = {
    --     "javascript",
    --     "html",
    --     "css",
    --     "bash",
    --     "lua",
    --     "json",
    --     "python",
    --     "rust",
    --     "nix",
    -- },
    highlight = {
        enable = true,
        use_languagetree = true
    },
    autopairs = {enable = true},
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<CR>',
        scope_incremental = '<CR>',
        -- node_incremental = '<TAB>',
        -- node_decremental = '<S-TAB>',
      },
    }
}

-- Mappings

local opt = {}

-- vim.cmd([[nnoremap <expr> s v:count ? (v:count > 5 ? "m'" . v:count : '') . 's' : 'gs']])
-- vim.cmd([[nnoremap <expr> r v:count ? (v:count > 5 ? "m'" . v:count : '') . 'r' : 'gr']])

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them!

-- map("n", "dd", [=[ "_dd ]=], opt)
-- map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

-- copy any selected text with pressing y

map("", "<leader>c", '"+y', opt)

-- OPEN TERMINALS --
map("n", "<C-S-h>", [[<Cmd>vnew term://zsh <CR>]], opt) -- open term over right
map("n", "<C-H>", [[<Cmd> split term://zsh | resize 10 <CR>]], opt) -- open term bottom

-- COPY EVERYTHING --
-- map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

-- toggle numbers ---
map("n", "<leader>n", [[ <Cmd> set nu!<CR>]], opt)
map("n", "<leader>m", [[ <Cmd> set nu! rnu!<CR>]], opt)

map("n", "<leader>z", [[ <Cmd> ZenMode<CR>]], opt)
-- Writing mode
local writing_mode = false
-- local spell_mode = vim.wo.spell
function toggle_writing_mode()
  require("zen-mode").toggle({
    window = {width = 100, options = {number = false, relativenumber = false, signcolumn = "no", linebreak = true, cursorline = false, colorcolumn = "", spell=true}},
    plugins = {options = {textwidth = 0}}
  })
  if writing_mode then
    -- base16(base16.themes["solarized-dark"], true)
    vim.cmd('colorscheme base16-rose-pine-moon')
    set_highlights()
    writing_mode = false
  else
    -- base16(base16.themes["solarized-light"], true)
    vim.cmd('colorscheme base16-rose-pine-moon')
    writing_mode = true
  end
end

map("n", "<leader>Z", [[ <Cmd> lua toggle_writing_mode()<CR>]], opt)
map("i", "<down>", "<c-\\><c-o>gj", {nowait = true, noremap = true})
map("i", "<up>", "<c-\\><c-o>gk", {nowait = true, noremap = true})
    


map("n", "<F11>", [[ <Cmd> set spell!<CR>]], opt)
map("i", "<F11>", [[ <Cmd> set spell!<CR>]], opt)
map("n", "<F2>", [[ <Cmd>set paste!<CR>]], opt)
map("i", "<F2>", [[ <Cmd>set paste!<CR>]], opt)


map('n', '<C-c>', '<cmd> let @/ = ""<CR>', opt)

-- map('n', '<leader>ç', '<cmd> MinimapToggle<CR>', opt)
map('t', '<Esc>', '<C-\\><C-n>', opt)

-- highlights --
function set_highlights()

  cmd "hi LineNr guifg=#657b83 guibg=NONE"
  cmd "hi Comment guifg=#657b83"

  cmd "hi SignColumn guibg=NONE"
  cmd "hi VertSplit guibg=NONE guifg=#073642"
  cmd "hi EndOfBuffer guifg=#073642"
  cmd "hi PmenuSel guibg=#859900"
  cmd "hi Pmenu  guibg=#002b36"

  cmd "hi Normal guibg=NONE ctermbg=NONE"
  -- cmd "hi Normal guibg=#002b36"

  cmd "hi CursorLine guibg=#073642"
  cmd "hi ColorColumn guibg=#073642"
end
set_highlights()

-- Telescope

require("telescope").setup({
    defaults = {
    preview = {
      mime_hook = function(filepath, bufnr, opts)
        local is_image = function(filepath)
          local image_extensions = {'png','jpg'}   -- Supported image formats
          local split_path = vim.split(filepath:lower(), '.', {plain=true})
          local extension = split_path[#split_path]
          return vim.tbl_contains(image_extensions, extension)
        end
        if is_image(filepath) then
          local term = vim.api.nvim_open_term(bufnr, {})
          local function send_output(_, data, _ )
            for _, d in ipairs(data) do
              vim.api.nvim_chan_send(term, d..'\r\n')
            end
          end
          vim.fn.jobstart(
            {
              'kitty', '+kitten', 'icat', filepath  -- Terminal image viewer command
            }, 
            {on_stdout=send_output, stdout_buffered=true})
        else
          require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
        end
      end
    },
  }
})

local opt = {noremap = true, silent = true}

vim.g.mapleader = " "

-- mappings
map("n", "<Leader>ff", [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opt)
map("n", "<Leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opt)
map("n", "<Leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opt)
map("n", "<Leader>fs", [[<Cmd>lua require('telescope.builtin').spell_suggest()<CR>]], opt)
map("n", "<Leader>fa", [[<Cmd>lua require('telescope.builtin').lsp_code_actions()<CR>]], opt)
map("n", "<Leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opt)
map("n", "<Leader>fo", [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], opt)
map("n", "<Leader>fe", [[<Cmd>lua require('telescope.builtin').symbols()<CR>]], opt)
map("n", "<Leader>ft", [[<Cmd>lua require('telescope.builtin').treesitter()<CR>]], opt)
map("n", "<Leader>fm", [[<Cmd> Neoformat<CR>]], opt)

-- nvimTree
-- vim.o.termguicolors = true



-- local get_lua_cb = function(cb_name)
--     return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
-- end

-- -- Mappings for nvimtree

-- map("n", "<leader>a", ":NvimTreeToggle<CR>", opt)

-- -- local tree_cb = require'nvim-tree.config'.nvim_tree_callback
-- -- vim.g.nvim_tree_bindings = {
-- --   { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
-- --   { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
-- --   { key = "<C-v>",                        cb = tree_cb("vsplit") },
-- --   { key = "<C-x>",                        cb = tree_cb("split") },
-- --   { key = "<C-t>",                        cb = tree_cb("tabnew") },
-- --   { key = "<",                            cb = tree_cb("prev_sibling") },
-- --   { key = ">",                            cb = tree_cb("next_sibling") },
-- --   { key = "P",                            cb = tree_cb("parent_node") },
-- --   { key = "<BS>",                         cb = tree_cb("close_node") },
-- --   { key = "<S-CR>",                       cb = tree_cb("close_node") },
-- --   { key = "<Tab>",                        cb = tree_cb("preview") },
-- --   { key = "K",                            cb = tree_cb("first_sibling") },
-- --   { key = "J",                            cb = tree_cb("last_sibling") },
-- --   { key = "I",                            cb = tree_cb("toggle_ignored") },
-- --   { key = "H",                            cb = tree_cb("toggle_dotfiles") },
-- --   { key = "R",                            cb = tree_cb("refresh") },
-- --   { key = "a",                            cb = tree_cb("create") },
-- --   { key = "d",                            cb = tree_cb("remove") },
-- --   { key = "r",                            cb = tree_cb("rename") },
-- --   { key = "<C-r>",                        cb = tree_cb("full_rename") },
-- --   { key = "x",                            cb = tree_cb("cut") },
-- --   { key = "c",                            cb = tree_cb("copy") },
-- --   { key = "p",                            cb = tree_cb("paste") },
-- --   { key = "y",                            cb = tree_cb("copy_name") },
-- --   { key = "Y",                            cb = tree_cb("copy_path") },
-- --   { key = "gy",                           cb = tree_cb("copy_absolute_path") },
-- --   { key = "[c",                           cb = tree_cb("prev_git_item") },
-- --   { key = "]c",                           cb = tree_cb("next_git_item") },
-- --   { key = "-",                            cb = tree_cb("dir_up") },
-- --   { key = "q",                            cb = tree_cb("close") },
-- --   { key = "g?",                           cb = tree_cb("toggle_help") },
-- -- }
-- local tree_cb = require'nvim-tree.config'.nvim_tree_callback
-- require'nvim-tree'.setup {
--   -- side = "left",
--   -- width = 25,
--   -- ignore = {".git", "node_modules", ".cache"},
--   -- auto_ignore_ft = {'startify'},
--   -- auto_open = true,
--   -- tab_open = true,
--   -- auto_close = false,
--   -- quit_on_open = true,
--   -- follow = true,
--   -- indent_markers = true,
--   -- hide_dotfiles = true,
--   -- git_hl = true,
--   -- root_folder_modifier = ":~",
--   -- -- tab_open = false,
--   -- allow_resize = true,
--   -- -- lsp_diagnostics = true,
--   -- diagnostics = {
--   --   enable = true,
--   --   icons = {
--   --     hint = "",
--   --     info = "",
--   --     warning = "",
--   --     error = "",
--   --   }
--   -- },
--   -- disable_netrw = false,
--   -- bindings = {
--   --   -- ["<CR>"] = ":YourVimFunction()<cr>",
--   --   -- ["u"] = ":lua require'some_module'.some_function()<cr>",

--   --   -- default mappings
--   --   ["<CR>"]           = tree_cb("edit"),
--   --   ["o"]              = tree_cb("edit"),
--   --   ["<2-LeftMouse>"]  = tree_cb("edit"),
--   --   ["<2-RightMouse>"] = tree_cb("cd"),
--   --   ["<C-]>"]          = tree_cb("cd"),
--   --   ["<C-v>"]          = tree_cb("vsplit"),
--   --   ["<C-x>"]          = tree_cb("split"),
--   --   ["<C-t>"]          = tree_cb("tabnew"),
--   --   ["<"]              = tree_cb("prev_sibling"),
--   --   [">"]              = tree_cb("next_sibling"),
--   --   ["<BS>"]           = tree_cb("close_node"),
--   --   ["<S-CR>"]         = tree_cb("close_node"),
--   --   ["<Tab>"]          = tree_cb("preview"),
--   --   ["I"]              = tree_cb("toggle_ignored"),
--   --   ["H"]              = tree_cb("toggle_dotfiles"),
--   --   ["R"]              = tree_cb("refresh"),
--   --   ["a"]              = tree_cb("create"),
--   --   ["d"]              = tree_cb("remove"),
--   --   ["r"]              = tree_cb("rename"),
--   --   ["<C-r>"]          = tree_cb("full_rename"),
--   --   ["x"]              = tree_cb("cut"),
--   --   ["c"]              = tree_cb("copy"),
--   --   ["p"]              = tree_cb("paste"),
--   --   ["y"]              = tree_cb("copy_name"),
--   --   ["Y"]              = tree_cb("copy_path"),
--   --   ["gy"]             = tree_cb("copy_absolute_path"),
--   --   ["[c"]             = tree_cb("prev_git_item"),
--   --   ["]c"]             = tree_cb("next_git_item"),
--   --   ["-"]              = tree_cb("dir_up"),
--   --   ["q"]              = tree_cb("close"),
--   -- }
--   renderer = {
--     icons = {
--       show = {
--         git = true,
--         folder = true,
--         file = true
--       },
--       glyphs = {
--         default = " ",
--         symlink = " ",
--         git = {
--             unstaged = "✗",
--             staged = "✓",
--             unmerged = "",
--             renamed = "➜",
--             untracked = "★"
--         },
--         folder = {
--             default = "",
--             open = "",
--             symlink = ""
--         }

--       }
--     }
--   }
-- }

-- cmd "hi NvimTreeFolderIcon guifg = #268bd2"
-- cmd "hi NvimTreeFolderName guifg = #268bd2"
-- cmd "hi NvimTreeIndentMarker guifg=#073642"

-- neo-tree

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.fn.sign_define("DiagnosticSignError",
{text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
{text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
{text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
{text = "", texthl = "DiagnosticSignHint"})
-- NOTE: this is changed from v1.x, which used the old style of highlight groups
-- in the form "LspDiagnosticsSignWarning"

require("neo-tree").setup({
    close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
    sort_case_insensitive = false, -- used when sorting files and directories in the tree
    sort_function = nil , -- use a custom function for sorting files and directories in the tree 
    -- sort_function = function (a,b)
    --       if a.type == b.type then
    --           return a.path > b.path
    --       else
    --           return a.type > b.type
    --       end
    --   end , -- this sorts files and directories descendantly
    default_component_configs = {
      container = {
        enable_character_fade = true
      },
      indent = {
        indent_size = 2,
        padding = 1, -- extra padding on left hand side
        -- indent guides
        with_markers = true,
        indent_marker = "│",
        last_indent_marker = "└",
        highlight = "NeoTreeIndentMarker",
        -- expander config, needed for nesting files
        with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "ﰊ",
        -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
        -- then these will never be used.
        default = "*",
        highlight = "NeoTreeFileIcon"
      },
      modified = {
        symbol = "[+]",
        highlight = "NeoTreeModified",
      },
      name = {
        trailing_slash = false,
        use_git_status_colors = true,
        highlight = "NeoTreeFileName",
      },
      git_status = {
        symbols = {
          -- Change type
          added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted   = "✖",-- this can only be used in the git_status source
          renamed   = "",-- this can only be used in the git_status source
          -- Status type
          untracked = "",
          ignored   = "",
          unstaged  = "",
          staged    = "",
          conflict  = "",
        }
      },
    },
    -- A list of functions, each representing a global custom command
    -- that will be available in all sources (if not overridden in `opts[source_name].commands`)
    -- see `:h neo-tree-global-custom-commands`
    commands = {},
    window = {
      position = "left",
      width = 40,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
      mappings = {
        ["<space>"] = { 
            "toggle_node", 
            nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use 
        },
        ["<2-LeftMouse>"] = "open",
        ["<cr>"] = "open",
        ["<esc>"] = "revert_preview",
        ["P"] = { "toggle_preview", config = { use_float = true } },
        ["l"] = "focus_preview",
        ["S"] = "open_split",
        ["s"] = "open_vsplit",
        -- ["S"] = "split_with_window_picker",
        -- ["s"] = "vsplit_with_window_picker",
        ["t"] = "open_tabnew",
        -- ["<cr>"] = "open_drop",
        -- ["t"] = "open_tab_drop",
        ["w"] = "open_with_window_picker",
        --["P"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
        ["C"] = "close_node",
        -- ['C'] = 'close_all_subnodes',
        ["z"] = "close_all_nodes",
        --["Z"] = "expand_all_nodes",
        ["a"] = { 
          "add",
          -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
          -- some commands may take optional config options, see `:h neo-tree-mappings` for details
          config = {
            show_path = "none" -- "none", "relative", "absolute"
          }
        },
        ["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
        ["d"] = "delete",
        ["r"] = "rename",
        ["y"] = "copy_to_clipboard",
        ["x"] = "cut_to_clipboard",
        ["p"] = "paste_from_clipboard",
        ["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
        -- ["c"] = {
        --  "copy",
        --  config = {
        --    show_path = "none" -- "none", "relative", "absolute"
        --  }
        --}
        ["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
        ["q"] = "close_window",
        ["R"] = "refresh",
        ["?"] = "show_help",
        ["<"] = "prev_source",
        [">"] = "next_source",
      }
    },
    nesting_rules = {},
    filesystem = {
      filtered_items = {
        visible = false, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_hidden = true, -- only works on Windows for hidden files/directories
        hide_by_name = {
          --"node_modules"
        },
        hide_by_pattern = { -- uses glob style patterns
          --"*.meta",
          --"*/src/*/tsconfig.json",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          --".gitignored",
        },
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          --".DS_Store",
          --"thumbs.db"
        },
        never_show_by_pattern = { -- uses glob style patterns
          --".null-ls_*",
        },
      },
      follow_current_file = true, -- This will find and focus the file in the active buffer every
                                  -- time the current file is changed while the tree is open.
      group_empty_dirs = false, -- when true, empty folders will be grouped together
      hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                                              -- in whatever position is specified in window.position
                            -- "open_current",  -- netrw disabled, opening a directory opens within the
                                              -- window like netrw would, regardless of window.position
                            -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
      use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
                                      -- instead of relying on nvim autocmd events.
      window = {
        mappings = {
          ["<bs>"] = "navigate_up",
          ["."] = "set_root",
          ["H"] = "toggle_hidden",
          ["/"] = "fuzzy_finder",
          ["D"] = "fuzzy_finder_directory",
          ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
          -- ["D"] = "fuzzy_sorter_directory",
          ["f"] = "filter_on_submit",
          ["<c-x>"] = "clear_filter",
          ["[g"] = "prev_git_modified",
          ["]g"] = "next_git_modified",
        },
        fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
          ["<down>"] = "move_cursor_down",
          ["<C-n>"] = "move_cursor_down",
          ["<up>"] = "move_cursor_up",
          ["<C-p>"] = "move_cursor_up",
        },
      },

      commands = {} -- Add a custom command or override a global one using the same function name
    },
    buffers = {
      follow_current_file = true, -- This will find and focus the file in the active buffer every
                                   -- time the current file is changed while the tree is open.
      group_empty_dirs = true, -- when true, empty folders will be grouped together
      show_unloaded = true,
      window = {
        mappings = {
          ["bd"] = "buffer_delete",
          ["<bs>"] = "navigate_up",
          ["."] = "set_root",
        }
      },
    },
    git_status = {
      window = {
        position = "float",
        mappings = {
          ["A"]  = "git_add_all",
          ["gu"] = "git_unstage_file",
          ["ga"] = "git_add_file",
          ["gr"] = "git_revert_file",
          ["gc"] = "git_commit",
          ["gp"] = "git_push",
          ["gg"] = "git_commit_and_push",
        }
      }
    }
})

vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
map("n", "<leader>a", ":Neotree toggle<CR>", opt)
map("n", "<leader>A", ":Neotree toggle source=buffers<CR>", opt)

-- Gitsigns
require("gitsigns").setup {
    signs = {
        add = {hl = "DiffAdd", text = "▌", numhl = "GitSignsAddNr"},
        change = {hl = "DiffChange", text = "▌", numhl = "GitSignsChangeNr"},
        delete = {hl = "DiffDelete", text = "_", numhl = "GitSignsDeleteNr"},
        topdelete = {hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr"},
        changedelete = {hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr"}
    },
    numhl = false,
    keymaps = {
        -- Default keymap options
        noremap = true,
        buffer = true,
        ["n ]c"] = {expr = true, '&diff ? \']c\' : \'<cmd>lua require"gitsigns".next_hunk()<CR>\''},
        ["n [c"] = {expr = true, '&diff ? \'[c\' : \'<cmd>lua require"gitsigns".prev_hunk()<CR>\''},
        ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
        ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
        ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
        ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
        ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>'
    },
    watch_gitdir = {
        interval = 100
    },
    sign_priority = 5,
    status_formatter = nil -- Use default
}

local actions = require("diffview.actions")
require("diffview").setup()

local neogit = require('neogit')

neogit.setup({
    integrations = {
        diffview = true
  },
})

-- LSP_signature

cfg = {}
require "lsp_signature".setup(cfg)

cmd "hi DiffAdd guifg=#268bd2 guibg = none"
cmd "hi DiffChange guifg =#fdf6e3 guibg = none"
cmd "hi DiffModified guifg = #b58900 guibg = none"

require("nvim-autopairs").setup({
  check_ts = true
})
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

-- inactive statuslines as thin splitlines
cmd("highlight! StatusLineNC gui=underline guibg=NONE guifg=#073642")

-- cmd "hi clear CursorLine"
cmd "hi cursorlinenr guibg=NONE guifg=#fdf6e3"

-- Zenmode
require("zen-mode").setup {
  plugins = {
    kitty =  {
      enabled = true,
      font = "+2"
    }
  },
  -- on_open = function(win)
  --    cmd[[MinimapClose]]
  -- end,
  -- -- callback where you can add custom code when the Zen window closes
  -- on_close = function()
  --   cmd[[Minimap]]
  -- end,
}

-- Minimap
-- g.minimap_width = 10
-- g.minimap_auto_start = 1
-- g.minimap_auto_start_win_enter = 1
-- g.minimap_highlight_range = 1
-- g.minimap_block_buftypes = {'terminal', 'help'}

-- quick-scope
g.qs_highlight_on_keys = {'f', 'F', 't', 'T', 'à', 'À'}  -- à doesn't seem to work?
g.qs_buftype_blacklist = {'terminal', 'nofile'}

local Hydra = require('hydra')

Hydra({
   name = 'Side scroll',
   mode = 'n',
   body = 'z',
   heads = {
      { 't', '5zt' },
      { 'n', '5zn', { desc = '←/→' } },
      { 'T', 'zT' },
      { 'N', 'zN', { desc = 'half screen ←/→' } },
   }
})

local Hydra = require('hydra')
local gitsigns = require('gitsigns')

local hint = [[
 _J_: next hunk   _s_: stage hunk        _d_: show deleted   _b_: blame line
 _K_: prev hunk   _u_: undo stage hunk   _p_: preview hunk   _B_: blame show full 
 ^ ^              _S_: stage buffer      ^ ^                 _/_: show base file
 ^
 ^ ^              _<Enter>_: Neogit              _q_: exit
]]

Hydra({
   hint = hint,
   config = {
      color = 'pink',
      invoke_on_body = true,
      hint = {
         position = 'bottom',
         border = 'rounded'
      },
      on_enter = function()
         vim.bo.modifiable = false
         gitsigns.toggle_signs(true)
         gitsigns.toggle_linehl(true)
      end,
      on_exit = function()
         gitsigns.toggle_signs(false)
         gitsigns.toggle_linehl(false)
         gitsigns.toggle_deleted(false)
         vim.cmd 'echo' -- clear the echo area
      end
   },
   mode = {'n','x'},
   body = '<leader>g',
   heads = {
      { 'J', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gitsigns.next_hunk() end)
            return '<Ignore>'
         end, { expr = true } },
      { 'K', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gitsigns.prev_hunk() end)
            return '<Ignore>'
         end, { expr = true } },
      { 's', ':Gitsigns stage_hunk<CR>', { silent = true } },
      { 'u', gitsigns.undo_stage_hunk },
      { 'S', gitsigns.stage_buffer },
      { 'p', gitsigns.preview_hunk },
      { 'd', gitsigns.toggle_deleted, { nowait = true } },
      { 'b', gitsigns.blame_line },
      { 'B', function() gitsigns.blame_line{ full = true } end },
      { '/', gitsigns.show, { exit = true } }, -- show the base of the file
      { '<Enter>', '<cmd>Neogit<CR>', { exit = true } },
      { 'q', nil, { exit = true, nowait = true } },
   }
})

Hydra({
   hint = [[
 ^^^^^^     Move     ^^^^^^   ^^     Split         ^^^^    Size
 ^^^^^^--------------^^^^^^   ^^---------------    ^^^^------------- 
 ^ ^ _k_ ^ ^   ^ ^ _K_ ^ ^    _s_: horizontally    _+_ _-_: height
 _h_ ^ ^ _l_   _H_ ^ ^ _L_    _v_: vertically      _>_ _<_: width
 ^ ^ _j_ ^ ^   ^ ^ _J_ ^ ^    _q_: close           ^ _=_ ^: equalize
 focus^^^^^^   window^^^^^^
 ^ ^ ^ ^ ^ ^   ^ ^ ^ ^ ^ ^    _b_: choose buffer   ^ ^ ^ ^    _<Esc>_
]],
   config = {
      timeout = 4000,
      hint = {
         border = 'rounded'
      }
   },
   mode = 'n',
   body = '<C-w>',
   heads = {
      -- Move focus
      { 'h', '<C-w>h' },
      { 'j', '<C-w>j' },
      { 'k', '<C-w>k' },
      { 'l', '<C-w>l' },
      -- Move window
      { 'H', '<Cmd>WinShift left<CR>' },
      { 'J', '<Cmd>WinShift down<CR>' },
      { 'K', '<Cmd>WinShift up<CR>' },
      { 'L', '<Cmd>WinShift right<CR>' },
      -- Split
      { 's', '<C-w>s' },
      { 'v', '<C-w>v' },
      { 'q', '<Cmd>try | close | catch | endtry<CR>', { desc = 'close window' } },
      -- Size
      { '+', '<C-w>+' },
      { '-', '<C-w>-' },
      { '>', '2<C-w>>', { desc = 'increase width' } },
      { '<', '2<C-w><', { desc = 'decrease width' } },
      { '=', '<C-w>=', { desc = 'equalize'} },
      --
      { 'b', '<Cmd>BufExplorer<CR>', { exit = true, desc = 'choose buffer' } },
      { '<Esc>', nil,  { exit = true }}
   }
})

local function cmd(command)
   return table.concat({ '<cmd>', command, '<CR>' })
end

local hint = [[
 _f_: files        _m_: marks            _h_: vim help   _c_: execute command
 _o_: old files    _g_: live grep        _k_: keymap     _;_: commands history 
 _p_: projects     _/_: search in file   _r_: registers  _?_: search history
 _C_: colorschemes _s_: symbols
 ^
 ^ ^               ^ ^        _<Enter>_: Telescope       ^ ^            _<Esc>_
]]

Hydra({                                                                               
   hint = hint,                                                                       
   config = {                                                                         
      color = 'teal',                                                                 
      invoke_on_body = true,                                                          
      hint = {                                                                        
         position = 'middle',                                                         
         border = 'rounded',                                                          
      },                                                                              
   },                                                                                 
   mode = 'n',                                                                        
   body = '<Leader>F',
   heads = {
      { 'f', cmd 'Telescope find_files' },                                            
      { 'g', cmd 'Telescope live_grep' },                                             
      { 'h', cmd 'Telescope help_tags', { desc = 'Vim help' } },                      
      { 'o', cmd 'Telescope oldfiles', { desc = 'Recently opened files' } },          
      { 'm', cmd 'MarksListBuf', { desc = 'Marks' } },                                
      { 'k', cmd 'Telescope keymaps' },                                               
      { 'r', cmd 'Telescope registers' },                                             
      { 'p', cmd 'Telescope projects', { desc = 'Projects' } },                       
      { '/', cmd 'Telescope current_buffer_fuzzy_find', { desc = 'Search in file' } },
      { '?', cmd 'Telescope search_history',  { desc = 'Search history' } },          
      { ';', cmd 'Telescope command_history', { desc = 'Command-line history' } },    
      { 'c', cmd 'Telescope commands', { desc = 'Execute command' } },
      { 'C', cmd 'Telescope colorscheme', { desc = 'Colorschemes' } },
      { 's', cmd 'Telescope symbols', { desc = 'Symbols' } },
      { '<Enter>', cmd 'Telescope', { exit = true, desc = 'List all pickers' } },     
      { '<Esc>', nil, { exit = true, nowait = true } },                               
   }                                                                                  
})
