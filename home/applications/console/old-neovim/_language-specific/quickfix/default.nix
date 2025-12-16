{
  pkgs,
  custom,
  ...
}: {
  packages = [];
  plugins =
    (with pkgs.vimPlugins; [
      {
        plugin = nvim-bqf;
        optional = true;
      } # alt: qqf-nvim
      {
        plugin = trouble-nvim;
        optional = true;
      }
    ])
    ++ (with custom; [
      {
        plugin = qfview-nvim;
        optional = true;
      } # alt: nvim-pqf
      {
        plugin = neowell-lua;
        optional = true;
      } # ?
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
