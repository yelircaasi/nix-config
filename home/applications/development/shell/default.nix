{
  inputs,
  lib,
  config,
  pkgs,
  g,
  deviceConfig,
  ...
}: let
  # shared = import ./shared-assets {inputs};
  resolveShellImport = deviceConfig: map (name: ./${name}) ([deviceConfig.defaultShell] ++ deviceConfig.otherShells);
in {
  imports = inputs.nixpkgs.lib.unique ([
      ./common
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

  #home.file."./.bashrc".source = ./bashrc;

  home.packages = with pkgs; [
    bashInteractive
    starship
    #glibc

    (
      writers.writeBashBin
      "hm"
      ''
        __current=$PWD
        cd $HOME/nix-config
        git add .
        home-manager switch --flake .#${deviceConfig.name}
        cd $__current
      ''
    )
    (
      writers.writeBashBin
      "nrs"
      ''
        __current=$PWD
        cd $HOME/nix-config
        git add .
        sudo nixos-rebuild switch --flake .#${deviceConfig.name}
        cd $__current
      ''
    )

    (
      writers.writePython3Bin
      "viewhm"
      {
        libraries = [python311];
      }
      ''
        import os
        from pathlib import Path
        from stat import S_ISLNK as is_link
        from stat import S_ISDIR as is_dir

        HOME = Path("/home/isaac")
        CLEAR = "\033[0m"
        RED = "\033[0;31m"
        BLUE = "\033[0;34m"
        exempt = {
            ".cache",
            ".config",
            "Knecon",
            "Learning",
            "Documents",
            "Downloads",
            "OLD"
        }


        def red(s: str) -> None:
            return f"{RED}{s}{CLEAR}"


        def blue(s: str) -> None:
            return f"{BLUE}{s}{CLEAR}"


        def list_directory(
            directory_path: Path,
            top_level: bool = True,
            indent: str = ""
        ) -> None:
            for item in sorted(os.listdir(directory_path)):
                abspath = directory_path / item
                if item in exempt:
                    continue
                if not is_dir(os.lstat(abspath).st_mode):
                    if is_link(os.lstat(abspath).st_mode):
                        print(f"{indent}{abspath} -> {blue(os.readlink(abspath))}")
                    else:
                        print(indent + red(abspath))
                else:
                    junk = str(abspath).endswith(".config") or "nvim-" in str(abspath)
                    if not junk:
                        if top_level:
                            list_directory(abspath, top_level=False, indent="")
                        else:
                            print(abspath)
            # print()


        list_directory(HOME)
        print()
        list_directory(HOME / ".config")
      ''
    )
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # xdg.configFile."kanata/kanata.kbd".source = .../. + ./nixos/components/kanata/kanata.kbd ;
}
