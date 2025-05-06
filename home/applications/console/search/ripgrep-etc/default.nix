{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      ripgrep-all
      repgrep
      vgrep
    ];
  };

  programs.ripgrep = {
    # TODO::prio1: modularize and conditionalize
    enable = true;
    # TODO::prio2:
    package = pkgs.ripgrep;
    arguments = [
      "--max-columns-preview"
      "--colors=line:style:bold"
    ];
  };
}
