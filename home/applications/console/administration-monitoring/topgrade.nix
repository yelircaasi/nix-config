{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.topgrade = {
    # TODO::prio1: read through https://github.com/topgrade-rs/topgrade and add config options
    #     and read https://github.com/nix-community/home-manager/blob/master/modules/programs/topgrade.nix
    #     https://git.thilo-billerbeck.com/thilobillerbeck/dotfiles/src/commit/47c36181f6f541d5113a32922db68befc6c9dfa4/home-manager/programs/topgrade.nix
    enable = true;
    settings = {
      misc = {
        cleanup = true;
        only = ["containers" "git_repos" "custom_commands"];
      };
      commands = {
        nixos = "sudo nixos-rebuild switch --flake $HOME/nix-config/#hank";
        home_manager = "home-manager switch --flake $HOME/nix-config/#hank";
      };
      pre_commands = {"Announce" = "echo 'Running topgrade'";};
      post_commands = {"Announce completion" = "echo 'Finished running topgrade'";};
      containers = {
        "ignored_containers" = [];
      };
      git = {
        repos = ["~/repos/consilium" "~/notes"];
      };
    };
  };
}
