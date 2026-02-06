{ pkgs, ... }:

let
pde = pkgs.symlinkJoin {
  name = "pde";
  paths = [ pkgs.neovim ];
  buildInputs = [ pkgs.makeWrapper ];
  
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

  toLuaTable = plugins: 
    let
      getPluginId = p: 
        if (p ? src && p.src ? owner && p.src ? repo) then
          "${p.src.owner}/${p.src.repo}"
        else
          idLookup.${p.pname};

      lines = map (p: ''  ["${getPluginId p}"] = { path = "${p}" },'') plugins;
    in
    "return {\n" + (builtins.concatStringsSep "\n" lines) + "\n}\n";



in
{
  home.packages = [pde ];
  home.file.".config/nvim/lua/nix_plugins.lua".text = toLuaTable myPlugins;
}
