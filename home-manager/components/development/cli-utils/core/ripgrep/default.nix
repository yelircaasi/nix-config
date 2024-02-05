{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
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
