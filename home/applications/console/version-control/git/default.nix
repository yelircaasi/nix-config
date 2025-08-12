{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      #TODO::prio1
      ungit
      mypkgs.git-plus
      mypkgs.git-fuzzy
      fzf
      gawk
      delta
      bat
      eza
      bc
    ];
  };
  programs.git = {
    enable = true;
    userName = "yelircaasi";
    userEmail = "yelircaasi@proton.me";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
