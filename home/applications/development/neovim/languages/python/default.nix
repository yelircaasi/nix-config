{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.python.enable {
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
      neotest-python
      nvim-dap-python
      nvim-treesitter-pyfold # configured in treesitter file
      conjure
      cmp-conjure
      #custom.jupyter-kernel-nvim
      #custom.jupytext-nvim
      #custom.nvim-ipy
    ])
    ++ (with custom; [
      py-lsp-nvim
      hydrovim
      swenv-nvim
      f-string-toggle-nvim
    ]);

  files = {};

  needsPython3 = true;
  needsNodeJs = true;
  needsRuby = false;
}
