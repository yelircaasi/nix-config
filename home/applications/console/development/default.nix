{
  inputs,
  pkgs,
  deviceConfig,
  ...
}: {
  # TODO::prio1: add a switch to this
  # TODO::prio2: make this a function that takes config options
  home.packages = with pkgs; [
    stylua
  ];
  imports = [
    ./dev-utils-other
    ./gdb
    ./python
    ./rust
    # ./haskell
    ./lua
    ./nix
    ./version-control
  ];
}
