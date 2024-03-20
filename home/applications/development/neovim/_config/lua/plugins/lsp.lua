local lspconf = require("lspconfig")
local null_ls = require("null-ls")
local lspkind = require("lspkind")
local efmls_configs = require("efmls-configs")
local nlspsettings = require("nlspsettings")
local lspsaga = require("lspsaga")
local lsp_signiature = require("lsp_signature")
local illuminate = require("illuminate")

-- local servers = {"pyright" , "bashls", "rls", "jsonls", "rnix", "eslint"}
local servers = { "pylsp", "bashls", "rls" }
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local root_pattern = lspconf.util.root_pattern

-- -- Lspconfig
-- function on_attach(client, bufnr)
--     local function map(...)
--         vim.api.nvim_buf_set_keymap(bufnr, ...)
--     end

--     local function buf_set_option(...)
--         vim.api.nvim_buf_set_option(bufnr, ...)
--     end

--     buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

--     -- Mappings
--     local opts = {noremap = true, silent = true}
--     map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
--     map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
--     map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
--     map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
--     map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
--     map("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
--     map("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
--     map("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
--     map("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
--     map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
--     map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
--     map("n", "<leader>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
--     map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
--     map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
--     map("n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
--     map("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

--     -- Set some keybinds conditional on server capabilities
--     if client.server_capabilities.document_formatting then
--         map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--     elseif client.server_capabilities.document_range_formatting then
--         map("v", "<leader>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
--     end
-- end

-- for LSPs to use snippet completion (from lspconfig docs)
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

for k, lang in pairs(servers) do
	lspconf[lang].setup({
		root_dir = vim.loop.cwd,
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- -- Enable diagnostics
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, {
--     virtual_text = true,
--     signs = true,
--     update_in_insert = true,
--   }
-- )

-- lua lsp settings

lspconf.lua_ls.setup({
	cmd = { "lua-lsp" },
	root_dir = function()
		return vim.loop.cwd()
	end,
	on_attach = on_attach,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				},
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

lspconf.jsonls.setup({
	--    cmd = {"vscode-json-language-server"},
	--    root_dir = function()
	--        return vim.loop.cwd()
	--    end,
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconf.nixd.setup({
	cmd = { "nixd" },
	filetypes = { "nix" },
	root_dir = root_pattern(".nixd.json", "flake.nix", ".git"),
	single_file_support = true,
})

lspconf.pylsp.setup({
	on_attach = custom_attach,
	settings = {

		pylsp = {
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
			},
		},
		flags = {
			debounce_text_changes = 200,
		},
		capabilities = capabilities,
		formatCommand = { "black", "&&", "isort" },
	},
})

-- require "lspconfig".html.setup {
--     cmd = {"html-languageserver"},
--     root_dir = function()
--         return vim.loop.cwd()
--     end,
--     on_attach = on_attach,
-- }

-- require "lspconfig".cssls.setup {
--     cmd = {"css-languageserver"},
--     root_dir = function()
--         return vim.loop.cwd()
--     end,
--     on_attach = on_attach,
-- }

return lspconfig, none_ls, lspkind, efmls_configs, nlspsettings, lspsaga, lsp_signature, illuminate
