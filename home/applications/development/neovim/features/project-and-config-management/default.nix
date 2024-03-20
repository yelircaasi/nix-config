{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      neoconf-nvim
      nvim-config-local # nvim-projectconfig
    ])
    ++ (with custom; [
      custom.projectmgr-nvim # projections-nvim, workspaces-nvim, neoproj
      custom.memento-nvim
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
