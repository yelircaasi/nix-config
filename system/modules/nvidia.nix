{
  pkgs,
  config,
  lib,
  deviceConfig,
  ...
}:
lib.mkIf deviceConfig.nvidia {
  environment.systemPackages = with pkgs; [
    cudaPackages.cuda_nvcc
  ];
  # extraModulePackages =
  services.xserver.videoDrivers = ["nvidia"];
  # hardware.nvidia = {
  #   modesetting.enable = true;
  #   nvidiaSettings = true;
  #   powerManagement.enable = true;
  #   package = config.boot.kernelPackages.nvidiaPackages.beta;
  #   # package = pkgs.linuxKernel.packages.linux_6_6.nvidia_x11;
  #   # package = config.boot.kernelPackages.nvidia_x11;
  #   # package = config.boot.kernelPackages.nvidiaPackages.stable;
  #   prime = {
  #     sync.enable = true;
  #     nvidiaBusId = "PCI:1:0:0";
  #     intelBusId = "PCI:0:2:0";
  #   };
  # };
  # systemd.user.tmpfiles.rules = [];
  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;

    # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
    # Enable this if you have graphical corruption issues or application crashes after waking
    # up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead 
    # of just the bare essentials.
    powerManagement.enable = false;

    # Fine-grained power management. Turns off GPU when not in use.
    # Experimental and only works on modern Nvidia GPUs (Turing or newer).
    powerManagement.finegrained = false;

    # Use the NVidia open source kernel module (not to be confused with the
    # independent third-party "nouveau" open source driver).
    # Support is limited to the Turing and later architectures. Full list of 
    # supported GPUs is at: 
    # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus 
    # Only available from driver 515.43.04+
    # Currently alpha-quality/buggy, so false is currently the recommended setting.
    open = false;

    # Enable the Nvidia settings menu,
	# accessible via `nvidia-settings`.
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.beta;

    prime = {
      sync.enable = true;
      nvidiaBusId = "PCI:1:0:0";
      intelBusId = "PCI:0:2:0";
    };
  };
}
