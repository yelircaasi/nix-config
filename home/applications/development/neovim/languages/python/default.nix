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
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [
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
      py.ipython
      black
      mypy
      isort
      #py.jupyter-client
      #py.jupyter
      #py.ipykernel
    ];

    plugins =
      (with pkgs.vimPlugins; [
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
        #custom.jupyter-kernel-nvim
        #custom.jupytext-nvim
        #custom.nvim-ipy
      ])
      ++ (with custom; [
        {
          plugin = py-lsp-nvim;
          optional = true;
        }
        {
          plugin = hydrovim;
          optional = true;
        }
        {
          plugin = swenv-nvim;
          optional = true;
        }
        {
          plugin = f-string-toggle-nvim;
          optional = true;
        }
      ]);

    files = {};

    needsPython3 = true;
    needsNodeJs = true;
    needsRuby = false;
  }
