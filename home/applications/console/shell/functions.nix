{
  lib,
  deviceConfig,
}:
#let mkFunction = shellName: shellAgnosticDef: functionString; in
lib.attrSets.mapAttrs (name: value: value.${deviceConfig.shell})
{
  dri = {
    bash = ''ph'';
    xonsh = ''ph'';
    nu = ''ph'';
  };
  origin = {
    bash = ''{ chase `which $1`; }'';
    xonsh = ''ph'';
    nu = ''ph'';
  };
  nixbase = {
    bash = ''{ chase `which $1` | cut -d'/' -f1-4; }'';
    xonsh = ''ph'';
    nu = ''ph'';
  };
  nixtree = {
    bash = ''{ tree $(chase `which $1` | cut -d'/' -f1-4); }''; # assumes tree; in my case, tree is aliased to tre
    xonsh = ''ph'';
    nu = ''ph'';
  };
}
