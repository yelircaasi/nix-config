{pkgs, ...}: {
  home.packages = with pkgs; [
    regextester
  ];
  
}
