{
  features = [
    # language-independent
    "clipboard" #                      start
    "code-minimap" #                   filetype
    "git" #                            keybind?
    "github" #                         keybind?
    "icons" #                          start
    "media" #                          filetype / keybind           
    "modes" #                          start
    "multiplexer" #                    start?
    "notifications" #                  start
    "popup-and-menu" #                 start
    "productivity" #                   keybind
    "project-and-config-management" #  keybind? start?
    "startscreen" #                    autocommand (autocommand for no filetype?)
    "status-line" #                    start
    "terminal" #                       keybind?
    "training" #                       keybind
    "tree-file-browser" #              filetype? (autocommand for directory?)
    "tui-file-browser" #               keybind
    "ui" #                             start

    # quasi language-independent
    "ai" #                             keybind
    "buffer-line" #                    start?
    "code-execution" #                 keybind
    "code-outline" #                   filetype
    "comments" #                       filetype 
    "editing-enhancements" #           start + filetype
    "folding" #                        start + filetype?
    "increment-and-toggling" #         start?
    "keybinding" #                     start + filetype?
    "macros" #                         keybind?
    "miscellaneous" #                  -> mixed
    "navigation" #                     start + filetype?
    "pairs" #                          start+ filetype?
    "search" #                         keybind?
    "search-and-replace" #             keybind?
    "tab-line" #                       start? / keybind? / filetype?
    "task-runner" #                    keybind
    "textobjects" #                    start + filetype?

    # language-specific
    "completion" #                     keybind (filetype-modulated)
    "debugging" #                      keybind (filetype-modulated)
    "formatting-and-linting" #         keybind (filetype-modulated) / filetype?
    "lsp" #                            keybind (filetype-modulated)
    "quickfix" #                       keybind (filetype-modulated)
    "refactoring" #                    keybind (filetype-modulated)
    "snippets" #                       keybind (filetype-modulated)
    "syntax-highlighting-additional" # keybind (filetype-modulated)
    "testing-and-coverage" #           keybind (filetype-modulated)
    "treesitter-and-extensions" #      filetype

    # own language
    "org" #                            filetype
  ];
  languages = [
    "apl"
    "assembly"
    "bash"
    "c"
    "clojure"
    "common-lisp"
    "cpp"
    "crystal"
    "css"
    "d"
    "dart-flutter"
    "dhall"
    "elisp"
    "elixir"
    "elm"
    "elvish"
    "erlang"
    "fennel"
    "fish"
    "go"
    "guile"
    "haskell"
    "haxe"
    "hexadecimal"
    "html"
    "hyprlang"
    "java"
    "javascript"
    "json"
    "julia"
    "kdl"
    "kotlin"
    "lua"
    "markdown"
    "moonscript"
    "nickel"
    "nim"
    "nix"
    "norg"
    "nushell"
    "ocaml"
    "octave"
    "org"
    "perl"
    "php"
    "purescript"
    "python"
    "r"
    "racket"
    "raku"
    "roc"
    "ruby"
    "rust"
    "scala"
    "scheme"
    "scss"
    "starlark"
    "teal"
    "tex"
    "toml"
    "typescript"
    "typst"
    "vimscript"
    "vim9script"
    "vlang"
    "yaml"
    "yuck"
    "zig"
  ];
}
