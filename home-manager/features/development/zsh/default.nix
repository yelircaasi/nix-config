#  that are shared across all devices
{
  inputs,
  ...
}: {
  programs.zsh.enable = true ;
  programs.zsh.initExtra = builtins.readFile ./.zshrc ;
  xdg.configFile."zsh/alias.zsh".source = builtins.readFile ./alias.zsh ;
  xdg.configFile."zsh/functions.zsh".source = builtins.readFile ./functions.zsh ;
  xdg.configFile."zsh/variables.zsh".source = builtins.readFile ./variables.zsh ;
  
}
