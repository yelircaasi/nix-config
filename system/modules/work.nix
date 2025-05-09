{
  config,
  pkgs,
  lib,
  deviceConfig,
  ...
}: {
  environment.systemPackages = with pkgs; [coreutils util-linux openvpn];
  # services.openvpn.servers = {
  #   inovex = {config = '' config /home/isaac/.config/openvpn/inovex.conf '';};
  # };  NOT WORKING

  environment.sessionVariables = {
    # MDM_PACKAGES_LIST_FILE = "";
    # MDM_PASSWORD_PAM_FILE = "";
    # MDM_SCREEN_LOCK_TIMEOUT = "";
    # MDM_SYSTEM_DISK_DEVICE = "";
    MDM_SYSTEM_PRODUCT_FAMILY_FILE = "/sys/devices/virtual/dmi/id/product_family";
    MDM_SYSTEM_PRODUCT_NAME_FILE = "/sys/devices/virtual/dmi/id/product_name";
    MDM_SYSTEM_PRODUCT_SERIAL_FILE = "/sys/devices/virtual/dmi/id/product_serial";
    MDM_SYSTEM_BIOS_VERSION_FILE = "/sys/devices/virtual/dmi/id/bios_version";
    MDM_SYSTEM_EC_FIRMWARE_RELEASE_FILE = "/sys/devices/virtual/dmi/id/ec_firmware_release";
  };
  # environment.variables = {};

  systemd.services = {
    readable-product-serial = {
      description = "Make product_serial readable for MDM script";
      wantedBy = ["multi-user.target"];

      serviceConfig = {
        User = "root";
        Type = "oneshot";
        ExecStart = "${pkgs.coreutils}/bin/chmod 0444 /sys/devices/virtual/dmi/id/product_serial";
      };
    };
  };

  systemd.user.timers = {
    inovex-mdm-inventory = {
      description = "Daily push of inventory to MDM Linux API";
      wantedBy = ["timers.target"];
      timerConfig = {
        Unit = "inovex-mdm-inventory.service";
        OnCalendar = "*-*-* 12:30:00 Europe/Berlin";
        RandomizedDelaySec = "30m";
        Persistent = true;
      };
    };
  };

  systemd.user.services.inovex-mdm-inventory = {
    description = "Push inventory to inovex MDM Linux API";
    after = ["local-fs.target" "remote-fs.target" "graphical-session.target"];
    wantedBy = ["multi-user.target"];

    serviceConfig = {
      Type = "oneshot";
      ExecStart = "/home/isaac/.nix-profile/bin/inovex-mdm-inventory";
    };
  };
}
/*
===================================================================
/etc/systemd/system/readable-product-serial.service

[Unit]
Description=Make product_serial readable for MDM script

[Service]
User=root
Type=simple
ExecStart=chmod 0444 /sys/devices/virtual/dmi/id/product_serial

[Install]
WantedBy=multi-user.target

===================================================================
~/.config/systemd/user/inovex-mdm-inventory.service

[Unit]
Description=Push inventory to inovex MDM Linux API

[Service]
Type=oneshot
ExecStart=/path/to/bin/push-inovex-mdm-inventory.sh

===================================================================
~/.config/systemd/user/inovex-mdm-inventory.timer

[Unit]
Description=Daily push of inventory to MDM Linux API

[Timer]
OnCalendar=*-*-* 11:00:00 Europe/Berlin
RandomizedDelaySec=30m
Persistent=true

[Install]
WantedBy=timers.target

===================================================================
*/
/*

{ config, pkgs, ... }:

let
  vpnName = "myvpn";
in
{
  environment.systemPackages = with pkgs; [ openvpn ];

  systemd.services."openvpn-${vpnName}" = {
    description = "OpenVPN client (${vpnName})";
    wantedBy = [ "multi-user.target" ];
    after = [ "network-online.target" ];
    requires = [ "network-online.target" ];

    serviceConfig = {
      ExecStart = "${pkgs.openvpn}/bin/openvpn --config /etc/openvpn/${vpnName}/config.ovpn";
      WorkingDirectory = "/etc/openvpn/${vpnName}";
      CapabilityBoundingSet = [ "CAP_NET_ADMIN" "CAP_NET_BIND_SERVICE" ];
      AmbientCapabilities = [ "CAP_NET_ADMIN" "CAP_NET_BIND_SERVICE" ];
      Restart = "on-failure";
      User = "root";
    };

    # Ensure credentials are available and secure
    preStart = ''
      chmod 600 /etc/openvpn/${vpnName}/auth.txt
      chmod 600 /etc/openvpn/${vpnName}/key-pass.txt
    '';
  };

  # Optional: make sure config files exist
  system.activationScripts.ensureVpnFiles.text = ''
    mkdir -p /etc/openvpn/${vpnName}
    chown root:root /etc/openvpn/${vpnName}
    chmod 700 /etc/openvpn/${vpnName}
  '';
}

Make sure these files exist on disk:

/etc/openvpn/myvpn/
├── config.ovpn         # Your OpenVPN config
├── auth.txt            # Contains: username\npassword
└── key-pass.txt        # Contains: private key password


Your config.ovpn should include:

auth-user-pass auth.txt
askpass key-pass.txt


After adding the above to configuration.nix:

sudo nixos-rebuild switch
sudo systemctl enable openvpn-myvpn
sudo systemctl start openvpn-myvpn
*/

