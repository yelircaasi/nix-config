# Neovim Notes


https://www.reddit.com/r/neovim/comments/lpl27u/install_a_plugin_without_a_plugin_manager/
https://vonheikemen.github.io/devlog/tools/installing-neovim-plugins-without-a-plugin-manager/
https://github.com/boltlessengineer/NativeVim
https://vi.stackexchange.com/questions/36509/how-do-i-install-a-package-in-neovim-without-a-package-manager


https://www.reddit.com/r/neovim/comments/1dc78r4/custom_netrw_workflow_settings_maps_etc/

## Move to flake

https://github.com/youwen5/viminal2  *********

https://primamateria.github.io/blog/neovim-nix/

https://github.com/gvolpe/neovim-flake

https://github.com/jordanisaacs/neovim-flake

https://github.com/wiltaylor/neovim-flake

https://github.com/cwfryer/neovim-flake/




## Old

Migrating to a structure built around languages and features.

```bash
neovim
 |- default.nix
 |- languages/
 |- features/
```

Roadmap

- [ ] sort plugins into language and feature folders, including custom plugin packages
- [ ] get building - minimal viable refactor
- [ ] move to import-list-based system instead of one tight and Procrustean function? maybe leave it for now and keep the option option to allow for more complexity and variation
- [ ] read through nixCats source code
- [ ] write down questions on nixCats source code
- [ ] answer all questions on nixCats source code
- [ ] try out nixCats by running it as a flake
- [ ] implement lazy loading: "so, for lazy loading, the plugins can be in pack/*/opt/
      and then you vim.cmd([[packadd! plugindirname]]) 
      on an autocommand"
      https://github.com/BirdeeHub/nixCats-nvim/blob/main/nix/builder/vim-pack-dir.nix
      https://neovim.io/doc/user/repeat.html#packages

      !!!!!! https://ryantm.github.io/nixpkgs/languages-frameworks/vim/
      https://nixos.org/manual/nixpkgs/unstable/#managing-plugins-with-vim-packages
      https://github.com/NixOS/nixpkgs/blob/master/pkgs/applications/editors/vim/plugins/vim-utils.nix#L173

      use xdg.dataDir to add plugins to ~/.local/share/nvim/site? nah ->
      HOME/.config/nvim/pack/languages/opt/haskell/plugin/init.lua

      see also :help packages

      https://www.lazyvim.org/extras/lang/markdown
      read through: https://www.lazyvim.org/extras

        packpath=
        /etc/profiles/per-user/isaac/etc/xdg/nvim
        /etc/profiles/per-user/isaac/etc/xdg/nvim/after
        /etc/profiles/per-user/isaac/share/nvim/site
        /etc/profiles/per-user/isaac/share/nvim/site/after
        /etc/xdg/nvim
        /etc/xdg/nvim/after
        HOME/.config/nvim
        HOME/.local/share/nvim/site
        HOME/.local/share/nvim/site/after
        HOME/.local/state/nix/profile/etc/xdg/nvim
        HOME/.local/state/nix/profile/etc/xdg/nvim/after
        HOME/.local/state/nix/profile/share/nvim/site
        HOME/.local/state/nix/profile/share/nvim/site/after
        HOME/.nix-profile/etc/xdg/nvim
        HOME/.nix-profile/etc/xdg/nvim/after
        HOME/.nix-profile/share/nvim/site
        $HOME/.nix-profile/share/nvim/site/after
        /nix/profile/share/nvim/site/after
        /nix/profile/share/nvim/site
        /nix/profile/etc/xdg/nvim
        /nix/profile/etc/xdg/nvim/after
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/lib/nvim
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/share/nvim/runtime
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site/after
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir
        /nix/var/nix/profiles/default/etc/xdg/nvim
        /nix/var/nix/profiles/default/etc/xdg/nvim/after
        /nix/var/nix/profiles/default/share/nvim/site
        /nix/var/nix/profiles/default/share/nvim/site/after
        /run/current-system/sw/etc/xdg/nvim
        /run/current-system/sw/etc/xdg/nvim/after
        /run/current-system/sw/share/nvim/site
        /run/current-system/sw/share/nvim/site/after

        runtimepath = 

        /etc/profiles/per-user/isaac/etc/xdg/nvim
        /etc/profiles/per-user/isaac/etc/xdg/nvim/after
        /etc/profiles/per-user/isaac/share/nvim/site
        /etc/profiles/per-user/isaac/share/nvim/site/after
        /etc/xdg/nvim
        /etc/xdg/nvim/after
        /nix/profile/etc/xdg/nvim
        /nix/profile/etc/xdg/nvim/after
        /nix/profile/share/nvim/site
        /nix/profile/share/nvim/site/after
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/lib/nvim
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/share/nvim/runtime
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/share/nvim/runtime/pack/dist/opt/matchit
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site/after
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir/pack/*/start/*
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir/pack/*/start/*/after
        /nix/var/nix/profiles/default/etc/xdg/nvim
        /nix/var/nix/profiles/default/etc/xdg/nvim/after
        /nix/var/nix/profiles/default/share/nvim/site
        /nix/var/nix/profiles/default/share/nvim/site/after
        /run/current-system/sw/etc/xdg/nvim
        /run/current-system/sw/etc/xdg/nvim/after
        /run/current-system/sw/share/nvim/site
        /run/current-system/sw/share/nvim/site/after
        HOME/.config/nvim
        HOME/.config/nvim/after
        HOME/.local/share/nvim/site
        HOME/.local/share/nvim/site/after
        HOME/.local/state/nix/profile/etc/xdg/nvim
        HOME/.local/state/nix/profile/etc/xdg/nvim/after
        HOME/.local/state/nix/profile/share/nvim/site
        HOME/.local/state/nix/profile/share/nvim/site/after
        HOME/.nix-profile/etc/xdg/nvim
        HOME/.nix-profile/etc/xdg/nvim/after
        HOME/.nix-profile/share/nvim/site
        HOME/.nix-profile/share/nvim/site/after
      - [ ] make neovim docker container (from nixos/nix)
      - [ ] try out command- and autocommand-based loading in neovim docker container
- [ ] 


## Plugins
### Language-Independent Features
#### Clipboard
* [neoclip]()
  - Nix install type: custom
  - Nix name: [nvim-neoclip-lua]()
  - Neovim load type: keybind
  - Plugin languages: Vimscript, C
  - Custom intall dir? No
* []()
  - Nix install type: nixpkgs
* []()
* []()
#### Code Minimap
* []()
* []()
* []()
* []()
#### Git
* []()
* []()
* []()
* []()
#### Github
* []()
* []()
* []()
* []()
#### Icons
* []()
* []()
* []()
* []()
#### Media
* []()
* []()
* []()
* []()
#### Modes
* []()
* []()
* []()
* []()
#### Multiplexer
* []()
* []()
* []()
* []()
#### Notifications
* []()
* []()
* []()
#### Poopup and Menu
* []()
* []()
* []()
#### Productivity
* []()
* []()
* []()
#### Project and Config Management
* []()
* []()
* []()
#### Startscreen
* []()
* []()
* []()
#### Statusline
* []()
* []()
* []()
#### Terminal
* []()
* []()
* []()
#### Training
* []()
* []()
* []()
#### Tree File Browser
* []()
* []()
* []()
#### TUI File Browser
* []()
* []()
* []()
#### UI
* []()
* []()
* []()

### Quasi-Language-Independent Features
#### AI
* []()
* []()
* []()
* []()
#### Bufferline
* []()
* []()
* []()
* []()
#### Code Execution
* []()
* []()
* []()
* []()
#### Code Outline
* []()
* []()
* []()
* []()
#### Comments
* []()
* []()
* []()
#### Editing Enhancements
* []()
* []()
* []()
* []()
#### Folding
* []()
* []()
* []()
* []()
#### Increment and Toggling
* []()
* []()
* []()
#### Keybinding
* []()
* []()
* []()
#### Macros
* []()
* []()
* []()
#### Miscellaneous
* []()
* []()
* []()
#### Navigation
* []()
* []()
* []()
#### Pairs
* []()
* []()
* []()
#### Search
* []()
* []()
* []()
#### Search and Replace
* []()
* []()
* []()
#### Tabline
* []()
* []()
* []()
#### Task Runner
* []()
* []()
#### Text Objects
* []()
* []()
* []()

### Language-Specific Features
#### Completion
* []()
* []()
* []()
* []()
#### Debugging
* []()
* []()
* []()
* []()
#### Formatting and Linting
* []()
* []()
* []()
* []()
#### LSP
* []()
* []()
* []()
* []()
#### Quickfix
* []()
* []()
* []()
#### Refactoring
* []()
* []()
* []()
* []()
#### Snippets
* []()
* []()
* []()
* []()

## Languages
#### apl
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### assembly
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### bash
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### c
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### clojure
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### common-lisp
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### cpp
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### d
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### dart-flutter
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### default
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### dhall
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### elisp
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### elixir
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### elm
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### elvish
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### erlang
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### fennel
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### fish
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### go
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### guile
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### haskell
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### haxe
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### hexadecimal
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### html
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### hyprlang
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### java
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### javascript
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### json
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### julia
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### kdl
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### kotlin
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### lua
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### markdown
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### moonscript
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### nickel
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### nim
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### nix
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### norg
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### nushell
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### ocaml
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### octave
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### org
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### other
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### perl
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### php
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### purescript
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### python
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### r
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### racket
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### raku
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### ruby
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### rust
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### scheme
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### starlark
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### teal
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### tex
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### toml
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### typescript
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### typst
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### vim9script
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### vimscript
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### vlang
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### yaml
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### yuck
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
#### zig
- [ ] Completion
- [ ] Debugging
- [ ] Formatting and Linting
- [ ] LSP
- [ ] Quickfix
- [ ] Refactoring
- [ ] Snippets
