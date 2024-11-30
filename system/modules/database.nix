{
  lib,
  pkgs,
  deviceConfig,
  g,
  ...
}: {
  environment.systemPackages = with pkgs; [
    postgresql
  ];

  services.postgresql = {
    enable = true;
    dataDir = /var/lib/postgresql/16;
    settings = {
      log_connections = true;
      log_statement = "all";
      logging_collector = true;
      log_disconnections = true;
      log_destination = lib.mkForce "syslog";
    };
    ensureDatabases = [
      "defaultdb"
      "components_1"
    ];
    authentication = pkgs.lib.mkOverride 10 ''
      # TYPE  DATABASE        USER            ADDRESS                 METHOD

      # Allow local connections
      local   all             all                                     trust

      # IPv4 local connections
      host    all             all             127.0.0.1/32            trust

      # Allow specific connection
      host    components_1    postgres        127.0.0.1/32            md5
    '';
    ensureUsers = [
      {name = "postgres";}
      {name = "klaus";}
      {name = "isaac";}
    ];
  };
}
