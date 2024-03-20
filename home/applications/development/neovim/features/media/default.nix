{pkgs, ...}: {
  packages = with pkgs; [];
  plugins = with pkgs; [
    hologram-nvim
    image-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
