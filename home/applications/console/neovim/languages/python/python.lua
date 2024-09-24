
-- lspconfig RTP command
-- neotest RTP command
-- dap RTP command
-- treesitter RTP command
-- conjure RTP command
-- cmp-conjure RTP command
-- trouble RTP command

local dap_python = require("dap-python")
-- local py_lsp = require("py_lsp")

-- local hydrovim = require("hydrovim")
-- local jupyter_kernel = require("jupyter_kernel")
-- local jupytext = require("jupytext")
-- local ipy = require("ipy")
--local swenv = require("swenv") #?
--local f_string_toggle = require("f-string-toggle") #?
-- local treesitter_pyfold = require("treesitter-pyfold")
-- local conjure = require("conjure")
-- local cmp_conjure = require("cmp-conjure")

-- lsp ------------------------------------------------------------------------------------------------------
local lspconf = require("lspconfig")
-- local null_ls = require("null-ls")
-- local lspkind = require("lspkind") TODO
-- local efmls_configs = require("efmls-configs")
-- local nlspsettings = require("nlspsettings")
-- local lspsaga = require("lspsaga")
-- local lsp_signature = require("lsp_signature")
-- local illuminate = require("illuminate")

-- local servers = {"pyright" , "bashls", "rls", "jsonls", "rnix", "eslint"}
-- local servers = { "pylsp", "bashls", "rls" }
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- local root_pattern = lspconf.util.root_pattern


-- ----------------------------------------------------------------------------------
local trouble = require("trouble")
trouble.setup {
	modes = { diagnostics = {auto_open = true,
	auto_close = true}},
    -- icons = false,
    -- fold_open = "v", -- icon used for open folds
    -- fold_closed = ">", -- icon used for closed folds
    -- indent_lines = false, -- add an indent guide below the fold icons
    -- signs = {
    --     -- icons / text used for a diagnostic
    --     error = vim.g.vinux_diagnostics_signs_error,
    --     warning = vim.g.vinux_diagnostics_signs_warning,
    --     hint = vim.g.vinux_diagnostics_signs_hint,
    --     information = vim.g.vinux_diagnostics_signs_info
    -- },
    -- use_diagnostic_signs = false
  }

-- ----------------------------------------------------------------------------------

lspconf.pylsp.setup({
	on_attach = custom_attach,
	settings = {

		pylsp = {
            auto_source = true,
    
			plugins = {
				autopep8 = { enabled = false },
				yapf = { enabled = false },

				pyls_black = {
					enabled = true,
					line_length = 100,
				},
				pyls_isort = {
					enabled = true,
				},
				pylsp_mypy = {
					enabled = true,
					strict = true,
				},
				rope = {
					enabled = false,
				},
				ruff = {
					enabled = false,
				},
				jedi_completion = {
					fuzzy = true,
				},
				pylint = {
					enabled = true,
					executable = "pylint",
				},
                ruff = {
                    enabled = true,  -- Enable the plugin
                    formatEnabled = true,  -- Enable formatting using ruffs formatter
                    executable = "<path-to-ruff-bin>",  -- Custom path to ruff
                    config = "<path_to_custom_ruff_toml>",  -- Custom config for ruff to use
                    extendSelect = { "I" },  -- Rules that are additionally used by ruff
                    extendIgnore = { "C90" },  -- Rules that are additionally ignored by ruff
                    format = { "I" },  -- Rules that are marked as fixable by ruff that should be fixed when running textDocument/formatting
                    severities = { ["D212"] = "I" },  -- Optional table of rules where a custom severity is desired
                    unsafeFixes = false,  -- Whether or not to offer unsafe fixes as code actions. Ignored with the "Fix All" action
              
                    -- Rules that are ignored when a pyproject.toml or ruff.toml is present:
                    lineLength = 120,  -- Line length to pass to ruff checking and formatting
                    exclude = { "__about__.py" },  -- Files to be excluded by ruff checking
                    select = { "F" },  -- Rules to be enabled by ruff
                    ignore = { "D210" },  -- Rules to be ignored by ruff
                    perFileIgnores = { ["__init__.py"] = "CPY001" },  -- Rules that should be ignored for specific files
                    preview = false,  -- Whether to enable the preview style linting and formatting.
                    targetVersion = "py310",  -- The minimum python version to target (applies for both linting and formatting).
                  },
			},
		},
		flags = {
			debounce_text_changes = 200,
		},
		capabilities = capabilities,
		formatCommand = { "black", "&&", "isort" },
	},
})

-- py_lsp.setup({
--     -- This is optional, but allows to create virtual envs from nvim
--     language_server = "pylsp",
--     source_strategies = {"default", "poetry", "conda", "system"},
--     host_python = "/usr/bin/env python3",
--     default_venv_name = ".venv" -- For local venv,
--     plugins = {
        
--       }
-- })

-- conjure
-- Disable the documentation mapping
vim.g["conjure#mapping#doc_word"] = false

-- Rebind it from K to <prefix>gk
vim.g["conjure#mapping#doc_word"] = "gk"

-- Reset it to the default unprefixed K (note the special table wrapped syntax)
vim.g["conjure#mapping#doc_word"] = { "K" }

-- return dap_python, py_lsp, swenv, f_string_toggle --, conjure
-- return dap_python, py_lsp, jupyter_kernel, jupytext, swenv, f_string_toggle --, conjure
