{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      yamllint
      yq
      # TODO mypkgs.yamlpath # supplies: eyaml-rotate-keys, yaml-diff, yaml-get, yaml-merge, yaml-paths, yaml-set, yaml-validate
    ];
  };

  xdg.configFile = {
  };
}
