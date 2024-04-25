{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./common
    ./common-from-device-config.nix
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
}
