{
  inputs,
  pkgs,
  lib,
  g,
  ...
}: {
  # dev notes: need to create a neovim flake that can be imported as a home manager module
  # name yannix: Yet Another Nvim-via-Nix (alternative: nixide?)
  # pdenix, denix
  # flakes: nix-config, nix-utils (from current global-inputs.lib), nixide (nvim configurable, hm-compatible), clinix (hm config / shell env for opinionated and configurable CLI dev-environment), nixmacs (like nixide, but emacs instead of nvim -> precompile / somehow accelerate elisp?)
  programs.yannix = {
    enable = true;
    nvimPackage = {
      stable = true;
      customBuildOptions = {};
    };
    isDefaultEditor = true;
    documentation = {
      outputMarkdown = true;
      outputNorg = true;
    };
    commands = {
      vi = false;
      vim = true;
      nvim = true;
      vimdiff = true;
      pde = "...";
      minvim = "...";
    };

    gui = {
      neovide = {enable = false;};
      wezterm = {
        enable = true;
        startup = {
          commandName = "wezvim";
          extraOptions = {};
          desktopApp = {};
        };
      };
    };
    miscVimOptions = {};
    languages = {
      nix = {enable = true;};
      python = {enable = true;};
      haskell = {enable = true;};
      rust = {enable = true;};
      go = {enable = true;};
      c = {enable = true;};
      tex = {enable = true;};
      markdown = {enable = true;};
    };
    externalIntegrations = {
      terminalEmulators = {
        wezterm = {
          enable = true;
          hmConfigureHere = false;
        };
        kitty = {
          enable = true;
          # hmConfigureHere = false;
        };
        alacritty = {
          enable = true;
          # hmConfigureHere = false;
        };
      };
      clipboard = {greenclip = {enable = true;};};
      zathura = {
        enable = true;
        # hmConfigureHere = false;
      };
      multiplexers = {
        wezterm = {
          enable = true;
          # hmConfigureHere = false;
        };
        zellij = {
          enable = true;
          # hmConfigureHere = false;
        };
        tmux = {
          enable = true;
          # hmConfigureHere = false;
        };
      };
    };
    ux = {
      keybinds = {
        # g.key;
      };
      mouse = {};
    };
    appearance = {
      colors = {
        # g.color;
      };
      fonts = {
        basic = {};
        icons = {};
        patches = {};
      };
      ui = {roundedCorners = False;};
    };
    configHandling = {
      lazyLoad = true;
      precompile = true;
      minify = true;
      legibleConfigDir = "$XDG_CACHE_DIR/nvim-readable";
    };
    generalEditing = {enable = true;};
    functionality = {
      ai = {enable = true;};
      bufferline = {enable = true;};
      clipboard = {enable = true;};
      codeExecution = {enable = true;};
      code_minimap = {enable = true;};
      code_outline = {enable = true;};
      comments = {enable = true;};
      comments = {enable = true;};
      completion = {enable = true;};
      debugging = {enable = true;};
      execution = {enable = true;};
      fileBrowser = {
        enable = true;
        fileTree = {enable = true;};
        tuiFM = {enable = true;};
      };
      folding = {enable = true;};
      formatting_and_linting = {enable = true;};
      git = {enable = true;};
      github = {enable = true;};
      highlighting_other = {enable = true;};
      icons = {enable = true;};
      incrementAndToggling = {enable = true;};
      keybinding = {enable = true;};
      lsp = {enable = true;};
      macros = {enable = true;};
      markdown = {enable = true;};
      media = {enable = true;};
      menus = {enable = true;};
      miscellaneous = {enable = true;};
      modes = {enable = true;};
      multiplexer = {enable = true;};
      navigation = {enable = true;};
      neovimDev = {enable = true;};
      notebooks = {enable = true;};
      notifications = {enable = true;};
      org = {enable = true;};
      other_langs = {enable = true;};
      pairs = {enable = true;};
      productivity = {enable = true;};
      projects = {enable = true;};
      quickfix = {enable = true;};
      refactoring_other = {enable = true;};
      # search = {enable = true;};
      searchAndReplace = {enable = true;};
      snippets = {enable = true;};
      startscreen = {enable = true;};
      statusline = {enable = true;};
      tabline = {enable = true;};
      taskRunning = {enable = true;};
      telescope = {enable = true;};
      terminal = {enable = true;};
      testingAndCoverage = {enable = true;};
      tex = {enable = true;};
      textobjects = {enable = true;};
      training = {enable = true;};
      treesitterAndExtensions = {
        enable = true;
        withAllGrammars = true;
      };
      # treesitter_and_extensions = {enable = true;};
    };
    additionalLuaConfig = {
      preNix = {
        text = '''';
      };
      postNix = {
        path = "";
      };
    };
  };
}
