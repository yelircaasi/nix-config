{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    protonmail-bridge
    pass # TODO::prio1: get paid subscription to protonmail, set up pass

    neomutt
  ];
}
