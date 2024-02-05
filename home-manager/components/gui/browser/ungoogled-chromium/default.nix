{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.chromium = {
    enable = true;
    package = pkgs.ungoogled-chromium;
    # TODO: figure out how to declaratively install plugins in ungoogled-chromium -> https://github.com/nix-community/home-manager/issues/2216

    #extensions = [
    #  {id = "cjpalhdlnbpafiamejdnhcphjbkeiagm";} # ublock origin
    #  {
    #    id = "dcpihecpambacapedldabdbpakmachpb";
    #    updateUrl = "https://raw.githubusercontent.com/iamadamdev/bypass-paywalls-chrome/master/updates.xml";
    #  }
    #
    #{ id = "aaaaaaaaaabbbbbbbbbbcccccccccc"; crxPath = "/home/share/extension.crx"; version = "1.0"; }
    #];
    commandLineArgs = [
      "--enable-logging=stderr"
      "--ignore-gpu-blocklist"
    ];
  };
}
