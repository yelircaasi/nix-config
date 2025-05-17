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

  #   "./hypr/hypridle.conf".text = ''
  #     general {
  #         lock_cmd = pidof hyprlock || hyprlock       # avoid starting multiple hyprlock instances.
  #         before_sleep_cmd = loginctl lock-session    # lock before suspend.
  #         after_sleep_cmd = hyprctl dispatch dpms on  # to avoid having to press a key twice to turn on the display.
  #     }

  #     listener {
  #         timeout = 150                                # 2.5min.
  #         on-timeout = brightnessctl -s set 10         # set monitor backlight to minimum, avoid 0 on OLED monitor.
  #         on-resume = brightnessctl -r                 # monitor backlight restore.
  #     }

  #     listener {
  #         timeout = 300                                 # 5min
  #         on-timeout = loginctl lock-session            # lock screen when timeout has passed
  #     }

  #   '';

  #   "./hypr/hyprlock.conf".text = ''
  #       widget_name {
  #           monitor =
  #       }

  #       background {
  #           monitor =
  #           path = ${bgPhotoAbs}   # supports png, jpg, webp (no animations, though)
  #           color = rgba(20, 20, 20, 1.0)

  #           # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
  #           blur_passes = 0 # 0 disables blurring
  #           blur_size = 7
  #           noise = 0.0117
  #           contrast = 0.8916
  #           brightness = 0.8172
  #           vibrancy = 0.1696
  #           vibrancy_darkness = 0.0
  #       }

  #       image {
  #           monitor =
  #           path = ${profilePhotoAbs}
  #           size = 150 # lesser side if not 1:1 ratio
  #           rounding = -1 # negative values mean circle
  #           border_size = 2
  #           border_color = rgba(8, 16, 8, 0.9)
  #           rotate = 0 # degrees, counter-clockwise
  #           reload_time = -1 # seconds between reloading, 0 to reload with SIGUSR2
  #           reload_cmd =  # command to get new path. if empty, old path will be used. don't run "follow" commands like tail -F

  #           position = 0, 180
  #           halign = center
  #           valign = center
  #       }

  #       # shape {
  #       #     monitor =
  #       #     size = 280, 30
  #       #     color = rgba(5, 17, 5, 1.0)
  #       #     rounding = 6
  #       #     border_size = 2
  #       #     border_color = rgba(40, 90, 50, 1.0)
  #       #     rotate = 0
  #       #     xray = false # if true, make a "hole" in the background (rectangle of specified size, no rotation)

  #       #     position = 0, 50
  #       #     halign = center
  #       #     valign = center
  #       # }

  #       # label {
  #       #     monitor =
  #       #     text = Hallo, bester Papa!
  #       #     text_align = center # center/right or any value for default left. multi-line text alignment inside label container
  #       #     color = rgba(40, 72, 40, 0.8)
  #       #     font_size = 16
  #       #     font_family = Noto Sans
  #       #     rotate = 0 # degrees, counter-clockwise
  #       #     position = 0, 50
  #       #     halign = center
  #       #     valign = center
  #       # }

  #       input-field {
  #           monitor =
  #           size = 100, 30
  #           outline_thickness = 2
  #           dots_size = 0.33 # Scale of input-field height, 0.2 - 0.8
  #           dots_spacing = 0.15 # Scale of dots' absolute size, 0.0 - 1.0
  #           dots_center = true
  #           dots_rounding = -1 # -1 default circle, -2 follow input-field rounding
  #           outer_color = rgba(8, 16, 8, 0.9)
  #           inner_color = rgba(128, 128, 128, 0.7)
  #           # background_color = rgba(5, 17, 5, 1.0)
  #           font_color = rgba(8, 16, 8, 0.9)
  #           fade_on_empty = true
  #           fade_timeout = 1000 # Milliseconds before fade_on_empty is triggered.
  #           placeholder_text = <i>Input Password...</i> # Text rendered in the input box when it's empty.
  #           hide_input = false
  #           rounding = 6 # -1 means complete rounding (circle/oval)
  #           check_color = rgb(204, 136, 34)
  #           fail_color = rgb(204, 34, 34) # if authentication failed, changes outer_color and fail message color
  #           fail_text = <i>$FAIL <b>($ATTEMPTS)</b></i> # can be set to empty
  #           fail_timeout = 2000 # milliseconds before fail_text and fail_color disappears
  #           fail_transition = 300 # transition time in ms between normal outer_color and fail_color
  #           # capslock_color = -1
  #           # numlock_color = -1
  #           # bothlock_color = -1 # when both locks are active. -1 means don't change outer color (same for above)
  #           # invert_numlock = false # change color if numlock is off
  #           swap_font_color = false # see below

  #           position = 0, 50
  #           halign = center
  #           valign = center
  #       }
  #     }
  #   '';
  # };
  #  \\ (mkFilePerSetup (setupName: {"./hypr/hyprland_${setupName}.conf".text = ''
  #     source = ${mkAbs "hyprland.conf"}
  #   '';}));
}
