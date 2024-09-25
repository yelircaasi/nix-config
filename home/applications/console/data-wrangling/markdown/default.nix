{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    frogmouth
    glow
    python312Packages.grip
    lowdown
    python312Packages.md-toc
    mypkgs.mdtt
  ];
  xdg.configFile = {
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
