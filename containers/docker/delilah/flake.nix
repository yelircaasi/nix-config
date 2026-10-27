{
  description = "The contents of https://thewagner.net";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/c57a028c30068aa2a7e00fa87300804dab748ff5"; # updated 2026-10-27
  inputs.flake-utils.url = "github:numtide/flake-utils/b7a79d3fea1e214f6d668d521cecec0c01e26544"; # updated 2026-10-27

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem
    (system_: let
      revision = "${self.lastModifiedDate}-${self.shortRev or "dirty"}";

      system_ = "x86_64-linux";

      pkgs = nixpkgs.legacyPackages.${system_};

      pythonEnv = pkgs.python313.withPackages (ps:
        with ps; [
          markdown
          pelican
          pygal
          typogrify
        ]);

      htmlPages =
        pkgs.runCommand "pelican"
        {
          preferLocalBuild = true;
          buildInputs = [pythonEnv];
        }
        ''
          ln --symbolic ${./theme} theme
          ln --symbolic ${./plugins} plugins
          ln --symbolic ${./pelicanconf.py} pelicanconf.py
          ln --symbolic ${./publishconf.py} publishconf.py

          pelican \
            --fatal warnings \
            --settings publishconf.py \
            --output $out \
            ${./content}
        '';
    in rec {
      devShell = with pkgs;
        mkShell {
          buildInputs = [pythonEnv skopeo];
        };

      defaultPackage = htmlPages;

      packages = {
        ociImage = let
          port = "8000";
        in
          pkgs.dockerTools.buildLayeredImage
          {
            name = "thewagner.net";
            tag = revision;
            contents = [pkgs.python313Minimal htmlPages];
            config = {
              Cmd = [
                "${pkgs.python3Minimal}/bin/python"
                "-m"
                "http.server"
                port
                "--directory"
                "${htmlPages}"
              ];
              ExposedPorts = {
                "${port}/tcp" = {};
              };
            };
          };
      };

      checks = {
        shellcheck =
          pkgs.runCommand "shellcheck"
          {
            buildInputs = with pkgs; [shellcheck];
          }
          ''
            mkdir $out
            shellcheck --shell bash ${./scripts}/*
          '';

        markdownlint =
          pkgs.runCommand "mdl"
          {
            buildInputs = with pkgs; [mdl];
          }
          ''
            mkdir $out
            mdl ${./README.md}
            mdl ${./content}/2020*
          '';

        yamllint =
          pkgs.runCommand "yamllint"
          {
            buildInputs = with pkgs; [yamllint];
          }
          ''
            mkdir $out
            yamllint --strict ${./.github/workflows}
          '';
      };
    });
}
