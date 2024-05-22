{pkgs, ...}: {
  home.packages = with pkgs; [
    pup
    htmlq
    htmlcxx
  ];
}
