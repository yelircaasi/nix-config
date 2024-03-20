{pkgs, ...}: {
  packages = with pkgs; [];
  plugins = with pkgs; [
    octo-nvim
    telescope-github-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
