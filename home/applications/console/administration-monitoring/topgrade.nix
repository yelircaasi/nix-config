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
          only = ["containers"];
        };
        linux = {

        };
        commands = {};
        pre_commands = {"Announce" = "echo 'Running topgrade'";};
        post_commands = {"Announce completion" = "echo 'Finished running topgrade'";};
    };
  };


}
