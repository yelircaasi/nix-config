{pkgs, ...}: {
  home.packages = with pkgs; [
    dyff
    difftastic
  ];
}
