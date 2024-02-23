{
  lib,
  deviceConfig,
  ...
}: {
  services.openssh = lib.mkIf deviceConfig.ssh-server {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };
}
