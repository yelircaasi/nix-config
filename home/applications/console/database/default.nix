{pkgs, ...}: {
  home.packages = with pkgs; [
    postgresql
    pgcli
    mongodb
    mongosh
    # sqlite
    # sqlite-utils
    # couchdb3
  ];
}
