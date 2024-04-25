{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      legendary-nvim
      which-key-nvim # training wheels
      hydra-nvim
    ])
    ++ (with custom; [
      hawtkeys-nvim
      keymap-amend-nvim
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
