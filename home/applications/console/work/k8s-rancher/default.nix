{pkgs, ...}: {
  home.packages = with pkgs; [
    kubectl
    rancher
    kubernetes-helm
  ];
}
