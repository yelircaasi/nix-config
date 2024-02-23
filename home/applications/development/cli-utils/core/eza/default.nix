{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.eza = {
    enable = true;
    package = pkgs.eza;
    # TODO:
    enableAliases = true;
    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
    git = true;
    icons = true;
  };
}
