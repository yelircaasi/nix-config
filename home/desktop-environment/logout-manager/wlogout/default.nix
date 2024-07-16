{
  inputs,
  pkgs,
  g,
  ...
}: {
  imports = [];

  home.packages = with pkgs; [
    wlogout
    font-awesome
  ];

  programs.wlogout = {
    enable = true;
    style = g.utils.readAndInterpolateCQ g ./style.css;
    layout = [
      {
        "label" = "lock";
        "action" = "hyprlock";
        "text" = "Lock";
        "keybind" = "l";
      }
      {
        "label" = "hibernate";
        "action" = "systemctl hibernate";
        "text" = "Hibernate";
        "keybind" = "h";
      }
      {
        "label" = "logout";
        "action" = "hyprctl dispatch exit";
        "text" = "Logout";
        "keybind" = "e";
      }
      {
        "label" = "shutdown";
        "action" = "systemctl poweroff";
        "text" = "Shutdown";
        "keybind" = "s";
      }
      {
        "label" = "suspend";
        "action" = "systemctl suspend";
        "text" = "Suspend";
        "keybind" = "u";
      }
      {
        "label" = "reboot";
        "action" = "systemctl reboot";
        "text" = "Reboot";
        "keybind" = "r";
      }
    ];
  };

  xdg.configFile = {
    "./wlogout/icons/hibernate.png".source = ./icons/hibernate.png;
    "./wlogout/icons/lock.png".source = ./icons/lock.png;
    "./wlogout/icons/logout.png".source = ./icons/logout.png;
    "./wlogout/icons/reboot.png".source = ./icons/reboot.png;
    "./wlogout/icons/shutdown.png".source = ./icons/shutdown.png;
    "./wlogout/icons/suspend.png".source = ./icons/suspend.png;
  };
}
