{
  inputs,
  pkgs,
  g,
  deviceConfig,
  mypkgs,
  ...
}: {
  imports = [
    ./common
    ./common-from-device-config.nix

    ./desktop-environment/widgets/bar/waybar
    ./desktop-environment/launcher/fuzzel

  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    stateVersion = "23.11";
    packages = with pkgs; [
      # xplr
      # lazygit
      # bat
      # fd
      # fzf
      # sd
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  systemd.user.startServices = "sd-switch";

  xdg.configFile."kanata/kanata.kbd".source = ../system/modules/input/kanata/kanata.kbd;
}
