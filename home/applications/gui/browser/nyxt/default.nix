# {
#   pkgs,
#   g,
#   deviceConfig,
#   ...
# }: {
# from https://github.com/Anomalocaridid/dotfiles/blob/main/home/nyxt.nix
{
  config,
  lib,
  pkgs,
  inputs,
  ...
}: let
  fonts = config.stylix.fonts;
  font = "${fonts.sansSerif.name}";
  palette = pkgs.custom.catppuccin-palette.${config.catppuccin.flavour};
  plugins = [
    "nx-dark-reader"
    "nx-fruit"
    "nx-router"
    "nx-search-engines"
    "demeter"
  ];
in {
  # home.packages = with pkgs; [nyxt];
  xdg.configFile."nyxt".source = ./config.lisp;
  # configFile."nyxt/config.lisp".text = # scheme (not really but common-lisp does not work)

  # xdg.dataFile = lib.attrsets.mergeAttrsList (map
  #   (extension: {
  #     "nyxt/extensions/${extension}".source = inputs.${extension};
  #   })
  #   plugins);
}
