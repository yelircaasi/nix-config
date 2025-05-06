{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = [
      postgresql
      pgcli

      # mongodb
      # mongosh

      # sqlite
      # sqlite-utils
      # couchdb3
    ];
  };
}
