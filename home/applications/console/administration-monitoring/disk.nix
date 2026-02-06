{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal = [];
    core = [pkgs.gdu];
    extended = [
      # pkgs.diskonaut  removed due to lack of upstream manintenance TODO::prio2 replace
    ];
  };
 # TODO: CONFIG FOR gdu, diskonaut (or replace)
}
