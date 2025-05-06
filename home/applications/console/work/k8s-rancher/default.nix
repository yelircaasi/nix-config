{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    kubectl
    rancher
    kubernetes-helm
  ];
}
