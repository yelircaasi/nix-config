{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.eza = {
    enable = true;
    package = pkgs.eza;
    # TODO::prio2:
    enableBashIntegration = true;
    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
    git = true;
    icons = "auto";
  };
}
