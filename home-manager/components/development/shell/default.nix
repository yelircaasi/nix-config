{
  inputs,
  lib,
  config,
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./zsh
  ];

  # nixpkgs = {
  #   # You can add overlays here
  #   overlays = [
  #     # If you want to use overlays exported from other flakes:
  #     # neovim-nightly-overlay.overlays.default

  #     # Or define it inline, for example:
  #     # (final: prev: {
  #     #   hi = final.hello.overrideAttrs (oldAttrs: {
  #     #     patches = [ ./change-hello-to-hi.patch ];
  #     #   });
  #     # })
  #   ];
  #   # Configure your nixpkgs instance
  #   config = {
  #     # Disable if you don't want unfree packages
  #     allowUnfree = true;
  #     # Workaround for https://github.com/nix-community/home-manager/issues/2942
  #     allowUnfreePredicate = _: true;
  #   };
  # };

  # home = {
  #   username = "isaac";
  #   homeDirectory = "/home/isaac";
  #   # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  #   home.stateVersion = "23.11";
  #   packages = with pkgs; [
  #     docker

  #   ];

  # };

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
    alej = "alejandra";
  };

  home.packages = with pkgs; [
    bash

    (
      writers.writeBashBin
      "hm"
      ''
        __current=$PWD
        cd $HOME/nixos-config
        git add .
        home-manager switch --flake .#${deviceConfig.name}
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
        print("${g.color.Terminal}")
        print("${deviceConfig.name}")
        print("${deviceConfig.windowManager}")
      ''
    )
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # xdg.configFile."kanata/kanata.kbd".source = .../. + ./nixos/components/kanata/kanata.kbd ;
}