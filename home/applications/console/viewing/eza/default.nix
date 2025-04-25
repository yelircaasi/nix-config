{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.eza = {
    enable = true;
    package = pkgs.eza;
    # TODO::prioX:
    enableBashIntegration = true;
    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
    git = true;
    icons = "auto";
  };
}
