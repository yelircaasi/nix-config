{
  inputs,
  config,
  pkgs,
  lib,
  g,
  deviceConfig,
  ...
}: let
  
  environmentVariableGroups = {
    minimal = rec {
      EDITOR = "pde";
      SHELL = "bash";
      BROWSER = "qutebrowser";
      FZF_DEFAULT_OPTS = "--height 40% --border --color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400";
      CFG = "${config.xdg.userDirs.extraConfig.XDG_CONFIG_HOME}";
      NVIM_FLAKE = "${inputs.neovim-flake.packages.${pkgs.stdenv.hostPlatform.system}.default}";
      NEWT_COLORS = "'root=white,black border=white,black window=white,black shadow=white,black title=white,black button=black,white actbutton=blue,blue checkbox=white,black actcheckbox=black,cyan entry=white,black label=white,black listbox=white,black actlistbox=black,cyan textbox=white,black acttextbox=black,cyan helpline=white,black roottext=white,black emptyscale=,gray fullscale=,red disentry=darkgray,black disabled=darkgray,darkgray compactbutton=black,white'";
      NEWT_COLORS_ALT = builtins.concatStringsSep " " [
        "'root=white,black"
        "border=white,black"
        "window=white,black"
        "shadow=white,black"
        "title=white,black"
        "button=black,white"
        "actbutton=blue,blue"
        "checkbox=white,black"
        "actcheckbox=black,cyan"
        "entry=white,black"
        "label=white,black"
        "listbox=white,black"
        "actlistbox=black,cyan"
        "textbox=white,black"
        "acttextbox=black,cyan"
        "helpline=white,black"
        "roottext=white,black"
        "emptyscale=,gray"
        "fullscale=,red"
        "disentry=darkgray,black"
        "disabled=darkgray,darkgray"
        "compactbutton=black,white'"
      ];
      # NEWT_COLORS = lib.strings.concatLines [
      #   "'root=white,black"
      #   "border=white,black"
      #   "window=white,black"
      #   "shadow=white,black"
      #   "title=white,black"
      #   "button=black,white"
      #   "actbutton=blue,blue"
      #   "checkbox=white,black"
      #   "actcheckbox=black,cyan"
      #   "entry=white,black"
      #   "label=white,black"
      #   "listbox=white,black"
      #   "actlistbox=black,cyan"
      #   "textbox=white,black"
      #   "acttextbox=black,cyan"
      #   "helpline=white,black"
      #   "roottext=white,black"
      #   "emptyscale=,gray"
      #   "fullscale=,red"
      #   "disentry=darkgray,black"
      #   "disabled=darkgray,darkgray"
      #   "compactbutton=black,white'"
      # ];
      # white,blue\nborder=black,white\nwindow=black,white";

      # export XDG_CONFIG_DIR="$HOME/.config"
      # export XDG_DESKTOP_DIR="$HOME/Temporary/Empty"
      # export XDG_DOWNLOAD_DIR="$HOME/Temporary"
      # export XDG_TEMPLATES_DIR="$HOME/Learning/templates"
      # export XDG_PUBLICSHARE_DIR="$HOME/Temporary/Public"
      # export XDG_DOCUMENTS_DIR="$HOME/Temporary"
      # export XDG_MUSIC_DIR="$HOME/Media/Music"
      # export XDG_PICTURES_DIR="$HOME/Media/Pictures"
    };
  };
in {
  home.sessionVariables = g.selectSetsViaConsoleSet deviceConfig environmentVariableGroups;
}
