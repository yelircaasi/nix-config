{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # diskonaut  removeed due to lack of upstream manintenance TODO::prio2 replace
    gdu
  ];
}
