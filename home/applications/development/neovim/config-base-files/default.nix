{
  pkgs,
  lib,
  neovimConfig,
  ...
}: {
  "./nvim/init.lua".text = ''

  '';
  "./nvim/lua/colors.lua".text = import ./colors {inherit pkgs lib neovimConfig;};
  "./nvim/lua/mappings.lua".text = import ./mappings {inherit pkgs lib neovimConfig;};
  "./nvim/lua/options.lua".text = import ./options {inherit pkgs lib neovimConfig;};
}
