local neorg = require("neorg")
-- local neorg_telescope = require("neorg-telescope")
local neorg_callbacks = require("neorg.core.callbacks")

require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.integrations.telescope"] = {},
    }
}

--[[
neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
    -- Map all the below keybinds only when the "norg" mode is active
    keybinds.map_event_to_mode("norg", {
        n = { -- Bind keys in normal mode
            { "<C-s>", "core.integrations.telescope.find_linkable" },
        },

        i = { -- Bind in insert mode
            { "<C-l>", "core.integrations.telescope.insert_link" },
        },
    }, 
        silent = true,
        noremap = true,
    })
end)
--]]


return neorg, neorg_callbacks

