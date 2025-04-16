{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    xdg-ninja
    mypkgs.antidot
    # mypkgs.filesort  TODO: fix
    # mypkgs.organize-rt  TODO: fix

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
