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
    # settings = {}; #TODO
  };
  programs.oh-my-posh = {
    enable = deviceConfig.prompt == "oh-my-posh";
    # https://mynixos.com/home-manager/options/programs.oh-my-posh
    # settings = {};
  };

  programs.bash.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
    SHELL = "bash";
    BROWSER = "qutebrowser";
    FZF_DEFAULT_OPTS = "--height 40% --border --color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400";
  };
  # home.shellAliases = {
  programs.bash.shellAliases = {
    c = "clear";
    cs = "/home/isaac/consilium/.venv/bin/consilium";
    consilium = "/home/isaac/consilium/.venv/bin/consilium";
    g = "git status";
    ga = "git add .";
    gs = "git status";
    gcm = "git commit -m";
    alej = "alejandra .";
    cudaenv = "docker run --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 --name nlq -v /home/isaac/repos:/root/repos -v /home/isaac/data:/root/data -v /home/isaac/.ssh:/root/.ssh -v /home/isaac/.config/pypoetry:/root/.config/pypoetry -v /home/isaac/.cache/torch:/root/.cache/torch -v /home/isaac/.cache/huggingface:/root/.cache/huggingface nvidia:poetry";
  };
  programs.bash.bashrcExtra = ''
    source ${mypkgs.forgit}/forgit.plugin.sh

    export FZF_DEFAULT_OPTS="--height 40% --border --color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400"
  '';

  home.packages = with pkgs; [
    bashInteractive
    starship
    neovim  # TODO: remove when neovim is fixed
  ];
}
