local conform = require("conform")
local lsp_format = require("lsp-format")
local lint = require("lint")

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

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

return conform, lsp_format, lint
