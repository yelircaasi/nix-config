{
  inputs,
  pkgs,
  g,
  ...
}: let
  neovim-nightly = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;
  custom = import ./custom-plugins.nix {inherit pkgs;};
  py = pkgs.python310Packages;
  node = pkgs.nodePackages;
in {
  home.packages = with pkgs; [
    # miscelaneous external utils
    tree-sitter #nixos-unstable.tree-sitter
    code-minimap #nixos-unstable.code-minimap
    gawk

    # general-purpose language server
    efm-langserver # diagnostic-languageserver

    # python language server + plugins
    python310
    py.python-lsp-server # alt: node.pyright
    py.pylsp-mypy
    py.pyls-isort
    py.python-lsp-black
    py.pylsp-rope
    py.python-lsp-ruff
    py.pytest
    py.pylint
    py.pytest-cov
    py.coverage
    py.pynvim
    #py.jupyter-client
    #py.jupyter
    py.ipython
    #py.ipykernel
    black
    mypy
    isort

    # lua
    stylua

    # nix
    alejandra
    nixd

    # other language servers
    nil # alt: rnix-lsp
    luaPackages.lua-lsp
    node.vim-language-server
    node.yaml-language-server
    node.bash-language-server
    vscode-langservers-extracted
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    withPython3 = true;
    withNodeJs = true;
    withRuby = false;
    package = neovim-nightly; #pkgs.neovim-unwrapped;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      # lazy loading
      #lazy-nvim
      #custom.lazy-nix-helper-nvim

      # general-purpose / dependency plugins
      plenary-nvim
      mini-nvim
      #custom.core-nvim

      # training
      #vim-be-good

      # development
      #lush-nvim
      #nvim-luapad

      # ui general
      nui-nvim # alt: dressing-nvim, guihua-lua
      noice-nvim
      #custom.popui-nvim

      # keybinding
      custom.hawtkeys-nvim
      legendary-nvim
      which-key-nvim # training wheels
      hydra-nvim
      custom.keymap-amend-nvim

      # startscreen
      dashboard-nvim

      # colorscheme
      custom.schwarzwald

      # status line
      lualine-nvim # alt: neirline-nvim
      nvim-navic

      # buffer line
      bufferline-nvim

      # tab line
      tabby-nvim

      # notifications
      nvim-notify # alt: fidget-nvim, notifier.nvim

      # org (org-mode for nvim)
      custom.neorg # alt: zk-nvim (or complement?), orgmode-nvim
      neorg-telescope

      # additional modes
      zen-mode-nvim

      # icons
      nvim-web-devicons

      # file browsing
      # problem with fm-nvim:
      neo-tree-nvim # alts: fm-nvim (with xplr), ### nnn-vim, -> make nvim-xplr using fm-nvim and joshuto.nvim as basis, integrate with plugins
      oil-nvim #       ### triptych.nvim, ### tfm.nvim,
      custom.nvim-genghis # nvim-tree-lua, nvim-tree-lua

      # terminal ----------------------------------------------------
      toggleterm-nvim # nvim-toggleterm-lua, terminal-nvim, vim-floaterm, neoterm-lua
      nvim-unception
      term-edit-nvim
      custom.wezterm-nvim # kitty-runner-nvim

      # execution (code running, compiling) --------------------------
      sniprun
      custom.code-runner-nvim # alt: runner-nvim
      custom.compiler-nvim # yabs-nvim
      custom.yarepl-nvim
      custom.iron-nvim
      molten-nvim

      # task runner --------------------------------------------------
      overseer-nvim # vs-tasks
      custom.toggletasks-nvim # nvim-moonicipal, jaq-nvim

      # multiplexer, etc.
      smart-splits-nvim
      custom.zellij-nvim # (not working) custom.zellij-nav-nvim, Navigator-nvim, #, nvim, neomux, tmux-nvim, tmux-awesome-manager-nvim, nvimux
      custom.windex-nvim

      # project and config management
      neoconf-nvim
      custom.projectmgr-nvim # projections-nvim, workspaces-nvim, neoproj
      custom.memento-nvim
      nvim-config-local # nvim-projectconfig

      # other popup, menu
      wilder-nvim

      # syntax highlighting - other
      custom.hlargs-nvim

      # treesitter and extensions
      nvim-treesitter.withAllGrammars # nixos-unstable.vimPlugins.nvim-treesitter.withAllGrammars
      nvim-treesitter-context
      custom.agrolens-nvim

      # snippets ------------------------------------------------------
      luasnip
      friendly-snippets
      ultisnips
      telescope-ultisnips-nvim
      nvim-snippy

      # lsp & related ------------------------------------------------
      nvim-lspconfig
      custom.none-ls # installing, but not being found at runtime; try latest version
      lspkind-nvim
      efmls-configs-nvim # diagnosticls-configs-nvim
      nlsp-settings-nvim
      lspsaga-nvim
      lsp_signature-nvim
      vim-illuminate

      # completion --------------------------------------------------
      nvim-cmp
      cmp-nvim-lsp
      cmp-path
      cmp_luasnip

      # debugging --------------------------------------------------
      nvim-dap
      nvim-dap-ui # alt: telescope-dap-nvim
      #custom.nx-nvim

      # quickfix ----------------------------------------------------
      nvim-bqf # alt: qqf-nvim
      custom.qfview-nvim # alt: nvim-pqf
      custom.neowell-lua # ?
      trouble-nvim

      #formatting, linting
      conform-nvim # alt: format-nvim, nvim-strict, guard-nvim, format-on-save-nvim, neoformat, formatter-nvim
      lsp-format-nvim # ?
      nvim-lint

      # refactoring --------------------------------------------------
      refactoring-nvim

      # folding
      # pretty-fold-nvim # alt: fold-cycle-nvim, nvim-ufo, nvim-origimi,
      nvim-ufo

      # testing and coverage -----------------------------------------
      custom.neotest # alt: nvim-test
      nvim-coverage

      # comments -----------------------------------------------------
      comment-nvim
      todo-comments-nvim

      # clipboard ----------------------------------------------------
      nvim-neoclip-lua # deferred-clipboard-nvim, vim-wayland-clipboard (wl-clipboard)
      clipboard-image-nvim
      custom.yanky-nvim

      # git
      neogit # alt: nvim-tinygit
      lazygit-nvim
      gitsigns-nvim
      diffview-nvim
      git-blame-nvim # #custom.nvim-blame-line
      custom.git-sessions-nvim
      gitlinker-nvim

      # editing enhancements,
      text-case-nvim
      ssr
      treesj
      dial-nvim
      live-command-nvim
      renamer-nvim
      custom.sibling-swap-nvim
      custom.move-nvim # alt: custom.moveline-nvim
      #custom.part-edit-nvim
      boole-nvim
      sort-nvim
      smartcolumn-nvim # alts: deadcolumn-nvim, virtcolumn-nvim
      trim-nvim
      vim-sneak
      indent-blankline-nvim

      # searching, fuzzy finding
      telescope-nvim
      custom.telescope-alternate-nvim
      telescope-ui-select-nvim
      telescope-frecency-nvim
      telescope-zoxide
      telescope-fzf-native-nvim
      telescope-zf-native-nvim
      telescope-vim-bookmarks-nvim
      telescope-symbols-nvim
      telescope-sg
      telescope-project-nvim
      telescope-media-files-nvim
      telescope-lsp-handlers-nvim # ?
      telescope-live-grep-args-nvim # ?
      #custom.harpoon2
      custom.marks-nvim
      custom.spaceport-nvim
      custom.improved-search-nvim
      custom.highlight-current-n-nvim # hlsearch-nvim
      custom.search-nvim
      nvim-hlslens
      custom.hlsearch-nvim

      # search and replace
      substitute-nvim # alts: search-repace-nvim, nvim-spectre
      custom.nvim-alt-substitute
      replacer-nvim # alt: nvim-search-and-replace
      custom.rgflow-nvim
      custom.nvim-rg # vim-ripgrep
      custom.muren-nvim
      custom.sad-nvim

      # macros
      sqlite-lua # dependency of neocomposer
      custom.neocomposer-nvim

      # pairs
      autoclose-nvim
      rainbow-delimiters-nvim
      custom.ultimate-autopair-nvim # alt: nvim-autopairs
      custom.sentiment-nvim

      # textobjs
      nvim-surround
      nvim-treesitter-textsubjects
      nvim-treesitter-textobjects
      custom.nvim-various-textobjs

      # navigation
      custom.navigator-lua
      numb-nvim
      dropbar-nvim
      leap-nvim
      flash-nvim
      custom.gx-extended-nvim

      # outline
      symbols-outline-nvim # alt: #custom.outline-nvim

      # miscellaneous utils
      custom.nvim-regexplainer # #custom.hypersonic-nvim
      custom.quicknote-nvim
      custom.carbon-now-nvim
      nvim-colorizer-lua
      venn-nvim
      distant-nvim
      compiler-explorer-nvim
      flatten-nvim
      urlview-nvim

      # media
      hologram-nvim
      image-nvim

      # python
      neotest-python
      nvim-dap-python
      custom.py-lsp-nvim
      custom.hydrovim
      #custom.jupyter-kernel-nvim
      #custom.jupytext-nvim
      #custom.nvim-ipy
      custom.swenv-nvim
      custom.f-string-toggle-nvim
      nvim-treesitter-pyfold # configured in treesitter file
      conjure
      cmp-conjure

      # markdown
      mkdnflow-nvim
      vim-markdown
      markdown-preview-nvim # alt: peek-nvim
      glow-nvim
      nvim-FeMaco-lua
      custom.markdowny-nvim

      # json
      nvim-jqx

      # nix
      vim-nix
      telescope-manix
      nix-develop-nvim

      # rust
      rustaceanvim

      # other language / tool support
      flutter-tools-nvim
      nvim-nu

      # tex
      vimtex
      cmp-latex-symbols
      nabla-nvim

      # plugin development, neovim internals
      neodev-nvim
      custom.nvim-luaref

      # minimap
      minimap-vim

      # github
      octo-nvim
      telescope-github-nvim

      # ai assistance
      custom.codegpt-nvim
      ChatGPT-nvim
      copilot-lua

      # productivity
      custom.taskwarrior-nvim
      custom.xit-nvim
      /**/
    ];
  };
  # xdg.configFile."./nvim/init.lua".text = (g.utils.readAndInterpolate g ./config/init.lua);
  # xdg.configFile."./nvim/lua/plugins" = {
  #   source = ./config/lua/plugins;
  #   recursive = true;
  # };
  # xdg.configFile."./nvim/lua/colors.lua".text = (g.utils.readAndInterpolate g ./config/lua/colors.lua);
  # xdg.configFile."./nvim/lua/mappings.lua".text = (g.utils.readAndInterpolate g ./config/lua/mappings.lua);
  # xdg.configFile."./nvim/lua/options.lua".source = ./config/lua/options.lua;

  xdg.configFile =
    {"./nvim/init.lua".text = g.utils.readAndInterpolate g ./config/init.lua;}
    // (
      g.utils.readAndInterpolateFiles
      g
      {
        xdgAttrName = "./nvim/lua";
        relativeDir = ./config/lua;
        fileSuffix = ".lua";
      }
      [
        "colors"
        "mappings"
        "options"
      ]
    )
    // (
      g.utils.readAndInterpolateFiles
      g
      {
        xdgAttrName = "./nvim/lua/plugins";
        relativeDir = ./config/lua/plugins;
        fileSuffix = ".lua";
      }
      [
        "ai"
        "buffer_line"
        "clipboard"
        "code_minimap"
        "code_outline"
        "comments"
        "completion"
        "debugging"
        "editing"
        "execution"
        "filetree"
        "folding"
        "formatting_and_linting"
        "git"
        "github"
        "highlighting_other"
        "icons"
        "increment_and_toggling"
        "json"
        "keybinding"
        "lsp"
        "macros"
        "markdown"
        "media"
        "menus_other"
        "miscellaneous"
        "modes"
        "multiplexer"
        "navigation"
        "neovim_dev"
        "nix"
        "notifications"
        "org"
        "other_langs"
        "pairs"
        "productivity"
        "projects"
        "python"
        "quickfix"
        "refactoring_other"
        "rust"
        "search"
        "search_and_replace"
        "snippets"
        "startscreen"
        "status_line"
        "tab_line"
        "taskrunner"
        "terminal"
        "testing_and_coverage"
        "tex"
        "textobjects"
        "training"
        "treesitter_and_extensions"
        "ui"
      ]
    );
}
