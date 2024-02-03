#  that are shared across all devices
{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ../development/git
    ../gui/wezterm
    ../development/neovim #-gaelle
    ../development/shell
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  # nixpkgs = {
  #   # You can add overlays here
  #   overlays = [
  #     # If you want to use overlays exported from other flakes:
  #     # neovim-nightly-overlay.overlays.default

  #     # Or define it inline, for example:
  #     # (final: prev: {
  #     #   hi = final.hello.overrideAttrs (oldAttrs: {
  #     #     patches = [ ./change-hello-to-hi.patch ];
  #     #   });
  #     # })
  #   ];
  #   # Configure your nixpkgs instance
  #   config = {
  #     # Disable if you don't want unfree packages
  #     allowUnfree = true;
  #     # Workaround for https://github.com/nix-community/home-manager/issues/2942
  #     allowUnfreePredicate = _: true;

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
    stateVersion = "23.11";
    packages = with pkgs; [
      #docker
      wget
      alejandra
      python310
      poetry
    ];
  };

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # xdg.configFile."kanata/kanata.kbd".source = .../. + ./nixos/components/kanata/kanata.kbd ;
}
