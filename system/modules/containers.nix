{
  lib,
  pkgs,
  deviceConfig,
  g,
  ...
}: {
  environment.systemPackages = with pkgs; [
    (lib.mkIf deviceConfig.docker docker)
    (lib.mkIf deviceConfig.podman podman)
    (lib.mkIf (deviceConfig.docker && deviceConfig.nvidia) nvidia-docker)
    (lib.mkIf (deviceConfig.podman && deviceConfig.nvidia) nvidia-podman)
  ];
  virtualisation = {
    containers.cdi.dynamic.nvidia.enable = deviceConfig.nvidia;
    docker = {
      enable = deviceConfig.docker;
      enableNvidia = deviceConfig.docker && deviceConfig.nvidia;
      #rootless = {
      #  enable = true;
      #  setSocketVariable = true;
      #};
    };
    podman = {
      enable = deviceConfig.podman;
      # enableNvidia = deviceConfig.podman && deviceConfig.nvidia;
    };
  };
}
