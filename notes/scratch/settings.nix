{
  pkgs,
  root,
  lib,
  g,
}: let
  inherit (root.pkgs) player-metadata;
in [
  {
    "layer" = "top";
    "position" = "top";
    "modules-left" = [
      "sway/workspaces"
      "temperature"
      "custom/music"
    ];
    "modules-center" = [
      "sway/window"
    ];
    "modules-right" = [
      "tray"
      "idle_inhibitor"
      "pulseaudio"
      "backlight"
      "memory"
      "cpu"
      "network"
      "clock"
    ];
    "idle_inhibitor" = {
      "format" = "{icon}";
      "format-icons" = {
        "activated" = "󰈈";
        "deactivated" = "󰈉";
      };
      "tooltip" = false;
    };
    # "backlight" = {
    #   "device" = "intel_backlight";
    #   "on-scroll-up" = "light -A 5";
    #   "on-scroll-down" = "light -U 5";
    #   "format" = "{icon} {percent}%";
    #   "format-icons" = [ "" "" "" "" ];
    # };
    "pulseaudio" = {
      "format" = "{icon} {volume}%";
      "format-muted" = "󰝟 Muted";
      "max-volume" = 200;
      "format-icons" = {
        "default" = ["" "" ""];
      };
      "states" = {
        "warning" = 85;
      };
      "scroll-step" = 1;
      "on-click" = "${lib.getExe pkgs.pavucontrol}";
      "tooltip" = false;
    };
    "clock" = {
      "interval" = 1;
      "format" = "{:%H:%M %b %d}";
      "tooltip" = true;
      "today-format" = "<span color='${g.color.waybar.clock}'><b>{}</b></span>";
      "tooltip-format" = "{:%A %B %Y}\n<tt>{calendar}</tt>";
    };
    "memory" = {
      "interval" = 1;
      "format" = "󰍛 {percentage}%";
      "states" = {
        "warning" = 85;
      };
    };
    "cpu" = {
      "interval" = 1;
      "format" = "󰘚 {usage}%";
    };
    "custom/music" = {
      "format" = "{}";
      "interval" = 1;
      "exec-if" = "${lib.getExe pkgs.playerctl} metadata";
      "exec" = "${player-metadata}";
    };
    "network" = {
      "interval" = 1;
      "format-wifi" = "󰖩 {essid}";
      "format-ethernet" = "󰈀 {ipaddr}";
      "format-linked" = "󰖩 {essid}";
      "format-disconnected" = "󰖩 Disconnected";
      "tooltip" = false;
    };
    "temperature" = {
      "hwmon-path" = "/sys/class/hwmon/hwmon6/temp2_input";
      "tooltip" = false;
      "format" = " {temperatureC}°C";
    };
    "tray" = {
      "icon-size" = 14;
      "spacing" = 5;
    };
  }
]
