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
  shellName = "bash";
in {
  # users.users.${deviceConfig.userName}.shell = pkgs.bashInteractive;
  # environment.shells = [ pkgs.bashInteractive ];
  programs.${shellName} = {
    enable = deviceConfig.defaultShell == "${shellName}";

    shellAliases =
      (import ../shared/aliases.nix {inherit pkgs lib g deviceConfig;}).home.shellAliases
      // (
        g.constructFromList
        (setupName: g.setups.${setupName}.aliases.hyprland)
        (setupName: "hyprswitch ${setupName} || start-hyprland") # -c ${config.xdg.userDirs.extraConfig.XDG_CONFIG_HOME}/hypr-setups/${setupName}/hyprland.conf")
        
        deviceConfig.monitorSetups
      );

    bashrcExtra = (import ../shell-config-abstracted {inherit pkgs lib deviceConfig mypkgs;}) "${shellName}";
  };

  # necessary?
  home.packages = with pkgs; [
    # TODO
    (lib.mkIf
      ((deviceConfig.defaultShell == "${shellName}") || (builtins.elem "${shellName}" deviceConfig.otherShells))
      bashInteractive)
  ];
}
