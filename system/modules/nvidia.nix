{
  config,
  lib,
  deviceConfig,
  ...
}: {
  services.xserver.videoDrivers = lib.mkIf deviceConfig.nvidia ["nvidia"];
  hardware.nvidia = lib.mkIf deviceConfig.nvidia {
    modesetting.enable = true;
    nvidiaSettings = true;
    powerManagement.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    prime = {
      sync.enable = true;
      nvidiaBusId = "PCI:1:0:0";
      intelBusId = "PCI:0:2:0";
    };
  };
}
