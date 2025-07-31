{
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

  programs.bash.bashrcExtra = ''
    source ${mypkgs.forgit}/forgit.plugin.sh

    export FZF_DEFAULT_OPTS="--height 40% --border --color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400"
  '';

  home.packages = with pkgs; [
    # TODO
    (lib.mkIf
      ((deviceConfig.defaultShell == "bash") || (builtins.elem "bash" deviceConfig.otherShells))
      bashInteractive)
    # neovim # TODO::prio1: remove when neovim is fixed
  ];
}
