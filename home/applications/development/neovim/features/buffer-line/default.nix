{pkgs, ...}: {
  packages = [
  ];
  plugins = with pkgs; [
    bufferline-nvim
  ];

  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
