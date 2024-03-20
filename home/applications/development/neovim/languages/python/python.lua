local dap_python = require("dap-python")
local py_lsp = require("py_lsp")
-- local hydrovim = require("hydrovim")
-- local jupyter_kernel = require("jupyter_kernel")
-- local jupytext = require("jupytext")
-- local ipy = require("ipy")
local swenv = require("swenv")
local f_string_toggle = require("f-string-toggle")
-- local treesitter_pyfold = require("treesitter-pyfold")
-- local conjure = require("conjure")
-- local cmp_conjure = require("cmp-conjure")

-- py_lsp.setup({
--     -- This is optional, but allows to create virtual envs from nvim
--     auto_source = true,
--     language_server = "pylsp",
--     source_strategies = {"default", "poetry", "conda", "system"},
--     host_python = "/usr/bin/env python3",
--     default_venv_name = ".venv" -- For local venv
-- })

-- conjure
-- Disable the documentation mapping
vim.g["conjure#mapping#doc_word"] = false

-- Rebind it from K to <prefix>gk
vim.g["conjure#mapping#doc_word"] = "gk"

-- Reset it to the default unprefixed K (note the special table wrapped syntax)
vim.g["conjure#mapping#doc_word"] = { "K" }

return dap_python, py_lsp, swenv, f_string_toggle --, conjure
-- return dap_python, py_lsp, jupyter_kernel, jupytext, swenv, f_string_toggle --, conjure
