# Neovim Config Roadmap

General:

* [ ] add all plugins below

Python Development Setup:

* [ ] completion basic config -> colors, shortcut to accept
* [ ] fix basic navigation
    * [ ] add tui fm and configure keybinds
    * [ ] wezterm integration for multiplexing
    * [ ] navigation between buffers / tabs
* [ ] configure terminal colors & keys -> disable vim keybindings for now?
* [ ] find optimal config for pytest and pytest-cov
    * [ ] go straight from file to failed test
    * [ ] find way to run all tests at once
    * [ ] best way to view html cov files? -> shortcut to open in given browser -> configure xdg-open or find extension
    * [ ] generate in-source annotations for untested code? (supported by pytest-cov)
* [ ] get wezterm panes and tabs working: shortcuts for opening and navigations
* [ ] fix neotree fold/unfold glitch, git status refreshing
* [ ] disable confirmation to close
* [ ] revisit folding
* [ ] configure keys to save
* [ ] add ergonomic escape (via kanata?)
* [ ] fix git blame line background color (normal background color)
* [ ] remove lint / LSP message background
* [ ] configure quickfix
    * [ ] previews
    * [ ] file navigation
* [ ] configure semantic navigation
    * [ ] go to definition
    * [ ] go to references
    * [ ] view signature / get signature help
    * [ ] view type (?)
* [ ] configure directory search -> telescope?
* [ ] configure directory search and replace
* [ ] make sure mypy is working: custom keybind?; combine with qf
* [ ] learn how to effectively debug Python with nvim
* [ ] find best tools for lazy loading in Nix-managed Neovim
* [ ] set up file tags for quick access to files (harpoon-like?) or flatten directory of aliases?
* [ ] solve clipboard integration
* [ ] retouch colors, especially dim red
* [ ] make level-1 parenthesis color browner (more mellow) -> remap whole rainbow to inobtrusive shades along a color spectrum
* [ ] get a handful of my favorite snippets working
* [ ] find the best AI assistant plugin(s) and get them working
* [ ] make the lines look nice
    * [ ] status
    * [ ] buffer 
    * [ ] tab
* [ ] navigate along breadcrumbs?
 
## options.lua

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## mappings.lua

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Neogit

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## UI

### noice.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Keybinding

### legendary.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### which-key.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### hydra.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### keymap-amend.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Icons

### nvim-web-devicons

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Filetree

### neo-tree.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### oil.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### genghis.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Terminal

### toggleterm.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### unception.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### term-edit.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### wezterm.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Startscreen

### dashboard.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Status Line

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Buffer Line

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Tab Line

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Notifications

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config



## Modes

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Execution

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Task Runner

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Multiplexer

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Projects

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Menus (other)

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Treesitter and Extensions

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Highlighting (other)

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Snippets

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## LSP

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Completion

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Debugging

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Quickfix

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Formatting and Linting

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Refactoring (other)

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Folding

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Testing and Coverage

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Comments

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Clipboard

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Git

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Editing

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Increment and Toggling

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Search

### nvim-hlslens

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### hlsearch.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Search and Replace

### substitute-nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-alt-substitute

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### replacer-nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### rgflow.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-rg

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### muren.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### sad.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Macros

### neocomposer.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Pairs

### autoclose.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### delimiters.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### ultimate-autopair.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### sentiment.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Textobjects

### nvim-surround

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-treesitter-textsubjects

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-treesitter-textobjects

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-various-textobjs

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Navigation

### navigator.lua

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### numb.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### numb.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### dropbar.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### leap.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### flash.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### gx-extended.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Code Outline

### symbols-outline.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Miscellaneous

### nvim-regexplainer

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### quicknote.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### carbon-now.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-colorizer.lua

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### venn.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### distant.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### compiler-explorer.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### flatten.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### urlview.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config



## Media

### hologram.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### image.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Python

### neotest-python

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-dap-python

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### py-lsp-nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### hydrovim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### jupyter-kernel-nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### jupytext-nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-ipy

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### swenv-nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### f-string-toggle-nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-treesitter-pyfold (configured in treesitter file)

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### conjure

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### cmp-conjure


* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Markdown

### mkdnflw.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### vim-markdown

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### markdown-preview.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### glow.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### FeMaco.lua

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### markdowny.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## JSON

### nvim-jqx

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Nix

### vim-nix

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### telescope-manix

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nix-develop.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Rust

### rustaceanvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Other Langs

### flutter-tools.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### nvim-nu

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## TeX

### nabla.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### vimtex

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

### cmp-latex-symbols

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

## Neovim Dev

### neodev.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Code Minimap

### minimap.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Github

### octo.nvim

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## AI

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config
    
### CodeGPT

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


### ChatGPT

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


### Copilot

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Org

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Productivity

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config


## Colors

###

* [ ] read documentation
* [ ] read code
* [ ] plugin installed and imported
* [ ] basic config
* [ ] config perfected
* [ ] list default highlight groups in nix-config
* [ ] list default keybinds in nix-config
* [ ] list custom highlight groups in nix-config
* [ ] list custom keybinds in nix-config

