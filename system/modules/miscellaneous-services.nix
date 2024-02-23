{
  lib,
  deviceConfig,
  ...
}: {
  # Enable CUPS to print documents.
  services.printing.enable = deviceConfig.printing;
}
