local neotest = require("neotest")
local coverage= require("coverage")

neotest.setup({
  adapters = {
    require("neotest-python")({
        -- Extra arguments for nvim-dap configuration
        dap = { justMyCode = true }, -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
        args = {"--log-level", "DEBUG"},
        runner = "pytest",
        --python = {".venv/bin/python", "~/.nix-profile/bin/python"},
        -- is_test_file = function(file_path)
        --   ...
        -- end,
        pytest_discover_instances = true,
    })
  }
})

return neotest, coverage

