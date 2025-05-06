{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [bat];
  programs.bat = {
    enable = true;
    extraPackages = with pkgs.bat-extras; [
      batdiff
      batgrep
      batman
      batpipe
      batwatch
      prettybat
    ];
    config = {
      map-syntax = [
        "*.jenkinsfile:Groovy"
        "*.props:Java Properties"
      ];
      pager = "ov"; #"less-FR";
      #theme = "TwoDark";
    };

    # TODO::prio2
    themes = {};
    syntaxes = {};
  };
}
