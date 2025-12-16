{
  features = {
    # language-independent
    clipboard = {
      enable = false;
      luaName = "clipboard";
    }; #                      start
    codeMinimap = {
      enable = false;
      luaName = "code_minimap";
    }; #                    filetype
    fileBrowserOther = {
      enable = false;
      luaName = "file_browser_other";
    }; #               keybind?
    fileBrowserTree = {
      enable = false;
      luaName = "file_browser_tree";
    }; #                keybind?
    fileBrowserTui = {
      enable = false;
      luaName = "file_browser_tui";
    }; #                 keybind?
    generalPurposeAndDependencies = {
      enable = false;
      luaName = "general_purpose_and_dependencies";
    }; #  keybind?
    git = {
      enable = false;
      luaName = "git";
    }; #                            keybind?
    github = {
      enable = false;
      luaName = "github";
    }; #                         keybind?
    icons = {
      enable = false;
      luaName = "icons";
    }; #                          start
    media = {
      enable = false;
      luaName = "media";
    }; #                          filetype / keybind
    modes = {
      enable = false;
      luaName = "modes";
    }; #                          start
    multiplexer = {
      enable = false;
      luaName = "multiplexer";
    }; #                    start?
    notifications = {
      enable = false;
      luaName = "notifications";
    }; #                  start
    outlineAndBreadcrumbs = {
      enable = false;
      luaName = "outline_and_breadcrumbs";
    }; #           keybind
    popupAndMenu = {
      enable = false;
      luaName = "popup_and_menu";
    }; #                   start
    productivity = {
      enable = false;
      luaName = "productivity";
    }; #                   keybind
    projectAndConfigManagement = {
      enable = false;
      luaName = "project_and_config_management";
    }; #      keybind? start?
    selfReferential = {
      enable = false;
      luaName = "self_referential";
    };
    startScreen = {
      enable = false;
      luaName = "start_screen";
    }; #                    autocommand (autocommand for no filetype?)
    statusLine = {
      enable = false;
      luaName = "status_line";
    }; #                    start
    terminal = {
      enable = false;
      luaName = "terminal";
    }; #                       keybind?
    training = {
      enable = false;
      luaName = "training";
    }; #                       keybind
    treeFileBrowser = {
      enable = false;
      luaName = "tree_file_browser";
    }; #              filetype? (autocommand for directory?)
    tuiFileBrowser = {
      enable = false;
      luaName = "tui_file_browser";
    }; #               keybind
    ui = {
      enable = false;
      luaName = "ui";
    }; #                             start

    # quasi language-independent
    ai = {
      enable = false;
      luaName = "ai";
    }; #                             keybind
    bufferLine = {
      enable = false;
      luaName = "buffer_line";
    }; #                     start?
    codeExecution = {
      enable = false;
      luaName = "code_execution";
    }; #                  keybind
    comments = {
      enable = false;
      luaName = "comments";
    }; #                       filetype
    editingEnhancements = {
      enable = false;
      luaName = "editing_enhancements";
    }; #            start + filetype
    folding = {
      enable = false;
      luaName = "folding";
    }; #                        start + filetype?
    incrementAndToggling = {
      enable = false;
      luaName = "increment_and_toggling";
    }; #           start?
    keybinding = {
      enable = false;
      luaName = "keybinding";
    }; #                     start + filetype?
    macros = {
      enable = false;
      luaName = "macros";
    }; #                         keybind?
    miscellaneous = {
      enable = false;
      luaName = "miscellaneous";
    }; #                  -> mixed
    navigation = {
      enable = false;
      luaName = "navigation";
    }; #                     start + filetype?
    pairs = {
      enable = false;
      luaName = "pairs";
    }; #                          start+ filetype?
    search = {
      enable = false;
      luaName = "search";
    }; #                         keybind?
    searchAndReplace = {
      enable = false;
      luaName = "search_and_replace";
    }; #               keybind?
    tabLine = {
      enable = false;
      luaName = "tab_line";
    }; #                        start? / keybind? / filetype?
    taskRunner = {
      enable = false;
      luaName = "task_runner";
    }; #                     keybind
    textobjects = {
      enable = false;
      luaName = "textobjects";
    }; #                    start + filetype?

    # # language-specific
    # completion = { enable = false;  }; #                     keybind (filetype-modulated)
    # debugging = { enable = false;  }; #                      keybind (filetype-modulated)
    # formattingAndLinting = { enable = false;  }; #           keybind (filetype-modulated) / filetype?
    # lsp = { enable = false;  }; #                            keybind (filetype-modulated)
    # quickfix = { enable = false;  }; #                       keybind (filetype-modulated)
    # refactoring = { enable = false;  }; #                    keybind (filetype-modulated)
    # snippets = { enable = false;  }; #                       keybind (filetype-modulated)
    # syntaxHighlightingAdditional = { enable = false;  }; #   keybind (filetype-modulated)
    # testingAndCoverage = { enable = false;  }; #             keybind (filetype-modulated)
    # treesitterAndExtensions = { enable = false;  }; #        filetype

    # own language
  };
  languages = {
    apl = {
      enable = false;
      luaName = "apl";
    };
    assembly = {
      enable = false;
      luaName = "assembly";
    };
    bash = {
      enable = false;
      luaName = "bash";
    };
    c = {
      enable = false;
      luaName = "c";
    };
    clojure = {
      enable = false;
      luaName = "clojure";
    };
    commonLisp = {
      enable = false;
      luaName = "common_lisp";
    };
    cpp = {
      enable = false;
      luaName = "cpp";
    };
    crystal = {
      enable = false;
      luaName = "crystal";
    };
    css = {
      enable = false;
      luaName = "css";
    };
    d = {
      enable = false;
      luaName = "d";
    };
    dartFlutter = {
      enable = false;
      luaName = "dart_flutter";
    };
    dhall = {
      enable = false;
      luaName = "dhall";
    };
    elisp = {
      enable = false;
      luaName = "elisp";
    };
    elixir = {
      enable = false;
      luaName = "elixir";
    };
    elm = {
      enable = false;
      luaName = "elm";
    };
    elvish = {
      enable = false;
      luaName = "elvish";
    };
    erlang = {
      enable = false;
      luaName = "erlang";
    };
    fennel = {
      enable = false;
      luaName = "fennel";
    };
    fish = {
      enable = false;
      luaName = "fish";
    };
    go = {
      enable = false;
      luaName = "go";
    };
    guile = {
      enable = false;
      luaName = "guile";
    };
    haskell = {
      enable = false;
      luaName = "haskell";
    };
    haxe = {
      enable = false;
      luaName = "haxe";
    };
    hexadecimal = {
      enable = false;
      luaName = "hexadecimal";
    };
    html = {
      enable = false;
      luaName = "html";
    };
    hyprlang = {
      enable = false;
      luaName = "hyprlang";
    };
    java = {
      enable = false;
      luaName = "java";
    };
    javascript = {
      enable = false;
      luaName = "javascript";
    };
    json = {
      enable = false;
      luaName = "json";
    };
    julia = {
      enable = false;
      luaName = "julia";
    };
    kdl = {
      enable = false;
      luaName = "kdl";
    };
    kotlin = {
      enable = false;
      luaName = "kotlin";
    };
    lua = {
      enable = true;
      luaName = "lua";
    };
    markdown = {
      enable = false;
      luaName = "markdown";
    };
    moonscript = {
      enable = false;
      luaName = "moonscript";
    };
    nickel = {
      enable = false;
      luaName = "nickel";
    };
    nim = {
      enable = false;
      luaName = "nim";
    };
    nix = {
      enable = false;
      luaName = "nix";
    };
    norg = {
      enable = false;
      luaName = "norg";
    };
    nushell = {
      enable = false;
      luaName = "nushell";
    };
    ocaml = {
      enable = false;
      luaName = "ocaml";
    };
    octave = {
      enable = false;
      luaName = "octave";
    };
    org = {
      enable = false;
      luaName = "org";
    };
    perl = {
      enable = false;
      luaName = "perl";
    };
    php = {
      enable = false;
      luaName = "php";
    };
    purescript = {
      enable = false;
      luaName = "purescript";
    };
    python = {
      enable = false;
      luaName = "python";
    };
    r = {
      enable = false;
      luaName = "r";
    };
    racket = {
      enable = false;
      luaName = "racket";
    };
    raku = {
      enable = false;
      luaName = "raku";
    };
    roc = {
      enable = false;
      luaName = "roc";
    };
    ruby = {
      enable = false;
      luaName = "ruby";
    };
    rust = {
      enable = false;
      luaName = "rust";
    };
    scala = {
      enable = false;
      luaName = "scala";
    };
    scheme = {
      enable = false;
      luaName = "scheme";
    };
    scss = {
      enable = false;
      luaName = "scss";
    };
    starlark = {
      enable = false;
      luaName = "starlark";
    };
    teal = {
      enable = false;
      luaName = "teal";
    };
    tex = {
      enable = false;
      luaName = "tex";
    };
    todotxt = {
      enable = false;
      luaName = "todotxt";
    };
    toml = {
      enable = false;
      luaName = "toml";
    };
    typescript = {
      enable = false;
      luaName = "typescript";
    };
    typst = {
      enable = false;
      luaName = "typst";
    };
    vimscript = {
      enable = false;
      luaName = "vimscript";
    };
    vim9script = {
      enable = false;
      luaName = "vim9script";
    };
    vlang = {
      enable = false;
      luaName = "vlang";
    };
    xit = {
      enable = true;
      luaName = "xit";
    };
    yaml = {
      enable = false;
      luaName = "yaml";
    };
    yuck = {
      enable = false;
      luaName = "yuck";
    };
    zig = {
      enable = false;
      luaName = "zig";
    };
  };
}
