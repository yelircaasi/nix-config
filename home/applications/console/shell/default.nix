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
  imports = inputs.nixpkgs.lib.unique ([
      ./common
      ./scripts
      ./${deviceConfig.prompt}
    ]
    ++ (resolveShellImport deviceConfig));

  home.sessionVariables =
    # TODO
    import
    ./environment-variables.nix
    {inherit lib g deviceConfig;};

  # home.shellAliases = {

  home.packages = with pkgs; [
    python313
  ];
}
