{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      xdg-ninja
      mypkgs.antidot
      # mypkgs.filesort  TODO::prio2: fix
      # mypkgs.organize-rt  TODO::prio2: fix

      # deduplication, linting
      backdown
      fclones
      rmlint

      # metadata cleanup
      mat2

      # file sorting
      # adhoc.organize-rt

      # symbolic links
      symlinks

      # file tagging
      tmsu
    ];
  };
}
