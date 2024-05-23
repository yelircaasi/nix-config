{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    xdg-ninja
    mypkgs.antidot
    mypkgs.filesort
    mypkgs.organize-rt

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
