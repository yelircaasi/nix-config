{
  pkgs,
  lib,
  neovimConfig,
  langs,
  feats,
  ...
}: let
  args = {inherit pkgs lib neovimConfig;};
in {
  makeInitLuaFile = import ./init args;
  makeOptionsLuaFile = import ./options args;
  makeColorsLuaFile = import ./colors args;
  makeCommandsLuaFile = import ./commands args;
  makeMappingsLuaFile = import ./mappings args;
}
