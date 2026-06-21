{
  inputs,
  pkgs,
  ...
}: let
  pde = inputs.neovim-flake.packages.${pkgs.system}.pde;
in {
  home.packages = [pde];
}
