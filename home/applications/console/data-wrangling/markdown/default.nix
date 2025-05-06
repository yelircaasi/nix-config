{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      frogmouth
      glow
      python312Packages.grip
      lowdown
      python312Packages.md-toc
      mypkgs.mdtt
    ];
  };
  xdg.configFile = {
    # TODO::prio2: modularize and select imports
    "textualize/frogmouth/configuration.json".text = ''
      {
        "light_mode": false,
        "markdown_extensions": [
            ".md",
            ".markdown"
        ],
        "navigation_left": true
      }'';
  };
}
