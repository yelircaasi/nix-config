{
  pkgs,
  lib,
  deviceConfig,
  mypkgs,
}: let
  chase = "${pkgs.chase}/bin/chase";
  which = "${pkgs.which}/bin/which";
  tre = "${pkgs.tre-command}/bin/tre";
  bat = "${pkgs.bat}/bin/bat";
in (
  shellName: let
    functionSet = (import ./functions.nix {inherit pkgs lib deviceConfig;}) shellName;

    functionLines =
      lib.strings.concatStringsSep
      "\n\n"
      (
        lib.attrsets.mapAttrsToList
        (name: value: "${name}() { ${value} }")
        functionSet
      );
  in
    # lib.attrsets.mapAttrs (name: value: value.${shellName})
    {
      bash = ''
        source ${mypkgs.forgit}/forgit.plugin.sh

        # functions
        ${functionLines}

        export FZF_DEFAULT_OPTS="--height 40% --border --color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400"
      '';
      xonsh = ''{ echo 'not implemented'; }'';
      nu = ''{ echo 'not implemented'; }'';
      fish = ''{ echo 'not implemented'; }'';
      hilbish = ''{ echo 'not implemented'; }'';
      gash = ''{ echo 'not implemented'; }'';
    }.${
      shellName
    }
)
