{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    xdg-ninja
    mypkgs.antidot
    # mypkgs.filesort  TODO::prioX: fix
    # mypkgs.organize-rt  TODO::prioX: fix

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
}
