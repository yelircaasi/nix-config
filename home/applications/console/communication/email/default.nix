{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    protonmail-bridge
    pass # TODO::prioX: get paid subscription to protonmail, set up apss

    neomutt
  ];
}
