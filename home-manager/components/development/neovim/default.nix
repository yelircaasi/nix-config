{ inputs, pkgs, lib, ... }:
let
  vim-plugins = import ./plugins.nix { inherit pkgs lib; };
  # nixos-master = import (builtins.fetchTarball[nixpkgs/archive/master.tar.gz)](https://github.com/NixOS/nixpkgs/archive/master.tar.gz)){};
  # nixos-unstable = import <unstable> {};
in {
  # nixpkgs.overlays = [
  #   (import (builtins.fetchTarball {
  #     url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
  #   }))
  # ];
  home.packages = with pkgs; [
    # vimPlugins.none-ls-nvim

    python310Packages.python-lsp-server
    python310Packages.pylsp-mypy
    python310Packages.pyls-isort
    python310Packages.python-lsp-black
    python310Packages.pylsp-rope
    python310Packages.python-lsp-ruff
    python310Packages.pylint
    vim-plugins.py-lsp-nvim

    
    tree-sitter #nixos-unstable.tree-sitter 
    code-minimap #nixos-unstable.code-minimap
    # rnix-lsp 
    # vscode-langservers-extracted # nixos-unstable.vscode-langservers-extracted
    luaPackages.lua-lsp 
    # nodePackages.pyright #nixos-unstable.nodePackages.pyright
    # nodePackages.vim-language-server
    nodePackages.yaml-language-server 
    nodePackages.bash-language-server
    nodePackages.vscode-json-languageserver-bin
    # nodePackages.vscode-html-languageserver-bin
    # nodePackages.vscode-css-languageserver-bin
  ];
  programs.neovim = {
    enable = true;
    package = pkgs.neovim-unwrapped; #nixos-unstable.neovim-unwrapped;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      fidget-nvim
      neodev-nvim
      
      
      # colorscheme
      vim-plugins.schwarzwald
      # vim-plugins.bamboo

      # file browsing
      neo-tree-nvim

      # terminal
      toggleterm-nvim
      
      # lsp & related
      # none-ls-nvim
      vim-plugins.none-ls
      nvim-lspconfig

      #formatting
      conform-nvim

      # python
      nvim-dap-python

      # nix
      vim-nix
      
      # markdown
      

      # git
      neogit
      

      # snippets
      friendly-snippets
      # vim-vsnip
      cmp_luasnip
      luasnip
       
      # completion
      nvim-cmp
      cmp-nvim-lsp
      cmp-path
      
      # debugging
      nvim-dap
      nvim-dap-ui
      
      vim-plugins.py-lsp-nvim
      
      nvim-web-devicons

      # nvim-tree-lua
      telescope-nvim
      nvim-treesitter.withAllGrammars # nixos-unstable.vimPlugins.nvim-treesitter.withAllGrammars
      # csv-vim
      # vim-surround  # fix config
      # vim-repeat
      # # vim-speeddating  # makes statusline buggy??
      # vim-commentary
      # vim-unimpaired
      # vim-sleuth  # adjusts shiftwidth and expandtab based on the current file
      # vim-startify
      # vim-multiple-cursors
      # gundo-vim
      # vim-easy-align
      # vim-table-mode
      # editorconfig-vim
      # vim-markdown
      # ansible-vim
      # robotframework-vim
      # # vimspector
      # vim-plugins.vim-bepoptimist
      # vim-plugins.nvim-base16  # the one packaged in nixpkgs is different
      # popup-nvim
      # plenary-nvim
      # telescope-symbols-nvim
      # # telescope-media-files  # doesn't support wayland yet
      # nvim-colorizer-lua
      
      # pkgs.vimPlugins.lsp_extensions-nvim # nixos-unstable.vimPlugins.lsp_extensions-nvim
      # # completion-nvim
      # lspkind-nvim
      # gitsigns-nvim
      # pkgs.vimPlugins.diffview-nvim # nixos-unstable.vimPlugins.diffview-nvim
      # pkgs.vimPlugins.bufferline-nvim # nixos-unstable.vimPlugins.bufferline-nvim
      # nvim-autopairs
      # pkgs.vimPlugins.galaxyline-nvim # nixos-unstable.vimPlugins.galaxyline-nvim
      # vim-closetag
      # # nvim-tree-lua
      # nvim-web-devicons
      # vim-devicons
      # # vim-auto-save  # ?
      # vim-plugins.neoscroll-nvim
      # vim-plugins.zenmode-nvim
      # # minimap-vim
      # vim-plugins.indent-blankline-nvim  # using my own derivation because the nixpkgs still uses the master branch
      # vim-easymotion
      # quick-scope
      # matchit-zip
      # targets-vim
      # neoformat
      # vim-numbertoggle
      # # vim-markdown-composer
      # vimwiki
      # pkgs.vimwiki-markdown
      # vim-python-pep8-indent
      # lsp_signature-nvim
      # rust-tools-nvim
      # vim-plugins.keymap-layer-nvim
      # vim-plugins.hydra-nvim
    ];

    # extraConfig = "lua << EOF\n" + builtins.readFile ./init.lua + "\nEOF";
  };

  # xdg.configFile."nvim".source = builtins.path {
  #     path = ./config;
  #     name = "nvim-config";
  # };
  xdg.configFile.nvim = {  
    source = ./config;  
    recursive = true;  
  };
  # xdg.configFile."nvim" = { source = ./nvim; recursive = true; } ;

  # xdg.configFile."nvim/init.lua".source = ./init.lua ;
  # home.file."${xdg.configHome}"."nvim/lua" = { source = ./lua; recursive= true; } ;
  
}
