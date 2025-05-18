{
  inputs,
  pkgs,
  lib,
  g,
  deviceConfig,
  ...
}: let
  inherit (g) setups;

  mkAbs = relPath: "/home/${deviceConfig.userName}/.config/hypr/${relPath}";

  helpers = import ./helpers.nix {inherit pkgs lib g deviceConfig;};

  wallpapersPrepared = import ./wallpapers {
    inherit pkgs g deviceConfig;
  };

  # ----

  bgPhoto = "images/river.jpg";
  profilePhoto = "images/blitz.jpg";
  bgPhotoAbs = "/home/isaac/.config/hypr/${bgPhoto}";
  profilePhotoAbs = "/home/isaac/.config/hypr/${profilePhoto}";

  mkPerSetup = perSetupFunc: lib.attrsets.concatMapAttrs (map perSetupFunc deviceConfig.monitorSetups);

  bgPhotosFromSetupName = setupName:
    g.constructFromList
    (monitorName: monitorName)
    (monitorName: "${wallpapersPrepared}/images/${setupName}/${monitorName}.png")
    (map (ob: ob.name) g.setups.${setupName}.monitors);

  bgPhotos =
    g.constructFromList
    (setupName: setupName)
    bgPhotosFromSetupName
    deviceConfig.monitorSetups;

  getMonitorNames = setupName: map (monitorSet: monitorSet.name) g.setups.${setupName}.monitors;
  #lib.mapAttrs (name: value: bgPhotoAbs) g.monitors;
  # g.constructFromList () () deviceConfig
  #   lib.attrsets.genAttrs
  #   (
  #     setupName:
  #       lib.attrsets.genAttrs
  #       (monitorSet: "${wallpapersPrepared}/images/${setupName}/${monitorSet.name}.png")
  #       g.setups.${setupName}.monitors
  #   )
  #   deviceConfig.monitorSetups;
  # {
  #   olivia = "";
  #   betsy = "";
  #   hank = "";
  #   homeLeft  "";
  #   homeRight = "";
  #   work1Samsung = "";
  #   work1Dell = "";
  # };
  # bgPhotosAbs =
  #   builtins.mapAttrs
  #   (name: path: mkAbs path)
  #   bgPhotos;
  # g.monitors = {
  #   homeLeft = "Ancor Communications Inc ASUS PB278 E8LMTF000788";
  #   homeRight = "Ancor Communications Inc ASUS PB278 E8LMTF000788";
  #   olivia = "BOE 0x0C3F";
  #   betsy = "Chimei Innolux Corporation 0x15D7";
  #   hank = "";
  #   work1Samsung = "Samsung Electric Company LS27D60xU HNAX501336";
  #   work1Dell = "Dell Inc. DELL P2418D MY3ND87U07VT";
  # };
  setupSet = g.filterAttrsFromList deviceConfig.monitorSetups g.setups;
in {
  imports = [
  ];
  # Additional dependencies
  home.packages = with pkgs; [
    # custom.screenshot
    hyprlock
    hypridle
    hyprland-autoname-workspaces
    hyprpicker # color picker
    hyprpaper # move
    swww # move
    # mpvpaper # Live wallpaper
    # scratchpad
  ];

  xdg.configFile =
    (helpers.mkPerSetup
      (setupName: "./hypr-setups/${setupName}/hyprland.conf")
      (setupName: {text = helpers.mkHyprlandConfig setupName;})
      setupSet)
    // (helpers.mkPerSetup
      (setupName: "./hypr-setups/${setupName}/hyprlock.conf")
      (setupName: {text = helpers.mkHyprlockConfig setupName bgPhotos;})
      setupSet)
    // (helpers.mkPerSetup
      (setupName: "./hypr-setups/${setupName}/images/${profilePhoto}")
      (setupName: {source = ./${profilePhoto};})
      setupSet)
    // (helpers.mkPerSetup
      (setupName: "./hypr-setups/${setupName}/hypridle.conf")
      (setupName: {
        text = ''
          general {
              lock_cmd = pidof hyprlock || hyprlock       # avoid starting multiple hyprlock instances.
              before_sleep_cmd = loginctl lock-session    # lock before suspend.
              after_sleep_cmd = hyprctl dispatch dpms on  # to avoid having to press a key twice to turn on the display.
          }

          listener {
              timeout = 150                                # 2.5min.
              on-timeout = brightnessctl -s set 10         # set monitor backlight to minimum, avoid 0 on OLED monitor.
              on-resume = brightnessctl -r                 # monitor backlight restore.
          }

          listener {
              timeout = 300                                 # 5min
              on-timeout = loginctl lock-session            # lock screen when timeout has passed
          }

        '';
      })
      setupSet)
    // (helpers.mkPerMonitorPerSetup
      (setupName: monitorName: "./hypr-setups/${setupName}/images/${monitorName}.jpg")
      (setupName: monitorName: {source = bgPhotos.${setupName}.${monitorName};})
      setupSet)
    // (helpers.mkPerSetup
      (setupName: "./hypr-setups/${setupName}/hyprpaper.conf")
      (setupName: {
        text = g.concatListsSortedUnique "\n" (
          map
          (monitorName: let
            p = builtins.toString bgPhotos.${setupName}.${monitorName};
          in [
            "preload = ${p}"
            "wallpaper = desc:${g.monitors.${monitorName}.desc}, ${p}"
          ])
          (getMonitorNames setupName)
        );
      })
      setupSet);

  # // (helpers.mkPerSetup
  #   (
  #     setupName: {
  #       "./hypr/hyprpaper.conf".text =
  #         builtins.concatLines
  #         (monitorName: "wallpaper = desc:${g.monitors.${monitorName}.desc}, ${bgPhotos.${monitorName}}")
  #         (getMonitorNames setupName);
  #     }
  #   )
  #   setupSet);

  # {
  #   "./hypr/hyprland.conf".text =
  #   "./hypr-setups/__SETUP_DIR__/${bgPhoto}".source = ./${bgPhoto};
  #   "./hypr/${profilePhoto}".source = ./${profilePhoto};

  #   "./hypr/hyprpaper.conf".text = ''
  #     # preload = ${bgPhotoAbs}
  #     wallpaper = desc:${g.monitors.betsy.desc},       ${bgPhotosAbs.betsy}
  #     wallpaper = desc:${g.monitors.olivia.desc},      ${bgPhotosAbs.olivia}
  #     # wallpaper = desc:${g.monitors.hank.desc},      ${bgPhotosAbs.hank}
  #     wallpaper = desc:${g.monitors.homeLeft.desc},    ${bgPhotosAbs.homeLeft}
  #     wallpaper = desc:${g.monitors.homeRight.desc},   ${bgPhotosAbs.homeRight}
  #     wallpaper = desc:${g.monitors.work1Samsung.desc}, ${bgPhotosAbs.work1Samsung}
  #     wallpaper = desc:${g.monitors.work1Dell.desc},    ${bgPhotosAbs.work1Dell}
  #   '';

  #   "./hypr/hyprlock.conf".text =
  # };
  #  \\ (mkFilePerSetup (setupName: {"./hypr/hyprland_${setupName}.conf".text = ''
  #     source = ${mkAbs "hyprland.conf"}
  #   '';}));
}
