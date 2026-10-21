{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      # misc ==================================================================
      xdg-ninja
      mypkgs.antidot # https://github.com/doron-cohen/antidot
      # mypkgs.filesort  TODO::prio2: fix: https://github.com/yelircaasi/filesort, https://github.com/zephiowl/FileSorterX
      # mypkgs.organize-rt  TODO::prio2: fix https://github.com/organize-rs/organize   see also https://github.com/Toyin5/OrganizeIt

      # deduplication, linting ================================================
      backdown # https://github.com/Canop/backdown
      fclones # https://github.com/pkolaczk/fclones
      rmlint # https://rmlint.readthedocs.io/en/master/
      rclone # https://rclone.org/

      # metadata cleanup ======================================================
      mat2 # https://github.com/jvoisin/mat2

      # file sorting ==========================================================
      # adhoc.organize-rt # https://gitlab.com/foxido/organize-rt

      # symbolic links ========================================================
      symlinks # https://github.com/brandt/symlinks

      # file tagging =========================================================
      tmsu # https://github.com/oniony/TMSU
    ];
  };
}
