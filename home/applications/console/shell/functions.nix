{
  pkgs,
  lib,
  deviceConfig,
}: let
  chase = "${pkgs.chase}/bin/chase";
  which = "${pkgs.which}/bin/which";
in (
  shellName:
    lib.attrsets.mapAttrs (name: value: value.${shellName})
    {
      dri = {
        bash = ''{ echo 'not implemented'; }'';
        xonsh = ''{ echo 'not implemented'; }'';
        nu = ''{ echo 'not implemented'; }'';
        fish = ''{ echo 'not implemented'; }'';
        hilbish = ''{ echo 'not implemented'; }'';
        gash = ''{ echo 'not implemented'; }'';
      };
      origin = {
        bash = ''{ ${chase} `${which} $1`; }'';
        xonsh = ''{ echo 'not implemented'; }'';
        nu = ''{ echo 'not implemented'; }'';
        fish = ''{ echo 'not implemented'; }'';
        hilbish = ''{ echo 'not implemented'; }'';
        gash = ''{ echo 'not implemented'; }'';
      };
      nixbase = {
        bash = ''{ ${chase} `${which} $1` | cut -d'/' -f1-4; }'';
        xonsh = ''{ echo 'not implemented'; }'';
        nu = ''{ echo 'not implemented'; }'';
        fish = ''{ echo 'not implemented'; }'';
        hilbish = ''{ echo 'not implemented'; }'';
        gash = ''{ echo 'not implemented'; }'';
      };
      nixtree = {
        bash = ''{ ${pkgs.tre} $(${chase} `${which} $1`); }''; # assumes tree; in my case, tree is aliased to tre
        xonsh = ''{ echo 'not implemented'; }'';
        nu = ''{ echo 'not implemented'; }'';
        fish = ''{ echo 'not implemented'; }'';
        hilbish = ''{ echo 'not implemented'; }'';
        gash = ''{ echo 'not implemented'; }'';
      };
      inspect = {
        bash = ''{ ${pkgs.bat}/bin/bat "''${@:2}" `${which} $1` ; }'';
        xonsh = ''...'';
        nu = ''...'';
        fish = ''{ echo 'not implemented'; }'';
        hilbish = ''{ echo 'not implemented'; }'';
        gash = ''{ echo 'not implemented'; }'';
      };
    }
)
