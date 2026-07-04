{
  inputs,
  config,
  lib,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.bash.enable = true;

  programs.bash.shellAliases =
    (import ../aliases.nix {inherit pkgs lib g deviceConfig;})
    // (
      g.constructFromList
      (setupName: g.setups.${setupName}.aliases.hyprland)
      (setupName: "hyprswitch ${setupName} || Hyprland") # -c ${config.xdg.userDirs.extraConfig.XDG_CONFIG_HOME}/hypr-setups/${setupName}/hyprland.conf")
      
      deviceConfig.monitorSetups
    );

  programs.bash.bashrcExtra = (import ../extra.nix {inherit pkgs lib deviceConfig mypkgs;}) "bash";

  home.packages = with pkgs; [
    # TODO
    (lib.mkIf
      ((deviceConfig.defaultShell == "bash") || (builtins.elem "bash" deviceConfig.otherShells))
      bashInteractive)
    # neovim # TODO::prio1: remove when neovim is fixed
  ];
}
