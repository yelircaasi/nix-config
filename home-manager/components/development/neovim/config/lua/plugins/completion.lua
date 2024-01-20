local cmp = require("cmp")
-- local cmp_nvim_lsp = require("cmp_nvim_lsp")
-- local cmp_luasnip = require("cmp_luasnip")

cmp.setup({
  sources = {
    {
      name = 'path',
      option = {
        label_training_slash = true
      },
    },
    {
       name = 'luasnip'
    },
    {
        name = 'conjure'
    },
    { 
        name = 'nvim_lsp'
    },
    {
      name = "latex_symbols",
      option = {
        strategy = 0, -- mixed
      },
    },
  },
})

return cmp --, cmp_nvim_lsp, cmp_path, cmp_luasnip

