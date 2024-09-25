{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.python;
  luaName = langCfg.luaName;
  py = pkgs.python312Packages;
in
  if !langCfg.enable
  then blankSet
  else rec {
    packages = with pkgs; [
      # python312
      ruff
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
      # py.ipython
      #py.jupyter-client
      #py.jupyter
      #py.ipykernel
    ];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = nvim-lspconfig;
          optional = true;
        }
        {
          plugin = neotest-python;
          optional = true;
        }
        {
          plugin = nvim-dap-python;
          optional = true;
        }
        {
          plugin = nvim-treesitter-pyfold;
          optional = true;
        } # configured in treesitter file
        {
          plugin = conjure;
          optional = true;
        }
        {
          plugin = cmp-conjure;
          optional = true;
        }
        {
          plugin = trouble-nvim;
          optional = true;
        }
        #custom.jupyter-kernel-nvim
        #custom.jupytext-nvim
        #custom.nvim-ipy
      ])
      ++ (with custom; [
        # {
        #   plugin = py-lsp-nvim;
        #   optional = true;
        # }
        # {
        #   plugin = hydrovim;
        #   optional = true;
        # }
        # {
        #   plugin = swenv-nvim;
        #   optional = true;
        # }
        # {
        #   plugin = f-string-toggle-nvim;
        #   optional = true;
        # }
      ]);

    # files = {
    #   "./nvim/lua/languages/${luaName}.lua".text = g.utils.readAndInterpolate g ./python.lua;
    # };

    pluginStrings = [
      # TODO: rewrite to repeat the string as long many times as the plugin list is long; also prepend strings to file
      "-- lspconfig RTP command"
      "-- neotest RTP command"
      "-- dap RTP command"
      "-- treesitter RTP command"
      "-- conjure RTP command"
      "-- cmp-conjure RTP command"
      "-- trouble RTP command"
    ];

    files = {
      "./nvim/lua/languages/${luaName}.lua".text =
        builtins.replaceStrings
        pluginStrings
        (map (set: ''vim.opt.rtp:prepend("${set.plugin}")'') plugins)
        (g.utils.readAndInterpolate g ./python.lua);
    };

    needsPython3 = true;
    needsNodeJs = true;
    needsRuby = false;
  }
# TODO: quicker.nvim, trouble.nvim
# TODO: min devenv: ruff LSP, black, isort, python seamless code execution (iron.nvim?), venv management -> Nix devshell
# TODO: wezterm tab and pane navigation
# TODO: also find suitable GUI image editor

