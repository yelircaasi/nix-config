{
  inputs,
  pkgs,
  g,
  ...
}: 
{
programs.quickshell = {
    package = pkgs.symlinkJoin {
      name = "quickshell-wrapped";
      paths = [
        pkgs.quickshell
        pkgs.kdePackages.qtimageformats
        pkgs.adwaita-icon-theme
      ];
      meta.mainProgram = pkgs.quickshell.meta.mainProgram;
    };

    systemd.enable = true;
  };
}
# https://www.tonybtw.com/tutorial/quickshell/
# https://mynixos.com/home-manager/options/programs.quickshell
# https://learnxinyminutes.com/qml/
# https://quickshell.org/docs/v0.2.1/guide/introduction/
# https://quickshell.org/docs/v0.2.1/guide/qml-language
# https://quickshell.org/docs/v0.2.1/types/

# {
#   imports = [];

#   home.packages = with pkgs; [
#     waybar
#     font-awesome
#   ];

#   programs.quickshell = {
#     enable = true;
#     configs = {
#       config1 = ./config1;
#       config2 = ./config2;
#     };
#     systemd.enable = false;
#   };
# }

# reference: https://github.com/tripathiji1312/quickshell

# environment.systemPackages = with pkgs; [
#     quickshell
#   ];