vim.api.nvim_create_augroup('XitFiletypeGroup', { clear = true })

vim.api.nvim_create_autocmd('FileType', {

  group = 'XitFiletypeGroup',
  pattern = 'xit',
  callback = function()
    require('nvim-treesitter.configs').setup({highlight = {enable = true,}})
    require('xit').setup({
      disable_default_highlights = false,
      disable_default_mappings = false,
      default_jump_group = "all", -- possible values: all, open_and_ongoing
      wrap_jumps = true,
    })
    vim.api.nvim_set_hl(0, '@XitHeadline', {
      fg = '#FFD700',
      bg = 'NONE',
      bold = true,
      underline = true,
    })
  end,
})
