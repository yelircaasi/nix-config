cmp = require("cmp")
cmp_nvim_lsp = require("cmp_nvim_lsp")
cmp_luasnip = require("cmp_luasnip")

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
    }
  },
})

return cmp, cmp_nvim_lsp, cmp_path, cmp_luasnip

