{
  config,
  lib,
  deviceConfig,
  ...
}: {
  services.openvpn.servers = {
    inovex = {config = '' config /home/isaac/.config/openvpn/inovex.conf '';};
  };
  # environment.sessionVariables = {
  #   MDM_PACKAGES_LIST_FILE = "";
  #   MDM_PASSWORD_PAM_FILE = "";
  #   MDM_SCREEN_LOCK_TIMEOUT = "";
  #   MDM_SYSTEM_DISK_DEVICE = "";
  #   MDM_SYSTEM_PRODUCT_FAMILY_FILE = "/sys/devices/virtual/dmi/id/product_family";
  #   MDM_SYSTEM_PRODUCT_NAME_FILE = "/sys/devices/virtual/dmi/id/product_name";
  #   MDM_SYSTEM_PRODUCT_SERIAL_FILE = "/sys/devices/virtual/dmi/id/product_serial";
  #   MDM_SYSTEM_BIOS_VERSION_FILE = "/sys/devices/virtual/dmi/id/bios_version";
  #   MDM_SYSTEM_EC_FIRMWARE_RELEASE_FILE = "/sys/devices/virtual/dmi/id/ec_firmware_release";
  # };
  # environment.variables = {};

  # systemd.services = {
  #   readable-product-serial = {
  #     description = "Make product_serial readable for MDM script";
  #     wantedBy = ["multi-user.target"];

  #     serviceConfig = {
  #       User = "root";
  #       Type = "simple";
  #       ExecStart = "chmod 0444 /sys/devices/virtual/dmi/id/product_serial";

  #     };
  #   };
  # };
  # systemd.user = {
  #   services = {
  #     inovex-mdm-inventory = {
  #       description = "";
  #       after = ["local-fs.target" "remote-fs.target"];
  #       wantedBy = ["multi-user.target"];

  #       serviceConfig = {
  #         Type = "simple";
  #         Group = "landscape";
  #         ExecCondition = "/run/current-system/sw/bin/landscape-client --is-registered";
  #         ExecStart = "/run/current-system/sw/bin/landscape-client";
  #         KillMode = "process";
  #       };
  #     };
  #   };
  #   timers = {
  #     inovex-mdm-inventory = {};
  #   };
  # };
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