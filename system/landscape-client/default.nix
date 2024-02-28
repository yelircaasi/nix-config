{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = let
    landscape-client = pkgs.python310.pkgs.buildPythonApplication rec {
      pname = "landscape-client";
      version = "2024-02-18";

      src = pkgs.fetchFromGitHub {
        owner = "yelircaasi";
        repo = "landscape-client-nixos";
        rev = "1b09962787a2d4d35f78b2795d7709474474535f";
        sha256 = "sha256-/zD1GB4POqjEqIzb8LzDyAt9vR4fGinNM+YTqwAy11o=";
      };

      nativeBuildInputs = with pkgs; [
        python310Packages.setuptools
        util-linux
        #apt
      ];

      buildInputs = with pkgs.python310Packages; [
        configobj
        distutils-extra
        mock
        netifaces
        pycurl
        twisted
        pip
        pyopenssl
        pyyaml
      ];

      # checkInputs = [pkgs.pre-commit];
      checkInputs = [];

      propagatedBuildInputs = with pkgs.python310Packages; [
        configobj
        netifaces
        pycurl
        twisted
        pyopenssl
        pyyaml
        service-identity
      ];

      meta = with lib; {
        description = "Description of landscape-client";
        license = licenses.mit;
      };
    };
  in [
    landscape-client
  ];

  systemd.services = {
    landscape-client = {
      description = "Landscape client daemons";
      after = ["local-fs.target" "remote-fs.target"];
      wantedBy = ["multi-user.target"];

      serviceConfig = {
        Type = "simple";
        Group = "landscape";
        ExecCondition = "/run/current-system/sw/bin/landscape-client --is-registered";
        ExecStart = "/run/current-system/sw/bin/landscape-client";
        KillMode = "process";
      };
    };
  };
  users.users.isaac.extraGroups = ["landscape"];
}
