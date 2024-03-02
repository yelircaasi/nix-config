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
  sops.defaultSopsFormat = "yaml";
  sops.age.keyFile = "/home/isaac/.config/sops/age/keys.txt";

  sops.secrets.example_key = {
    # owner = "isaac";
    path = "%r/test.txt";
  };
  sops.secrets.azure = {
    sopsFile = ./azure.sh;
    path = "/home/isaac/.config/azure/.envrc";
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
