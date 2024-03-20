{pkgs, ...}: {
  plugins = [
    # problem with fm-nvim:
    # alts: fm-nvim (with xplr), ### nnn-vim, -> make nvim-xplr using fm-nvim and joshuto.nvim as basis, integrate with plugins
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
