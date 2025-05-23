{
  inputs,
  lib,
  config,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: let
  # shared = import ./shared-assets {inputs};
  resolveShellImport = deviceConfig: map (name: ./${name}) ([deviceConfig.defaultShell] ++ deviceConfig.otherShells);
in {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = [
      pkgs.cmd-wrapped
    ];
  };
}
