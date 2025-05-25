{
  config,
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
    # style = g.utils.readAndInterpolateCQ g ./style.css;
    style = ''
      * {
        all: unset;
        background-image: none;
        box-shadow: none;
        border: none;
        color: white;
      }

      window {
        background-color: rgba(12, 12, 12, 0.9);
      }

      button {
        color: #ffffff;
        background-color:rgb(65, 35, 105);
        border-style: solid;
        border-width: 2px;
        background-repeat: no-repeat;
        background-position: center;
        background-size: 25%;
      }

      button:focus, button:active, button:hover {
        background-color:rgb(24, 106, 133);
        color:rgb(58, 173, 40);
        outline-style: none;
      }

      #lock {
          background-image: url("${./icons/lock.png}");
      }

      #logout {
          background-image: url("${./icons/logout.png}");
      }

      #suspend {
          background-image: url("${./icons/suspend.png}");
      }

      #hibernate {
          background-image: url("${./icons/hibernate.png}");
      }

      #shutdown {
          background-image: url("${./icons/shutdown.png}");
      }

      #reboot {
          background-image: url("${./icons/reboot.png}");
      }
    '';
    /*
       alt = ''
      * {
        /* background-image: none; * /
        box-shadow: none;
      }

      window {
        background-color: rgba(73, 25, 25, 0.9);
      }

      button {
        border-radius: 0;
        border-color:rgb(111, 120, 58);
        color:rgb(202, 108, 108);
        background-color:rgb(124, 40, 118);
        border-style: solid;
        border-width: 1px;
        background-repeat: no-repeat;
        background-position: center;
        background-size: 25%;
      }

      button:focus, button:active, button:hover {
        background-color:rgb(24, 106, 133);
        color:rgb(58, 173, 40);
        outline-style: none;
      }

      #lock {
          background-image: url("${./icons/lock.png}");
          background-size: contain; /* or cover * /
          background-repeat: no-repeat;
          background-position: center;
          opacity: 1;
      }

      #logout {
          background-image: url("${./icons/logout.png}");
          color:rgb(57, 62, 220);
          background-color:rgb(199, 155, 228);
      }

      #suspend {
          background-image: url("${./icons/suspend.png}");
      }

      #hibernate {
          background-image: url("${./icons/hibernate.png}");
      }

      #shutdown {
          background-image: url("/home/isaac/nix-config/home/desktop-environment/logout-manager/wlogout/icons/shutdown.png");
      }

      #reboot {
          background-image: url("${./icons/reboot.png}");
      }

    '';
    */
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
