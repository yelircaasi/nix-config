{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages =
    (g.selectViaGuiSet deviceConfig {
      extended = with pkgs; [];
    })
    ++ (with pkgs; [
      (pkgs.lib.mkIf (builtins.elem "telegram" deviceConfig.messagers) telegram-desktop)
    ]);
}
