{pkgs, ...}: {
  plugins = with pkgs; [
    nvim-notify # alt: fidget-nvim, notifier.nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
