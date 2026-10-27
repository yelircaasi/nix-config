{
  inputs,
  pkgs,
  ...
}: let
  pde = inputs.neovim-flake.packages.${pkgs.stdenv.hostPlatform.system}.pde;
in {
  home.packages = [pde pkgs.neovim-remote];
}
