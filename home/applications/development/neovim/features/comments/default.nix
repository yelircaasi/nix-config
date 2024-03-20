{pkgs, ...}: {
  plugins = with pkgs; [
    comment-nvim
    todo-comments-nvim
  ];

  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
