# { 
#   inputs,
#   lib,
#   config,
#   pkgs,
#   custom,
#   ...
# }:
# let
#   # […]
#   nix-nvim = builtins.fetchGit {
#     url = "https://framagit.org/vegaelle/nix-nvim" ;
#     ref = "master" ;
#     rev = "d058d9f9130b1d4a580885c12cd3cefaeab475a0" ;
#   };
# in
# {
#   imports = [ (import "${nix-nvim}") ];
# }
{ pkgs, lib, ... }:
let
  vim-plugins = import ./plugins.nix { inherit pkgs lib; };
  # nixos-master = import (builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/master.tar.gz) {};
  # nixos-unstable = import <unstable> {};
in {
  # nixpkgs.overlays = [
  #   (import (builtins.fetchTarball {
  #     url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
  #   }))
  # ];
  home.packages = with pkgs; [
    nodePackages.pyright #nixos-unstable.nodePackages.pyright
    tree-sitter #nixos-unstable.tree-sitter 
    code-minimap #nixos-unstable.code-minimap
    luaPackages.lua-lsp 
    rnix-lsp 
    nodePackages.vim-language-server
    nodePackages.yaml-language-server nodePackages.bash-language-server
    nodePackages.vscode-json-languageserver-bin
    nodePackages.vscode-html-languageserver-bin
    nodePackages.vscode-css-languageserver-bin
    vscode-langservers-extracted # nixos-unstable.vscode-langservers-extracted
    rnix-lsp
  ];
  programs.neovim = {
    enable = true;
    package = pkgs.neovim-unwrapped; #nixos-unstable.neovim-unwrapped;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      csv-vim
      vim-surround  # fix config
      vim-repeat
      # vim-speeddating  # makes statusline buggy??
      vim-commentary
      vim-unimpaired
      vim-sleuth  # adjusts shiftwidth and expandtab based on the current file
      vim-startify
      vim-multiple-cursors
      gundo-vim
      vim-easy-align
      vim-table-mode
      editorconfig-vim
      vim-markdown
      ansible-vim
      vim-nix
      robotframework-vim
      # vimspector
      vim-plugins.vim-bepoptimist
      vim-plugins.nvim-base16  # the one packaged in nixpkgs is different
      popup-nvim
      plenary-nvim
      telescope-nvim
      telescope-symbols-nvim
      # telescope-media-files  # doesn't support wayland yet
      nvim-colorizer-lua
      
      pkgs.vimPlugins.nvim-treesitter.withAllGrammars # nixos-unstable.vimPlugins.nvim-treesitter.withAllGrammars
      nvim-lspconfig
      pkgs.vimPlugins.lsp_extensions-nvim # nixos-unstable.vimPlugins.lsp_extensions-nvim
      # completion-nvim
      nvim-cmp
      cmp-nvim-lsp
      lspkind-nvim
      gitsigns-nvim
      neogit
      pkgs.vimPlugins.diffview-nvim # nixos-unstable.vimPlugins.diffview-nvim
      pkgs.vimPlugins.bufferline-nvim # nixos-unstable.vimPlugins.bufferline-nvim
      nvim-autopairs
      pkgs.vimPlugins.galaxyline-nvim # nixos-unstable.vimPlugins.galaxyline-nvim
      vim-closetag
      friendly-snippets
      vim-vsnip
      # nvim-tree-lua
      neo-tree-nvim
      nvim-web-devicons
      vim-devicons
      # vim-auto-save  # ?
      vim-plugins.neoscroll-nvim
      vim-plugins.zenmode-nvim
      # minimap-vim
      vim-plugins.indent-blankline-nvim  # using my own derivation because the nixpkgs still uses the master branch
      vim-easymotion
      quick-scope
      matchit-zip
      targets-vim
      neoformat
      vim-numbertoggle
      # vim-markdown-composer
      vimwiki
      pkgs.vimwiki-markdown
      vim-python-pep8-indent
      lsp_signature-nvim
      rust-tools-nvim
      vim-plugins.keymap-layer-nvim
      vim-plugins.hydra-nvim
    ];

    extraConfig = "lua << EOF\n" + builtins.readFile ./init.lua + "\nEOF";
  };
}
