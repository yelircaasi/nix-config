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

    # ./desktop-environment/widgets/bar/waybar
    # ./desktop-environment/launcher/fuzzel
    ./sops
    ./applications/gui/editor-and-ide/vscode
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    stateVersion = "24.05";
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
