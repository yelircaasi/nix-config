{
  pkgs,
  custom,
  ...
}: {
  plugins = [
    {
      plugin = custom.neotest; # alt: nvim-test
      optional = true;
    }
    {
      plugin = pkgs.vimPlugins.nvim-coverage;
      optional = true;
    }
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
