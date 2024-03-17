{
  lib,
  pkgs,
  deviceConfig,
  ...
}: {
  users.users.isaac = {
    isNormalUser = true;
    description = "Isaac Riley";
    extraGroups = [
      "networkmanager"
      "wheel"
      "uinput"
      (lib.mkIf deviceConfig.docker "docker")
    ];
    packages = with pkgs; [
      home-manager # all others should be declared via home-manager
    ];
  };
}
