-- OLD

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- Use a sub-list to run only the first available formatter
		-- javascript = { { "prettierd", "prettier" } },
		nix = { "alejandra" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})



--return conform, lsp_format, lint
----------------------------------------------------------------------- NEW
-- completion

-- debugging


-- formatting and linting
local conform = require("conform") --       https://github.com/stevearc/conform.nvim
local lsp_format = require("lsp-format") -- https://github.com/lukas-reineke/lsp-format.nvim
local lint = require("lint") --             https://github.com/mfussenegger/nvim-lint

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

confirm.setup.formatters_by_ft.python = {"isort", "black"}
confirm.setup.format_on_save = {
	-- These options will be passed to conform.format()
	timeout_ms = 500,
	lsp_fallback = true,
}

-- lsp

-- quickfix

-- refactoring

-- snippets

-- testing and coverage


