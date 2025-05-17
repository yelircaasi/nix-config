{
  inputs,
  lib,
  config,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: let
  # shared = import ./shared-assets {inputs};
  resolveShellImport = deviceConfig: map (name: ./${name}) ([deviceConfig.defaultShell] ++ deviceConfig.otherShells);
in {
  imports = inputs.nixpkgs.lib.unique ([
      ./common
      ./scripts
    ]
    ++ (resolveShellImport deviceConfig));

  programs.starship = {
    enable = deviceConfig.prompt == "starship";
    # https://mynixos.com/home-manager/options/programs.starship
    # settings = {}; #TODO::prio2
  };
  programs.oh-my-posh = {
    enable = deviceConfig.prompt == "oh-my-posh";
    # https://mynixos.com/home-manager/options/programs.oh-my-posh
    # settings = {}; #TODO::prio2
  };

  programs.bash.enable = true;

  home.sessionVariables = {
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
  # home.shellAliases = {
  programs.bash.shellAliases =
    {
      c = "clear";
      cs = "/home/isaac/consilium/.venv/bin/consilium";
      consilium = "/home/isaac/consilium/.venv/bin/consilium";
      g = "git status";
      ga = "git add .";
      gs = "git status";
      gcm = "git commit -m";
      alej = "alejandra .";

      # cudaenv = "docker run --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 --name nlq -v /home/isaac/repos:/root/repos -v /home/isaac/data:/root/data -v /home/isaac/.ssh:/root/.ssh -v /home/isaac/.config/pypoetry:/root/.config/pypoetry -v /home/isaac/.cache/torch:/root/.cache/torch -v /home/isaac/.cache/huggingface:/root/.cache/huggingface nvidia:poetry";
    }
    // (
      g.constructFromList
      (name: g.setups.${name}.aliases.hyprland)
      (name: "Hyprland -c ${config.xdg.userDirs.extraConfig.XDG_CONFIG_HOME}/hypr/hyprland_${name}.conf")
      deviceConfig.monitorSetups
    );

  programs.bash.bashrcExtra = ''
    source ${mypkgs.forgit}/forgit.plugin.sh

    export FZF_DEFAULT_OPTS="--height 40% --border --color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400"
  '';

  home.packages = with pkgs; [
    (lib.mkIf
      ((deviceConfig.defaultShell == "bash") || (builtins.elem "bash" deviceConfig.otherShells))
      bashInteractive)
    (lib.mkIf (deviceConfig.prompt == "starship") starship)
    (lib.mkIf (deviceConfig.prompt == "ohmyposh") ohmyposh)
    neovim # TODO::prio1: remove when neovim is fixed
  ];
}
