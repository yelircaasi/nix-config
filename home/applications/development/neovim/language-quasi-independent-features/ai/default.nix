{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  packages = [

  ];
  plugins = (with pkgs; [

  ]) ++ (with custom; [

  ]);

        custom.codegpt-nvim
        ChatGPT-nvim
        copilot-lua
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
