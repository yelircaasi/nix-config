{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        settings = {
          "extensions.autoDisableScopes" = 0;
        };
        extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [ublock-origin bitwarden];
      };
    };
  };
}
