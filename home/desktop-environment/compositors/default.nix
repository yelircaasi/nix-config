{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = g.asListFrom deviceConfig.compositors (name: ./${name});
}
