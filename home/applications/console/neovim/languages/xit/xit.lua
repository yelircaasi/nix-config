local options = {
    disable_default_highlights = false,
    disable_default_mappings = false,
    default_jump_group = "all", -- possible values: all, open_and_ongoing
    wrap_jumps = true,
  }


vim.api.nvim_create_augroup('XitFiletypeGroup', { clear = true })

-- Define the autocommand for '.xit' files
vim.api.nvim_create_autocmd('FileType', {
  group = 'XitFiletypeGroup',
  pattern = 'xit',
  callback = function()
    -- require('nvim-treesitter')
    -- vim.cmd[[:TSInstall! xit]]
    require('xit').setup(otions)
  end,
})
