{
  g,
  deviceConfig,
  ...
}: let
  shellEnabled = shellName:
    (deviceConfig.defaultShell == shellName)
    || (builtins.elem shellName deviceConfig.otherShells);
in {
  programs.pazi = {
    enable = true;
    # TODO::prio2:
    enableBashIntegration = shellEnabled "bash";
    enableFishIntegration = shellEnabled "fish";
    enableZshIntegration = shellEnabled "zsh";
  };
}
