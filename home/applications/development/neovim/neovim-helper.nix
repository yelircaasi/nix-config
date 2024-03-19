{
  pkgs,
  lib,
  g,
  ...
}: let
  selectPackages = neovimConfig: [];

  createNeovimHMProgramSet = neovimConfig: {};

  createNeovimLuaFiles = neovimConfig: {};
in
  # { createNeovimHMSet =
  {
    pkgs,
    lib,
    g,
    neovimConfig,
  }: {
    home.packages = selectPackages neovimConfig;
    programs.neovim = createNeovimHMProgramSet;
    xdg.configFile = createNeovimLuaFiles neovimConfig;

    # };
  }
