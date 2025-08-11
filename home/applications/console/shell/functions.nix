{
  pkgs,
  lib,
  deviceConfig,
}: let
  chase = "${pkgs.chase}/bin/chase";
  which = "${pkgs.which}/bin/which";
  tre = "${pkgs.tre-command}/bin/tre";
  bat = "${pkgs.bat}/bin/bat";
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
        bash = ''{ ${tre} $(nixbase $1); }'';
        xonsh = ''{ echo 'not implemented'; }'';
        nu = ''{ echo 'not implemented'; }'';
        fish = ''{ echo 'not implemented'; }'';
        hilbish = ''{ echo 'not implemented'; }'';
        gash = ''{ echo 'not implemented'; }'';
      };
      inspect = {
        bash = ''{ ${bat} "''${@:2}" `${which} $1` ; }'';
        xonsh = ''...'';
        nu = ''...'';
        fish = ''{ echo 'not implemented'; }'';
        hilbish = ''{ echo 'not implemented'; }'';
        gash = ''{ echo 'not implemented'; }'';
      };
    }
)
