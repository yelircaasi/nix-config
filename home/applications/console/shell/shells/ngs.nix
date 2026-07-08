{
  inputs,
  config,
  lib,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ngsPackage,
  ...
}: let
  ngs = null;
in {
  users.users.${config.userName}.shell = ngs;
  environment.shells = [ngs];

  home.packages = [ngs];
}
