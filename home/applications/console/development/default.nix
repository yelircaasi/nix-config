{
  inputs,
  pkgs,
  deviceConfig,
  ...
}: {
  # TODO::prio1: add a switch to this
  # TODO::prio2: make this a function that takes config options
  home.packages = [inputs.neovim-flake.packages.${pkgs.system}.pde];
  imports = [
    ./dev-utils-other
    ./gdb
    ./python
  ];
}
