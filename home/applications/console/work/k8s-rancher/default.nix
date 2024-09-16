{pkgs, ...}: {
  home.packages = with pkgs; [kubectl rancher helm];
}
