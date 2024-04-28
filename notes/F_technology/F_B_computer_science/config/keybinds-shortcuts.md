# clavix: Keybindings and Shortcuts

* Major keybind sources:
* Termulator: wezterm, kitty, alacritty
* Nvim
* Emacs
* Browser: Luakit, Nyxt, Qutebrowser, Firefox, ungoogled-chromium
* Browser extensions
* Compositor: sway, swayfx, dwl, hyprland, river
* Widgets: ags, nwg-shell, eww, fabric
* Kanata-cmd
* Espanso
* GUI: thunar, zathura, dolphin,
* TUI: spotify, lazygit
* CLI apps
* Notebooks: jupyter, juno, pluto, quarto, nteract
* Launcher: wofi, ulauncher
* Lockscreen
* other names considered: kbcoord / kbgeneral / tastix
* Sub-tool: keycritic/keylinter: a linter for your keybindings: collects
* all keybindings and examines them for coherence, collisons, and new
* mappable keys → use light AI; also make scores → convenience scores for
* keymappings, coherence scores

## Roadmap

* [ ] compile list of applications (top, basic, extended, someday -
    according to priority)
* [ ] develop standard notation (JSON/YAML/TOML for now) to unambiguously
    record all keystrokes
* [ ] look at vscode JSON format and identify shortcomings
* [ ] add variable system for things like leader key, modifier\<i\>,
        etc.
* [ ] develop good way to deal with chords → synchronicity vs
        sequentialit
* [ ] like this: “($ctrl ;) ($ctrl k)”, “($ctrl $alt k) ($))” →
            ‘$’ as escape for ‘(’ and ‘)’
* [ ] add prefix for valid scope: “[vscode] ($ctrl $alt k) ($))”

  * [ ] clean notation for ctrl, alt, F{i}, etc → unicode?    * [ ] ⎈ for ctrl / $ctrl or ⎋?
* [ ] ⌗ for alt / $alt
* [ ] $f1 … $f12
* [ ]  ␛ for escape / $esc
* [ ]  ␡ delete / $del

    -[ ] ␣ for space / $space
* [ ] etc. → [wincent.com/wiki/Unicode_representations_of_modifier_keys](https://wincent.com/wiki/Unicode_representations_of_modifier_keys)
* [ ] write unambiguous specification
* [ ] collect different notations used in apps and documentation
* [ ] write code for conflict detection, distinguishing between different
      types: same-scope, differnet-scope, semantic incoherence (not
      strictly a conflict, but also worth detecting)
* [ ] start putting together prototype of universal config clavix.json
* [ ] write parser specifically for the different notation styles
* [ ] write document parsers for different app configs
* [ ] write ‘intelligent’ parser for miscellaneous configs, like readme
      tables, copy-and-paste from websites, etc → simple lightweight
      classifier from regex/pattern-generated one-hot/BoW features?
      (written in Rust, ideally)
* [ ] develop writers for specific app configs, Home Manager, etc
* [ ] develop NLP element for keybind descriptions: regex + embeddings +
      NER to identify semantic categories
* [ ] develop functionality to group keystrokes on different criteria
* [ ] develop good interfaces: first CLI, later TUI, later GUI
* [ ] syntax highlighting for keystroke syntax (low priority, but cool)
* [ ] extend config parsers to write changed keybindings (with backup,
      including optional support for commenting out old keybindings lines,
      but also backing up the config to e.g. ~/.cache/clavix/\<timestamp\>)

## notes

* use [dhall](https://dhall-lang.org/#) as a configuration language?
* → focus on defining a consistent user experience (esp. keystrokes)
    transferable between specific applications (such as window managers)
* rewrite in Rust (portability) or CL (for easiest extensibility? →
    look at how qtile handles config; learn more about plugins best
    practices in general)
* → make Nix- and homewarrior-compatible!
* Create a general tool, analogous to colorflip, that tracks (and
    sets) and detects conflicts or inconsistencies between keybindings
    for different apps → name: kbgeneral
* find all standard key shortcuts for Ubuntu, Linux NixOS, etc → First
    step: CLI to read configs (potentially from a config file listing
    all apps) and create keybindings table

### Build on / draw from

* [pawamoy/keycut](https://github.com/pawamoy/keycut) - A command line tool that helps
  you remembering ALL the numerous keyboard shortcuts of ALL your
  favorite programs [link](https://github.com/pawamoy/keycut)
* [lra/mackup/](https://github.com/lra/mackup/) - Keep your application settings in
  sync (OS X/Linux) → get ideas for colorflip and kbgeneral
* Keybinding Collection

### shortcut lists

* [cheatography.com/tag/ubuntu/](https://cheatography.com/tag/ubuntu/)
* [dgkim5360.github.io/blog/linux/2017/07/a-cheatsheet-for-ubuntu-shortcuts/](https://dgkim5360.github.io/blog/linux/2017/07/a-cheatsheet-for-ubuntu-shortcuts/)
* [geeksforgeeks.org/keyboard-shortcuts-for-ubuntu-set-1/](https://www.geeksforgeeks.org/keyboard-shortcuts-for-ubuntu-set-1/)
* [help.ubuntu.com/stable/ubuntu-help/shell-keyboard-shortcuts.html.en,*](https://help.ubuntu.com/stable/ubuntu-help/shell-keyboard-shortcuts.html.en,*) [dell.com/support/kbdoc/de-de/000131678/an-ubuntu-linux-keyboard-shortcut-reference-guide-for-your-dell-pc?lang=en,](https://www.dell.com/support/kbdoc/de-de/000131678/an-ubuntu-linux-keyboard-shortcut-reference-guide-for-your-dell-pc?lang=en,)
* [ask.fedoraproject.org/t/how-to-enable-the-hotkeys-for-fzf/11723](https://ask.fedoraproject.org/t/how-to-enable-the-hotkeys-for-fzf/11723)
* [defkey.com/](https://defkey.com/)
* [defkey.com/ubuntu-shortcuts?pdf=true&modifiedDate=20210304T113257](https://defkey.com/ubuntu-shortcuts?pdf=true&modifiedDate=20210304T113257)

### specific apps

* VScode crap
* [code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf)
  * VSCode - group all commands by type, such as "navigation between
    parts of vscode", "file operations", "overwritten by nvim",
    "code pop-ups", "code running and debugging", etc.
  * change all Alt+C shortcuts in VSCode for fzf
* -> [Anki Deck Control Center](https://docs.google.com/spreadsheets/d/1Lzr3GcZ2fpCONyJkTht8G-Ehn415gB2as3wXOvGlLHU/edit#gid=1690951121)
* [Keyboard shortcuts for YouTube - YouTube Help](https://support.google.com/youtube/answer/7631406?hl=en)

### semantic groups

1. window management
2. terminal multiplexing
3. editing and software development
4. miscellaneous shell, CLI, TUI navigation
5. web browsing
6. system commands

### espanso notes

Need to integrate cleanly → separation of concerns

### other keys to remap

home, end, page up, page down

### proglang keywords

* → how to integrate with espanso? via special characters to begin triggers
* → maybe don’t integrate this part with espanso; pure-kanata can be faster

### Frequency of letter combinations

```python
['BF', 'BG', 'BK', 'BQ', 'BW', 'BX', 'BZ', 'CJ', 'CV', 'CW', 'CX', 'DK', 'DX', 'DZ', 'FB', 'FD', 'FH', 'FJ', 'FK', 'FN', 'FP', 'FQ', 'FV', 'FW', 'FX', 'FZ', 'GB', 'GC', 'GJ', 'GK', 'GP', 'GQ', 'GV', 'GX', 'GZ', 'HG', 'HJ', 'HK', 'HQ', 'HV', 'HX', 'HZ', 'IY', 'JB', 'JC', 'JD', 'JF', 'JG', 'JH', 'JJ', 'JK', 'JL', 'JM', 'JN', 'JP', 'JQ', 'JR', 'JS', 'JT', 'JV', 'JW', 'JX', 'JY', 'JZ', 'KC', 'KJ', 'KK', 'KQ', 'KV', 'KX', 'KZ', 'LJ', 'LQ', 'LX', 'LZ', 'MJ', 'MK', 'MQ', 'MV', 'MX', 'MZ', 'PG', 'PJ', 'PQ', 'PV', 'PX', 'PZ', 'QA', 'QB', 'QC', 'QD', 'QE', 'QF', 'QG', 'QH', 'QI', 'QJ', 'QK', 'QL', 'QM', 'QN', 'QO', 'QP', 'QQ', 'QR', 'QS', 'QT', 'QV', 'QW', 'QX', 'QY', 'QZ', 'SJ', 'SX', 'SZ', 'TJ', 'TK', 'TQ', 'TX', 'UQ', 'UW', 'VB', 'VC', 'VD', 'VF', 'VG', 'VH', 'VJ', 'VK', 'VL', 'VM', 'VN', 'VP', 'VQ', 'VT', 'VV', 'VW', 'VX', 'VZ', 'WG', 'WJ', 'WQ', 'WV', 'WW', 'WX', 'WZ', 'XB', 'XD', 'XG', 'XJ', 'XK', 'XM', 'XN', 'XQ', 'XR', 'XS', 'XW', 'XZ', 'YJ', 'YK', 'YQ', 'YV', 'YX', 'YY', 'ZB', 'ZC', 'ZD', 'ZF', 'ZG', 'ZJ', 'ZK', 'ZM', 'ZN', 'ZP', 'ZQ', 'ZR', 'ZS', 'ZT', 'ZV', 'ZW', 'ZX', 'BH', 'BP', 'CB', 'CF', 'CG', 'CN', 'CP', 'CZ', 'DQ', 'FC', 'FG', 'FM', 'GF', 'GW', 'HC', 'HH', 'HP', 'IJ', 'IW', 'KB', 'KD', 'KP', 'KT', 'MD', 'MG', 'MH', 'MT', 'MW', 'OQ', 'PB', 'PC', 'PD', 'PF', 'PK', 'PN', 'PW', 'RJ', 'RQ', 'RX', 'RZ', 'SV', 'TD', 'TV', 'UH', 'UJ', 'UU', 'VR', 'VS', 'WB', 'WC', 'WK', 'WM', 'WP', 'WU', 'XL', 'YF', 'YH', 'YU', 'ZH', 'ZL', 'AQ', 'BC', 'BD', 'BN', 'CD', 'DP', 'HF', 'IH', 'KF', 'KM', 'KW', 'LH', 'SG', 'TG', 'UZ', 'VU', 'WF', 'WY', 'XF', 'XV', 'YZ', 'ZU', 'ZY', 'AA', 'BM', 'CM', 'DB', 'DC', 'DF', 'DT', 'GD', 'HD', 'JI', 'KG', 'KH', 'KR', 'KU', 'MR', 'NX', 'OZ', 'TB', 'UV', 'XO', 'XX', 'XY', 'YG', 'YW', 'ZZ', 'BV', 'HB', 'MC', 'MF', 'NB', 'NZ', 'TP', 'TZ', 'UX', 'WD', 'XH', 'YB', 'AO', 'CQ', 'DH', 'DJ', 'EJ', 'EZ', 'HW', 'ML', 'SD', 'UK', 'UY', 'VY', 'XU', 'FS', 'KO', 'KY', 'LG', 'LN', 'NP', 'NQ', 'NW', 'SR', 'TF', 'LB', 'OJ', 'SQ', 'WT', 'YD', 'ZO', 'DN', 'DW', 'SB', 'YR', 'FY', 'MN', 'NR', 'SN', 'GM', 'LR', 'TN', 'BB', 'IQ', 'KL', 'NH', 'NJ', 'UO', 'AE', 'AJ', 'AZ', 'LC', 'PY', 'ZI', 'HL', 'HM', 'LW', 'RW', 'YN', 'AH', 'YC', 'GT', 'HS', 'RH', 'WL', 'YL', 'EK', 'PM', 'YA', 'BT', 'IU', 'KA', 'SF', 'YT', 'DM', 'AX', 'DV', 'LP', 'OX', 'UF', 'LK', 'OH', 'IX', 'XE', 'BJ', 'CS', 'II', 'LM', 'SW', 'YM', 'GG', 'YP', 'ZA', 'EH', 'GY', 'HN', 'JA', 'TC', 'TM', 'XC', 'EB', 'RB', 'NM', 'YI', 'XA', 'DG', 'EU', 'WR', 'DL', 'RF', 'LV', 'WS', 'OY', 'OE', 'SK', 'XI', 'CY', 'RP', 'DD', 'IK', 'BS', 'XT', 'KS', 'DY', 'HY', 'ZE', 'GS', 'KN', 'JE', 'NK', 'NV', 'LF', 'JO', 'PS', 'SL', 'EQ', 'OA', 'SY', 'JU', 'AW', 'GL', 'MY', 'IZ', 'NL', 'OK', 'FL', 'SM', 'GN', 'NF', 'XP', 'RV', 'VO', 'EO', 'NN', 'AF', 'HU', 'NU', 'WN', 'FT', 'TW', 'CC', 'HR', 'DR', 'GU', 'RL', 'OI', 'IP', 'UB', 'MB', 'UD', 'MS', 'YE', 'OG', 'PH', 'FU', 'MM', 'OB', 'RK', 'YS', 'KI', 'NY', 'TL', 'IB', 'RG', 'UI', 'AK', 'PU', 'PT', 'BI', 'BR', 'MU', 'EW', 'CK', 'AU', 'EG', 'RC', 'RR', 'PI', 'LT', 'DS', 'RU', 'UG', 'HT', 'GO', 'LU', 'UA', 'UP', 'PP', 'UM', 'VA', 'LS', 'EY', 'BA', 'FF', 'UE', 'DU', 'GA', 'QU', 'CL', 'CR', 'YO', 'DA', 'GI', 'SC', 'RN', 'CU', 'EF', 'FA', 'OC', 'TT', 'EP', 'RM', 'BY', 'OV', 'EI', 'BU', 'DO', 'UC', 'RD', 'SP', 'BO', 'OD', 'GR', 'AP', 'IF', 'AG', 'AV', 'OO', 'FR', 'EX', 'KE', 'AY', 'SA', 'WO', 'OP', 'TY', 'GH', 'AB', 'BL', 'FE', 'MP', 'RY', 'LD', 'EV', 'IG', 'TU', 'PL', 'VI', 'CI', 'AM', 'FI', 'IA', 'IV', 'OS', 'ID', 'SU', 'IR', 'SH', 'AI', 'IM', 'MI', 'PA', 'OW', 'MO', 'TS', 'NI', 'UL', 'NA', 'PO', 'WE', 'RT', 'OL', 'AD', 'EM', 'WI', 'EE', 'WH', 'GE', 'IE', 'WA', 'LO', 'UN', 'RS', 'SO', 'SS', 'UT', 'ET', 'NC', 'LY', 'TR', 'IL', 'OT', 'AC', 'US', 'CT', 'NO', 'PR', 'EC', 'PE', 'HO', 'FO', 'DI', 'NS', 'LA', 'EL', 'TA', 'CA', 'UR', 'OM', 'SI', 'MA', 'BE', 'LL', 'CH', 'LI', 'CE', 'RA', 'EA', 'NE', 'IC', 'RO', 'RI', 'HI', 'DE', 'ME', 'CO', 'VE', 'LE', 'IO', 'OU', 'AS', 'HA', 'SE', 'NG', 'NT', 'TO', 'ST', 'AR', 'AL', 'IT', 'IS', 'ED', 'OF', 'TE', 'OR', 'ES', 'TI', 'ND', 'EN', 'AT', 'ON', 'RE', 'AN', 'ER', 'IN', 'HE', 'TH']
```

### Good (hybrid) modifiers

* q → infrequently followed by most letters; map q+u to ‘qu’
* semicolon → or permanent for all other non-alphabet characters? 15 good left-hand keys
* single quote → or permanent for all other non-alphabet characters? 15 good left-hand keys
* caps lock → hybrid modifier, tap to escape, hold for control → enter - as second hybrid control?
* tab
* double shift
* shift + caps lock
* slash
* left square bracket → or permanent for all other non-alphabet characters like brackets? 15 good left-hand keys
* right square bracket (slightly less comfortable) → maybe clipboard management?
* left alt → 18 good right-hand keys
* right alt → 15 good left-hand keys
* backslash (even less comfortable) → modifier for keyboard layer switching?
* backtick → less comfortable → maybe for application launching?

### good hybrid modifier chords

* right shift + slash
* right shift + dot
* right shift + comma

### other keybinding ideas

shift + shift -> caps lock or some other key

### potentially ‘freed’ keys

* numbers → use for snippets? commands?
* right bracket
* left bracket
* backslash
* shift + quote →
* right alt + space

## Kanata

* [jtroo/kanata](https://github.com/jtroo/kanata)
  * Kanata Documentation](...)
* [Minimal example](https://github.com/jtroo/kanata/blob/main/cfg_samples/minimal.kbd)
* [Simple example with explanations](https://github.com/jtroo/kanata/blob/main/cfg_samples/simple.kbd)
* [All features showcase](https://github.com/jtroo/kanata/blob/main/cfg_samples/kanata.kbd)
* [Table of contents](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#table-of-contents)
* [Comments](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#comments)
* [Required configuration entries](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#required-configuration-entries)
* [defsrc](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#defsrc)
* [deflayer](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#deflayer)
* [Review of required configuration entries](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#review-of-required-configuration-entries)
* [Non-US keyboards](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#non-us-keyboards)
* [Optional defcfg entries](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#optional-defcfg-entries)
* [defcfg](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#defcfg)
* [process-unmapped-keys](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#process-unmapped-keys)
* [danger-enable-cmd](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#danger-enable-cmd)
* [sequence-timeout](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#sequence-timeout)
* [sequence-input-mode](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#sequence-input-mode)
* [sequence-backtrack-modcancel](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#sequence-backtrack-modcancel)
* [log-layer-changes](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#log-layer-changes)
* [delegate-to-first-layer](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#delegate-to-first-layer)
* [movemouse-inherit-accel-state](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#movemouse-inherit-accel-state)
* [movemouse-smooth-diagonals](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#movemouse-smooth-diagonals)
* [Linux only: linux-dev](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#linux-only-linux-dev)
* [Linux only: linux-dev-names-include](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#linux-only-linux-dev-names-include)
* [Linux only: linux-dev-names-exclude](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#linux-only-linux-dev-names-exclude)
* [Linux only: linux-continue-if-no-devs-found](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#linux-only-linux-continue-if-no-devs-found)
* [Linux only: linux-unicode-u-code](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#linux-only-linux-unicode-u-code)
* [Linux only: linux-unicode-termination](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#linux-only-linux-unicode-termination)
* [Linux only: linux-x11-repeat-delay-rate](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#linux-only-x11-repeat-rate)
* [Windows only: windows-altgr](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#windows-only-windows-altgr)
* [Windows only: windows-interception-mouse-hwid](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#windows-only--windows-interception-mouse-hwid)
* [Using multiple defcfg entries](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#using-multiple-defcfg-entries)
* [Aliases and variables](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#aliases-and-vars)
* [Aliases](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#aliases)
* [Variables](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#variables)
* [Actions](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#actions)
* [Live reload](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#live-reload)
* [layer-switch](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#layer-switch)
* [layer-while-held](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#layer-while-held)
* [Transparent key](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#transparent-key)
* [No-op](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#unicode)
* [Unicode](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#unicode)
* [Output chords/combos](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#output-chordscombos)
* [Repeat key](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#repeat-key)
* [Release a key or layer](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#release-a-key-or-layer)
* [multi](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#multi)
* [Mouse actions](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#mouse-actions)
* [tap-dance](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#tap-dance)
* [one-shot](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#one-shot)
* [tap-hold](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#tap-hold)
* [macro](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#macro)
* [dynamic-macro](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#dynamic-macro)
* [fork](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#fork)
* [caps-word](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#caps-word)
* [cmd](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#cmd)
* [arbitrary-code](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#arbitrary-code)
* [Global overrides](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#global-overrides)
* [Include other files](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#include)
* [Advanced/weird features](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#advanced-weird-features)
* [Fake keys](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#fake-keys)
* [Sequences](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#sequences)
* [Input chords](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#input-chords)
* [defaliasenvcond](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#defaliasenvcond)
* [switch](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#switch)
* [Custom tap-hold behaviour](https://github.com/jtroo/kanata/blob/main/docs/config.adoc#custom-tap-hold-behaviour)
* [jtroo/kanata/blob/main/docs/config.adoc](https://github.com/jtroo/kanata/blob/main/docs/config.adoc)
* [r/rust/comments/w0zqk4/kanata_v105_an_advanced_keyboard_remapper_for/](https://www.reddit.com/r/rust/comments/w0zqk4/kanata_v105_an_advanced_keyboard_remapper_for/)
* How to type Croatian, Polish, and Norwegian special characters on
  Ubuntu US Intl keyboard? → just use kanata or similar

## Kmonad

* [kmonad/kmonad](https://github.com/kmonad/kmonad)
* [r/Kmonad/](https://www.reddit.com/r/Kmonad/)
* [precondition.github.io/home-row-mods](https://precondition.github.io/home-row-mods)
* [kmonad/kmonad-contrib/tree/master/keymaps](https://github.com/kmonad/kmonad-contrib/tree/master/keymaps)
* [kmonad/kmonad](https://github.com/kmonad/kmonad)
* [gnulinux.ch/kmonad](https://gnulinux.ch/kmonad)
* [Powerful keybindings easier than ever with KMonad](https://www.youtube.com/watch?v=Dhj1eauljwU)
* [kmonad/kmonad/blob/master/startup/kmonad%40.service](https://github.com/kmonad/kmonad/blob/master/startup/kmonad%40.service)
* [kmonad/kmonad/blob/master/keymap/tutorial.kbd](https://github.com/kmonad/kmonad/blob/master/keymap/tutorial.kbd)
* [kmonad/kmonad/blob/master/Dockerfile](https://github.com/kmonad/kmonad/blob/master/Dockerfile)
* [kmonad/kmonad/blob/master/doc/installation.md#using-nix](https://github.com/kmonad/kmonad/blob/master/doc/installation.md#using-nix)
* [devpress.csdn.net/linux/62ea003220df032da732ab91.html](https://devpress.csdn.net/linux/62ea003220df032da732ab91.html)
* [dev.to/ram535/kmonad-and-the-power-of-infinite-leader-keys-888](https://dev.to/ram535/kmonad-and-the-power-of-infinite-leader-keys-888)
* [kmonad/kmonad/issues](https://github.com/kmonad/kmonad/issues) - get involved
* [david-janssen/kmonad](https://github.com/david-janssen/kmonad) The inspiration for kanata
        (Linux, Windows, Mac)

## Hybrid Modifier / Hypermodifier

* [video](https://www.youtube.com/results?search_query=xcape+linux)
* [manpages.ubuntu.com/manpages/xenial/man1/xcape.1.html](https://manpages.ubuntu.com/manpages/xenial/man1/xcape.1.html)
* [video](https://www.youtube.com/results?search_query=xcape)
* [superuser.com/questions/958734/linux-os-level-key-chord](https://superuser.com/questions/958734/linux-os-level-key-chord)
* [superuser.com/questions/958734/linux-os-level-key-chord](https://superuser.com/questions/958734/linux-os-level-key-chord)
* [wiki.archlinux.org/title/Xbindkeys](https://wiki.archlinux.org/title/Xbindkeys)
* [wiki.archlinux.org/title/Xbindkeys](https://wiki.archlinux.org/title/Xbindkeys)
* [Schoonover](https://www.youtube.com/watch?v=70IxjLEmomg&t=298s)
* [altercation/dotfiles-tilingwm/blob/master/.config/systemd/user/xcape.service](https://github.com/altercation/dotfiles-tilingwm/blob/master/.config/systemd/user/xcape.service)
* [altercation/dotfiles-tilingwm/tree/master/.config/systemd/user](https://github.com/altercation/dotfiles-tilingwm/tree/master/.config/systemd/user)
* [altercation/dotfiles-tilingwm](https://github.com/altercation/dotfiles-tilingwm)
* [altercation/dotfiles-tilingwm/blob/master/.xinitrc](https://github.com/altercation/dotfiles-tilingwm/blob/master/.xinitrc)
* [altercation/dotfiles-tilingwm/blob/master/.Xresources](https://github.com/altercation/dotfiles-tilingwm/blob/master/.Xresources)
* [r/vim/comments/iqumac/can_you_use_chords_or_hyper_keys_in_vim/](https://www.reddit.com/r/vim/comments/iqumac/can_you_use_chords_or_hyper_keys_in_vim/)
* [unix.stackexchange.com/questions/107352/how-to-allow-chords-of-keyboard-keys-to-change-the-keymap-temporarily](https://unix.stackexchange.com/questions/107352/how-to-allow-chords-of-keyboard-keys-to-change-the-keymap-temporarily)
* Ethan Schoonover video on Xmonad -> tab, backslash, semicolon, etc.
  as hybrid modifiers (xkb + xcape + systemd user services) -> use
  kmonad?
* xkb and xcape for hypermodifier → link
* alols/xcape: Linux utility to configure modifier keys to act as
  other keys when pressed and released on their own.
* [XMonad Demo](https://www.youtube.com/watch?v=70IxjLEmomg&t=298s)
* [search?q=repo%3Aaltercation%2Fdotfiles-tilingwm+xkb&type=code](https://github.com/search?q=repo%3Aaltercation%2Fdotfiles-tilingwm+xkb&type=code)

## 1S Reading

* [Reddit - How do you manage your windows?](https://www.reddit.com/r/neovim/comments/11lqwrn/how_do_you_manage_your_windows/) → keybinds
* (2) Is there a quick way to switch/swap tab with escape?
* XCAPE/XMODMAP : archlinux
* → use dhall? kdl? hcl?
* keybinds.jsonc

```jsonc

// Note: this file includes all possible configuration options.
// Sane people's configurations typically use just a subset of these.
{
    "ctrl": [
        {
            "scope": "global",
            "key": "",
             "": ""
        }
    ]
}
```

* declaration.?
* $$$ Idea: Kanata extension to create a keyboard image from the config file

```lisp
(defsrc
    esc            f1   f2   f3   f4             f5    f6    f7    f8          f9   f10  f11   f12
    grv       1      2    3      4      5       6     7      8     9
    *      =    bspc
    tab       q      w    e      r      t       y     u      i     o      p       [      ]       \
    caps      a      s    d      f      g       h     j      k     l      ;       '          enter
    lsft      z      x    c      v      b       n     m      ,     .      /                   rsft           up
    lctl      lmet   lalt             spc                  ralt        rmet                   rctl      lft down rght
)

(deflayer default
    caps           f1   f2   f3   f4               f5      f6     f7    f8          f9   f10  f11   f12
    grv       1      2    3      4       5       6       7       8     9
    *      =     bspc
    tab       q      w    e      r       t       y       u       i     o      @punct  [      ]        \
    @hybrctl  a      s    d      f       @german h       j       k     l      ;       '           enter
    lsft      z      x    c      @vimnav b       @number @spcl   ,     .      /                    rsft               up
    lctl      lmet   lalt             spc                     ralt        rmet                     rctl          lft down rght
    )

(deflayer vimnav
    *         *     *   *     *         *     *    *     *      *    *    *    -
    *       *      *    *      *      *       *     *      *     *      *      *      *    -
    *       *      *    *      *      *       *     *      *     *      *      *      *    -
    *       *      *    *      *      *       lft   down   up    rgh
    *      *       -
    *       *      *    *      *      *       *     *      *     *      *              *     -
    *       *      *         *                                  *      *       *       * - -
)

(deflayer germanmode
    *         *     *   *     *         *     *    *     *      *    *    *    -
    *       *      *    *      *      *       *     *      *     *      *      *      *    -
    *       *      *    *      *      *       *     @
    *     @
    *      *      *    -
    *       @
    *    *      *      *       *     *      *     *      *      *       -
    @gshift -      *    *      *      *       *     *      *     *      *                  @gshift   -
    *       *      *         *                                  *      *       *       * - -
)

(deflayer germanmodecaps
    *         *     *   *     *         *     *    *     *      *    *    *    -
    *       *      *    *      *      *       *     *      *     *      *      *      *    -
    *       *      *    *      *      *       *     @
    *     @
    *      *      *    -
    *       @
    *    *      *      *       *     *      *     *      *      *       -
    *       *      *    *      *      *       *     *      *     *      *              *     -
    *       *      *         *                                  *      *       *       * - -
)

(deflayer freq_unicode
    *         *     *   *     *         *     *    *     *      *    *    *    -
    *       *      *    *      *      *       *     *      *     *      *      *      *    -
    *       *      *    *      *      *       *     @
    *     @
    *      *      *    -
    *       @
    *    *      *      *       *     *      *     *      *      *       -
    *       *      *    *      *      *       *     *      *     *      *              *     -
    *       *      *         *                                  *      *       *       * - -
)

(deflayer numbers
    *         *     *   *     *         *     *    *     *      *    *    *    -
    *       *      *    *      *      *       *     *      *     *      *      *      *    -
    *       *      7    8
    *       *     *      *     *      *      *      *    -
    *       *      4    5
    *       *     *      *     *      *      *       -
    *       0      1    2
    *       *     *      *     *      *              *     -
    *       *      *         *                                  *      *       *       * - -
)

(deflayer punctuationetc
    *         *     *   *       * *    *     *      *    *    *    -
    *       *       *       *      *      *       *     *      *     *      *      *      *    -
    *       S-,     S-.     S-[    S-]    *       *     *      *     *      *      *      *    -
    *       S-9     S-0     [      ]      *       *     *      *     *      *      *       -
    *       @angleL @angleR 2
    *       *     *      *     *      *              *     -
    *       *      *         *                                      *      *       *       * - -
)

(deflayer ascii_special
    *         *     *   *     *         *     *    *     *      *    *    *    -
    *       *      *      *     *      *       *     *      *     *      *      *      *    -
    *       S-\    S-7    S-8   S-9    S-gr
    *     *      *     *      *      *      *    -
    *       \      S-4    S-5   S-6    gr
    *     *      *     *      *      *       -
    *       *      S-1    S-2   S-
    *       *     *      *     *      *              *     -
    *       *        *                           *      *       *       * - -
)

(defalias
    hybrctl (tap-hold-press 200 200 esc lctl)
    vimnav  (tap-hold-press 200 200 v (layer-toggle vimnav))
    german  (tap-hold-press 200 200 g (layer-toggle germanmode))
    gshift  (tap-hold-press 200 200 G (layer-toggle germanmodecaps))
    number  (tap-hold-press 200 200 n (layer-toggle numbers))
    spcl    (tap-hold-press 200 200 m (layer-toggle ascii_special))
    punct   (tap-hold-press 200 200 p (layer-toggle punctuationetc))
    a (unicode ä)
    o (unicode ö)
    u (unicode ü)
    A (unicode Ä)
    O (unicode Ö)
    U (unicode Ü)

    angleL (unicode ⟨)
    angleR (unicode ⟩)
    tblh (unicode ─)
    tblv (unicode ┐)
    tblx1 (unicode x)
    tblx2 (unicode x)
    tblx3 (unicode x)
    tblx4 (unicode x)
    tblx5 (unicode x)
    tblx6 (unicode x)
    tblx7 (unicode x)
    tblx8 (unicode x)
    tblx9 (unicode x)
    tblx10 (unicode x)
    tblx11 (unicode x)
    tblx12 (unicode x)
    tblx13 (unicode x)
    tblx14 (unicode x)
    tblx15 (unicode x)
    tblx16 (unicode x)
    tblx17 (unicode x)
)
```

## SORT

* → find software used to make keybinding images → SVG for zoomability?
* Caps_lock 58, escape 1 -> get all keycodes
* Keybinds
* super shift f : toggle float
* super shift 0-9 : ?
* super space : launch app
* super shift e : logout
* super alt space : file search
* super shift enter : browse
* super enter : terminal
* super shift ? : keybindings
* super ctrl space : dialog of all windows
* super [0-9] : new window
