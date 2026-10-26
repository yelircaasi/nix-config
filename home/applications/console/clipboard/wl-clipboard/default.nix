{
  pkgs,
  # g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    # wl-clipboard
    # TODO: how compatible is the *-rs implementation? -> look into differences
    (pkgs.lib.mkIf deviceConfig.isNixOS wl-clipboard-rs) # https://github.com/bugaevc/wl-clipboard
  ];
  # TODO: CONFIG FOR wl-clipboard
}
