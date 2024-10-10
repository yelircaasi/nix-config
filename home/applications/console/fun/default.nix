{pkgs, ...}: {
  home.packages = with pkgs; [
    aalib
    lolcat
    sl
  ];
}
