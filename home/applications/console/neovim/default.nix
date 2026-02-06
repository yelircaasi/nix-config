{inputs, pkgs, ...}: let
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
  myPlugins = with pkgs.vimPlugins; [
    oil-nvim
    blink-cmp
    luasnip
    rustaceanvim
    myTreesitter
  ];

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
