{ pkgs, ... }:

let pde = pkgs.symlinkJoin {
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
}; in
{
  home.packages = [pde];
}
