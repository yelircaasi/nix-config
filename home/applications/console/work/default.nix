{
  config,
  pkgs,
  lib,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    # ./azure
    # ./jira
    # ./k8s-rancher
    ./mdm
  ];
}
