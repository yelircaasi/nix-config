{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    dyff
    difftastic
    # mypkgs.graphtage  TODO::prio2: update
  ];
}
/*
TODO::prio1: make system of tiers:

{
  minimal = [];
  core = [];
  extended = [];
  maximal = [];
}
*/

