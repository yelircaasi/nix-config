{pkgs, ...}: {
  home.packages = with pkgs; [
    poppler_utils
    frogmouth
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
