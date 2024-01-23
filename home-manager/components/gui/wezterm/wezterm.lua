-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
        config = wezterm.config_builder()
end

config.default_prog = { '/bin/env', 'bash' }

-- This is where you actually apply your config choices
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = false

config.font = wezterm.font_with_fallback {
    'FiraCode Nerd Font Mono',
    'Unifont',
}
config.font_size = 10.0

-- config.color_scheme = "schwarzwald"

config.colors = {
        -- The default text color
        foreground = "gray", --"silver",
        -- The default background color
        background = "#000a00", --"#01120a",

        -- Overrides the cell background color when the current cell is occupied by the
        -- cursor and the cursor style is set to Block
        cursor_bg = "#52ad70",
        -- Overrides the text color when the current cell is occupied by the cursor
        cursor_fg = "black",
        -- Specifies the border color of the cursor when the cursor style is set to Block,
        -- or the color of the vertical or horizontal bar when the cursor style is set to
        -- Bar or Underline.
        cursor_border = "#52ad70",

        -- the foreground color of selected text
        selection_fg = "black",
        -- the background color of selected text
        selection_bg = "#fffacd",

        -- The color of the scrollbar "thumb"; the portion that represents the current viewport
        scrollbar_thumb = "#222222",

        -- The color of the split lines between panes
        split = "#444444",
        --[[
  ansi = {
    'black',
    'maroon',
    'green',
    'olive',
    'navy',
    'purple',
    'teal',
    'silver',
  },
  brights = {
    'grey',
    'red',
    'lime',
    'yellow',
    'blue',
    'fuchsia',
    'aqua',
    'white',
  },
--]]
        -- Arbitrary colors of the palette in the range from 16 to 255
        indexed = { [136] = "#af8700" },

        -- Since: 20220319-142410-0fcdea07
        -- When the IME, a dead key or a leader key are being processed and are effectively
        -- holding input pending the result of input composition, change the cursor
        -- to this color to give a visual cue about the compose state.
        compose_cursor = "orange",

        -- Colors for copy_mode and quick_select
        -- available since: 20220807-113146-c2fee766
        -- In copy_mode, the color of the active text is:
        -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
        -- 2. selection_* otherwise
        copy_mode_active_highlight_bg = { Color = "#000000" },
        -- use `AnsiColor` to specify one of the ansi color palette values
        -- (index 0-15) using one of the names "Black", "Maroon", "Green",
        --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
        -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
        copy_mode_active_highlight_fg = { AnsiColor = "Black" },
        copy_mode_inactive_highlight_bg = { Color = "#52ad70" },
        copy_mode_inactive_highlight_fg = { AnsiColor = "White" },

        quick_select_label_bg = { Color = "peru" },
        quick_select_label_fg = { Color = "#ffffff" },
        quick_select_match_bg = { AnsiColor = "Navy" },
        quick_select_match_fg = { Color = "#ffffff" },
}

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm

---------------------------------------------------------------------------------------------------
-- local io = require 'io'
-- local os = require 'os'
-- local act = wezterm.action

-- local function open_text_in_vim (window, pane)
--   -- Retrieve the current viewport's text.
--   --
--   -- Note: You could also pass an optional number of lines (eg: 2000) to
--   -- retrieve that number of lines starting from the bottom of the viewport.
--   local viewport_text = pane:get_lines_as_text()

--   -- Create a temporary file to pass to vim
--   local name = os.tmpname()
--   local f = io.open(name, 'w+')
--   f:write(viewport_text)
--   f:flush()
--   f:close()

--   -- Open a new window running vim and tell it to open the file
--   window:perform_action(
--     act.SpawnCommandInNewWindow {
--       args = { 'vim', name },
--     },
--     pane
--   )

--   -- Wait "enough" time for vim to read the file before we remove it.
--   -- The window creation and process spawn are asynchronous wrt. running
--   -- this script and are not awaitable, so we just pick a number.
--   --
--   -- Note: We don't strictly need to remove this file, but it is nice
--   -- to avoid cluttering up the temporary directory.
--   wezterm.sleep_ms(1000)
--   os.remove(name)
-- end

-- config.keys = {
--   {
--     key = 'W',
--     mods = 'ALT',
--     action = wezterm.action.SendString('Hello there'),
--   },
-- }
char = "​aasdsdfg"

-----------------------------------------------------------------------------
local io = require 'io'
local os = require 'os'
local act = wezterm.action

wezterm.on('trigger-vim-with-visible-text', function(window, pane)
  -- Retrieve the current viewport's text.
  --
  -- Note: You could also pass an optional number of lines (eg: 2000) to
  -- retrieve that number of lines starting from the bottom of the viewport.
  local viewport_text = pane:get_lines_as_text()

  -- Create a temporary file to pass to vim
  local name = os.tmpname()
  local f = io.open(name, 'w+')
  f:write(viewport_text)
  f:flush()
  f:close()

  -- Open a new window running vim and tell it to open the file
  window:perform_action(
    act.SpawnCommandInNewWindow {
      args = { 'vim', name },
    },
    pane
  )

  -- Wait "enough" time for vim to read the file before we remove it.
  -- The window creation and process spawn are asynchronous wrt. running
  -- this script and are not awaitable, so we just pick a number.
  --
  -- Note: We don't strictly need to remove this file, but it is nice
  -- to avoid cluttering up the temporary directory.
  wezterm.sleep_ms(1000)
  os.remove(name)
end)


config.keys = {
  {
    key = 'E',
    mods = 'ALT',
    action = act.EmitEvent 'trigger-vim-with-visible-text',
  },
  {
     key = 'W',
     mods = 'ALT',
     action = wezterm.action.SendString('Hello there'),
  },



-- Currently this function logs the output of the last command run, provided it is less than 30 lines long and does not contain the characters '❯''.
  {
                key = "m",
                mods = "CTRL",
                action = wezterm.action_callback(function(win, pane)
                        local nlines = pane:get_dimensions().scrollback_rows
                        -- local output = pane:get_text_from_region(0, nlines - 5, 0, nlines - 1)
                        -- local delimiter = '\n❯'
                        -- note: use zero-width spaces in prompt to enable splitting output '​'

                        local output = pane:get_lines_as_text(30)
                        local extracted = string.match(output, "\n❯ [^\n]*\n(.*)$")
                        local rev = extracted:reverse()
                        local delim = ".*" .. (("\n~ "):reverse())
                        local delim2 = "(.*)" .. (("\n❯"):reverse())
                        local string = rev.gsub(rev, delim, "")
                        local pos2 = #extracted - #string + 1
                        string = rev.gsub(rev, delim, "")
                        local pos1 = #extracted - #string + 1
                        string = string:reverse() --.sub(pos1, pos2 + 1)
                        -- wezterm.log_info(nlines)
                        -- wezterm.log_info(output)
                        wezterm.log_info(extracted)
                        wezterm.log_info(string)
                end),
        },
}

print(config.keys)

return config
