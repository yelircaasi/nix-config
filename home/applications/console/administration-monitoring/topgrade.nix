{
  pkgs,
  mypkgs,
  ...
}: {
  programs.topgrade = {
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
