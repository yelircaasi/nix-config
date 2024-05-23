{
  inputs,
  pkgs,
  g,
  deviceConfig,
  mypkgs,
  ...
}: {
  imports = [
    # ./common
    # ./common-from-device-config.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "root";
    homeDirectory = "/root";
    stateVersion = "23.11";
    packages = with pkgs; [
      xplr
      # lazygit
      bat
      fd
      # fzf
      sd
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };
}
