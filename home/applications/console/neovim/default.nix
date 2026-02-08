{
  inputs,
  pkgs,
  ...
}: let
  neovim-nightly = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;

  pde = pkgs.symlinkJoin {
    name = "pde";
    paths = [neovim-nightly];
    buildInputs = [pkgs.makeWrapper];

    postBuild = ''
      wrapProgram $out/bin/nvim \
        --prefix PATH : ${pkgs.lib.makeBinPath [
        # Rust tooling
        pkgs.rust-analyzer
        pkgs.rustfmt
        pkgs.clippy

        # Haskell tooling
        pkgs.haskell-language-server
        pkgs.fourmolu
        pkgs.hlint

        # Python tooling
        pkgs.pyright
        pkgs.ruff
        pkgs.black
        pkgs.isort

        # General utilities
        pkgs.tree-sitter
        pkgs.fd
        pkgs.ripgrep
      ]}

      ${pkgs.gnused}/bin/sed -i '$s|"\$@"|-u \$HOME/.config/nvim/init.lua "\$@"|' $out/bin/nvim

      # Create pde symlink
      ln -sf $out/bin/nvim $out/bin/pde
    '';

    meta = with pkgs.lib; {
      description = "Neovim-based PDE with Rust, Haskell, and Python tooling";
      homepage = "https://neovim.io";
      license = licenses.asl20;
      platforms = platforms.unix;
    };
  };

  myTreesitter = pkgs.vimPlugins.nvim-treesitter.withAllGrammars;

  myPlugins = with pkgs.vimPlugins; let
    # TODO: checks fail
    # markit-nvim = pkgs.vimUtils.buildVimPlugin {
    #   pname = "markit.nvim";
    #   version = "2025-10-09";
    #   src = pkgs.fetchFromGitHub {
    #     owner = "2KAbhishek";
    #     repo = "markit.nvim";
    #     rev = "c716195d5b0b21ef03a20a1facc46d33ca9f7c49";
    #     sha256 = "sha256-RY4pFO3HDIaiTADE5T9jb+3X7KVHAFw3cT8wmAYz7KU=";
    #   };
    #   meta.homepage = "https://github.com/2KAbhishek/markit.nvim";
    # };
    pickme-nvim = pkgs.vimUtils.buildVimPlugin {
      pname = "pickme.nvim";
      version = "2025-12-24";
      src = pkgs.fetchFromGitHub {
        owner = "2KAbhishek";
        repo = "pickme.nvim";
        rev = "3bfd63fa0a1fa362afc9dfa86b83100e75903e6b";
        sha256 = "sha256-FxdbKmxrhwXWBzjPve07oqBCv3lp++YwZJPuLfaFOIU=";
      };
      meta.homepage = "https://github.com/2KAbhishek/pickme.nvim";
    };
    nvim-treesitter-textobjects-nightly = pkgs.vimUtils.buildVimPlugin {
      pname = "nvim-treesitter-textobjects";
      version = "2026-01-28";
      src = pkgs.fetchFromGitHub {
        owner = "nvim-treesitter";
        repo = "nvim-treesitter-textobjects";
        rev = "a0e182ae21fda68c59d1f36c9ed45600aef50311";
        sha256 = "sha256-J3D+nbalJqZ4aeFBD7veW6TuI0BEU2jbx5pMEew4dkA=";
      };
      meta.homepage = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects";
    };
  in [
    oil-nvim
    blink-cmp
    mini-pick
    luasnip
    rustaceanvim
    myTreesitter
    haskell-tools-nvim
    # vague-nvim
    bamboo-nvim

    zen-mode-nvim
    lualine-nvim
    dial-nvim
    yazi-nvim
    conform-nvim
    toggleterm-nvim
    vim-floaterm
    #floaterm
    which-key-nvim
    nvim-bqf
    mini-nvim
    gitsigns-nvim
    todo-comments-nvim
    telescope-nvim
    plenary-nvim
    diffview-nvim
    # markit-nvim
    marks-nvim
    pickme-nvim
    nvim-treesitter-textobjects-nightly
    neotest
    vim-visual-multi
    nvim-nio

    friendly-snippets
    telescope-fzf-native-nvim
    snacks-nvim
    neotest-python
    neotest-haskell

    # nvim-lualine/lualine.nvim,
    # monaqa/dial.nvim,
    # mikavilpas/yazi.nvim,
    # stevearc/conform.nvim,
    # akinsho/toggleterm.nvim,
    # voldikss/vim-floaterm,
    # folke/which-key.nvim,
    # kevinhwang91/nvim-bqf,
    # echasnovski/mini.nvim,
    # lewis6991/gitsigns.nvim,
    # folke/todo-comments.nvim,
    # nvim-telescope/telescope.nvim,
    # nvim-lua/plenary.nvim, -- dependency of telescope
    # sindrets/diffview.nvim,
    # 2kabhishek/markit.nvim,
    # 2KAbhishek/pickme.nvim,
    # nvim-treesitter/nvim-treesitter-textobjects,
    # nvim-neotest/neotest,
    # mg979/vim-visual-multi
  ];
  #  ['oil.nvim'] = { src = gh("stevearc/oil.nvim") },
  #  ['blink.cmp'] = { src = gh("saghen/blink.cmp") },
  #  ["mini.pick"] = { src = gh("nvim-mini/mini.pick") },
  #  ["nvim-treesitter"] = { src = gh("nvim-treesitter/nvim-treesitter") },
  idLookup = {}; # for plugins lacking p.src.owner and p.src.repo

  ghUrl = "https://github.com/";
  glUrl = "https://gitlab.com/";
  cbUrl = "https://codeberg.org/";

  stripBase = base: url:
    if (pkgs.lib.strings.hasPrefix base url)
    then (builtins.replaceStrings [base] [""] url)
    else url;

  idFromUrl = url: stripBase cbUrl (stripBase glUrl (stripBase ghUrl url));

  toLuaTable = plugins: let
    getPluginId = p:
      if (p ? src && p.src ? owner && p.src ? repo)
      then "${p.src.owner}/${p.src.repo}"
      else if (p ? meta && p.meta ? homepage)
      then idFromUrl p.meta.homepage
      else idLookup.${p.pname};

    lines = map (p: ''["${getPluginId p}"] = { path = "${p}" },'') plugins;
  in
    "return {\n" + (builtins.concatStringsSep "\n" lines) + "\n}\n";
in {
  home.packages = [pde];
  home.file.".config/nvim/nix_plugins.lua".text = toLuaTable myPlugins;
}
