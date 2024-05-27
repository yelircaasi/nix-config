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
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {};
  };

  programs.bash.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
    SHELL = "bash";
    BROWSER = "qutebrowser";
  };
  # home.shellAliases = {
  programs.bash.shellAliases = {
    c = "clear";
    g = "git status";
    ga = "git add .";
    gs = "git status";
    gcm = "git commit -m";
    alej = "alejandra .";
    cudaenv = "docker run --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 --name nlq -v /home/isaac/repos:/root/repos -v /home/isaac/data:/root/data -v /home/isaac/.ssh:/root/.ssh -v /home/isaac/.config/pypoetry:/root/.config/pypoetry -v /home/isaac/.cache/torch:/root/.cache/torch -v /home/isaac/.cache/huggingface:/root/.cache/huggingface nvidia:poetry";
  };
  programs.bash.bashrcExtra = ''
    [ -f ${mypkgs.forgit}/forgit.plugin.sh ] && source ${mypkgs.forgit}/forgit.plugin.sh
  '';

  #home.file."./.bashrc".source = ./bashrc;

  home.packages = with pkgs; [
    bashInteractive
    starship
    #glibc
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # xdg.configFile."kanata/kanata.kbd".source = .../. + ./nixos/components/input/kanata/kanata.kbd ;
}
