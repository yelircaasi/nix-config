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
