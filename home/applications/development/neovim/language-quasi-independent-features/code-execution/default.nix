{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  packages = [
  ];
  plugins =
    (with pkgs; [
      sniprun
      molten-nvim
    ])
    ++ (with custom; [
      code-runner-nvim # alt: runner-nvim
      compiler-nvim # yabs-nvim
      yarepl-nvim
      iron-nvim
    ]);

  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
