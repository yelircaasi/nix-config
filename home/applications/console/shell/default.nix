{
  inputs,
  config,
  lib,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: let
  includedShells = map (name: ./shells/${name}) ([deviceConfig.defaultShell] ++ deviceConfig.otherShells);
in {
  imports = inputs.nixpkgs.lib.unique (includedShells
    ++ [
      ./shared
      ./scripts
      ./prompts/${deviceConfig.prompt}
    ]);

  programs.direnv = {
    enable = true;
    package = pkgs.direnv;
    silent = false;
    # loadInNixShell = true;
    # direnvrcExtra = "";
    nix-direnv = {
      enable = true;
      package = pkgs.nix-direnv;
    };
  };

  home.packages = with pkgs; [
    python313
  ];
}
