{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # signal-cli
    # matrix-commander
    # matrix-commander-rs
  ];
}
