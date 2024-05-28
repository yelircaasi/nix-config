{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    ripgrep-all
    repgrep
    vgrep
  ];
  programs.ripgrep = {
    enable = true;
    # TODO:
    package = pkgs.ripgrep;
    arguments = [
      "--max-columns-preview"
      "--colors=line:style:bold"
    ];
  };
}
