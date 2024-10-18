# Keybindings

create Python package for validation and guided development of keybindings

kblint

kblint validate: check for clashes
kblint write keys.json: write all keybinds to a file keys.json
kblint show 'phys:ctrl+phys:.': show all keybinds using the physical keys ctrl and "."
kblint load-nix
kblint write-nix
kblint add app
kblint edit app 
kblint edit

## Scratch

Idea: kanata normal (command) mode:
- i to enter insert mode
- n for normal mode, d to enter digits mode
- left bracket (?) to enter special character mode
- s to enter search mode
- space-n always returning to normal mode

; -> space  and space-s to space in numeric and insert mode

space always a special modifier; space-n (or space space?) always returning to normal mode

Important distinction - different layers:
- what I physically press
- what the remapper (e.g. kanata) receives
- what remapper (e.g. kanata) sends
- what the application (e.g. wezterm, qutebrowser) receives
- what the application executes

PHYSICAL ⟼ REMAPPER ⟼ APPLICATION

In many cases, it may be easiest to simply have the remapper 'wrap' the application 
by sending the expected keystrokes, especially for applications with limited or no
configurability. 

To have a universal interface, it may help to have application-specific, or rather,
application-type-specific layers, so that the same physical key combination always performs
the same (type of) action. Examples:
- SPACE-p (or bare p) always performing the paste action, instead of p in vim, CTRL-v in CUA,
  CTRL-SHIFT-c in terminal emulators
- SPACE-y (or bare y) always performing the copy action, instead of y in vim, CTRL-c in CUA,
  CTRL-SHIFT-c in terminal emulators
- SHIFT SPACE-h always selecting to the left

## Dev Notes

Key idea: Global modes akin to vim.

* vim-like normal mode
* regular insert mode

### Remapped Modifiers: →

`KEY_` means `KEY` only when it is held; `KEY!` means `KEY` only when it is tapped2j

* `CTRL` ← `CAPS_`
* `META` ← `TAB_`
* `ALT` ← `3_`
* `SHIFT`: no remapping
* `CAPS~` ← `ESC`
* `ESC` ←  `CAPS`
* `SPACE` ← custom modifier for most commands; akin to leader key

Modifiers:

* compositor / window manager: META
* terminal emulator: ALT; leader: `3` or `N`
* miscellaneous / mixed: CTRL
* nvim: leader SPACE

Keyboard Layer Modifiers:

* `SPACE` ← most popular special keys
* `'` ← ``
* `;` ← ``
* `[` ← ``
* `]` ← ``
* `\` ← ``
* `1` ← ``
* `2` ← ``
* `3` ← ``
* `4` ← ``
* `5` ← ``
* `6` ← ``
* `7` ← ``
* `8` ← ``
* `9` ← ``
* `0` ← ``

### Wezterm

Basic keybinds to get started:

* split pane vertical: `ALT` `|`
* split pane horizontal: `ALT` `-`
* focus left pane: `ALT` `H`
* focus right pane: `ALT` `L`
* focus pane above: `ALT` `K`
* focus pane below: `ALT` `J`
* next tab: `ALT` `T`
