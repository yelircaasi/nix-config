{
  pkgs,
  config,
  lib,
  deviceConfig,
  ...
}: lib.mkIf device.config.nvidia {
  environment.systemPackages = with pkgs; [
    cudaPackages.cuda_nvcc
  ];
  # extraModulePackages =
  services.xserver.videoDrivers = lib.mkIf deviceConfig.nvidia ["nvidia"];
  hardware.nvidia = lib.mkIf deviceConfig.nvidia {
    modesetting.enable = true;
    nvidiaSettings = true;
    powerManagement.enable = true;
    # package = config.boot.kernelPackages.nvidiaPackages.legacy545;
    # package = pkgs.linuxKernel.packages.linux_6_6.nvidia_x11;
    package = config.boot.kernelPackages.nvidia_x11;
    prime = {
      sync.enable = true;
      nvidiaBusId = "PCI:1:0:0";
      intelBusId = "PCI:0:2:0";
    };
  };
}
