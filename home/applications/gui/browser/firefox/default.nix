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
        extensions = with inputs.firefox-addons.packages.${pkgs.system}; [ublock-origin bitwarden];
      };
    };
  };
}
