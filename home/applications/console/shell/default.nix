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
  includedShells = map (name: ./shells/${name}.nix) ([deviceConfig.defaultShell] ++ deviceConfig.otherShells);

  custom = import ./_custom.nix {};

  shellPackages = {
    bash = pkgs.bash;
    elvish = pkgs.elvish;
    fish = pkgs.fish;
    hilbish = pkgs.hilbish;
    ngs = custom.ngs;
    nushell = pkgs.nushell;
    xonsh = pkgs.xonsh;
    zsh = pkgs.zsh;
  };
in {
  imports = inputs.nixpkgs.lib.unique (includedShells
    ++ [
      ./shared/aliases.nix
      ./shared/environment-variables.nix
      ./scripts
      ./prompts/${deviceConfig.prompt}
    ]);

  # users.users.${config.userName}.shell = shellPackages.${config.defaultShell};

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
