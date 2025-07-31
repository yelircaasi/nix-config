{
  config,
  lib,
  g,
  deviceConfig,
}:
g.selectSetsViaConsoleSet deviceConfig {
  minimal = rec {
    EDITOR = "nvim";
    SHELL = "bash";
    BROWSER = "qutebrowser";
    FZF_DEFAULT_OPTS = "--height 40% --border --color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400";
    CFG = "${config.xdg.userDirs.extraConfig.XDG_CONFIG_HOME}";

    # export XDG_CONFIG_DIR="$HOME/.config"
    # export XDG_DESKTOP_DIR="$HOME/Temporary/Empty"
    # export XDG_DOWNLOAD_DIR="$HOME/Temporary"
    # export XDG_TEMPLATES_DIR="$HOME/Learning/templates"
    # export XDG_PUBLICSHARE_DIR="$HOME/Temporary/Public"
    # export XDG_DOCUMENTS_DIR="$HOME/Temporary"
    # export XDG_MUSIC_DIR="$HOME/Media/Music"
    # export XDG_PICTURES_DIR="$HOME/Media/Pictures"
  };
}
