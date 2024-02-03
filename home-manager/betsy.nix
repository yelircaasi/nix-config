{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./components/common
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

  xdg.configFile."kanata/kanata.kbd".source = ../nixos/components/kanata/kanata.kbd;
}
