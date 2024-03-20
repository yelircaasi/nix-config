{pkgs, ...}: {
  plugins = [
    # pretty-fold-nvim # alt: fold-cycle-nvim, nvim-ufo, nvim-origami,
    pkgs.nvim-ufo
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
