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
}
