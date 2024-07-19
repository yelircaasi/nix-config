{
  config,
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [age sops];

  imports = [
    inputs.sops-nix.homeManagerModules.sops
  ];

  sops.defaultSopsFile = ./secrets.json;
  sops.defaultSopsFormat = "json";
  sops.age.keyFile = "${config.xdg.configHome}/sops/age/keys.txt";

  sops.secrets.example_key = {
    # owner = "isaac";
    path = "/home/isaac/Downloads/test.txt";
  };
  sops.secrets.poetryAuth = {
    # owner = "isaac";
    sopsFile = ./poetry_auth.toml;
    path = "${config.xdg.configHome}/pypoetry/auth.toml";
    format = "binary";
  };
  sops.secrets.poetryConfig = {
    # owner = "isaac";
    sopsFile = ./poetry_config.toml;
    path = "${config.xdg.configHome}/pypoetry/config.toml";
    format = "binary";
  };
  sops.secrets.azure = {
    sopsFile = ./azure.sh;
    path = "${config.xdg.configHome}/azure/.envrc";
    format = "binary";
  };
  sops.secrets.matrixCredentials = {
    sopsFile = ./matrix_credentials.txt;
    path = "${config.xdg.configHome}/matrix-commander/credentials.json";
    format = "binary";
  };
  # sops.secrets.matrixCommander = {
  #   sopsFile = ./matrix_commander_credentials.json;
  #   path = "${config.xdg.configHome}/matrix-commander/credentials.json";
  #   format = "binary";
  # };
  sops.secrets.gdrive3Account = {
    sopsFile = ./gdrive3_account.txt;
    path = "${config.xdg.configHome}/gdrive3/account.json";
    format = "binary";
  };
  sops.secrets.gdrive3Secret = {
    sopsFile = ./gdrive3_secret.txt;
    path = "${config.xdg.configHome}/gdrive3/isaac.r.riley@gmail.com/secret.json";
    format = "binary";
  };
  sops.secrets.gdrive3Tokens = {
    sopsFile = ./gdrive3_tokens.txt;
    path = "${config.xdg.configHome}/gdrive3/isaac.r.riley@gmail.com/tokens.json";
    format = "binary";
  };

  # sops.secrets."myservice/hello/my-secret" = {};
  /*
  systemd.services."sometestservice" = {
    script = ''
      echo "
      Hey bro! I'm a service, and imma send this secure password:
      $(cat ${config.sops.secrets."example_key".path})
      located in:
      ${config.sops.secrets.example_key.path}
      to database and hack the mainframe
      " > /var/lib/sometestservice/testfile
    '';
    serviceConfig = {
      User = "sometestservice";
      WorkingDirectory = "/var/lib/sometestservice";
    };
  };

  users.users.sometestservice = {
    home = "/var/lib/sometestservice";
    createHome = true;
    isSystemUser = true;
    group = "sometestservice";
  };
  users.groups.sometestservice = {};
  */
}
