local hlargs = require("hlargs")

--local treesitter = require("treesitter")
local treesitter_configs = require("nvim-treesitter.configs")

treesitter_configs.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  pyfold = {
    enable = true,
    custom_foldtext = true,
    -- Sets provided foldtext on window where module is active
  }
}

return treesitter_configs, hlargs

