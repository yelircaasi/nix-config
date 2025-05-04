{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # diskonaut  removed due to lack of upstream manintenance TODO::prio2 replace
    gdu
  ];
}
