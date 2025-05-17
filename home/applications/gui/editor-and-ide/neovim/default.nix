{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [
    pkgs.pde
  ];
  # TODO::prio1: add gui pde to application with MIME and icon
  # xdg.configFile = {
  #   "";
  # };
}
