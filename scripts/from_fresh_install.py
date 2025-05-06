"""
Copies the relevant fields from the automatically-generated file /etc/nixos/hardware-configuration.nix to the flake located located at /home/isaac/nix-config.

Assumes the file ~/nix-config/system/hardware-config.nix contains the line 
    ```${DEVICE_NAME} = {};```

Also assumes the device is x86_64 was installed with the usual options chosen: user isaac, US ANSI layout, locale Germany/Berlin, etc. 
Anything else must be set manually. This scripts serves to copy the automatically-detected hardware and nothing else.

${DEVICE_NAME} is the arbitrarily-chosen name assigned to the device, such as 'betsy', 'hank', and 'olivia'.
"""
import re
import sys
from pathlib import Path

DEVICE_NAME = sys.argv[1]

with open("/etc/nixos/configuration.nix", "r") as f:
    config = f.read()

with open("/etc/nixos/hardware-configuration.nix", "r") as f:
    hardware_automatic = f.read()

with open("/home/isaac/nix-config/system/hardware-configuration.nix", "r") as f:
    hardware_pre = f.read()

OPEN = "{"
CLOSE = "}"


print("====================================================")
print(config)
print("====================================================")
print(hardware_automatic)
print("====================================================")


def search(regexp: str, searched: str) -> str:
    regexp = re.compile(regexp, re.DOTALL)

    result = re.search(regexp, searched)

    if result is None:
        raise ValueError(f"search unsuccessful: {str(regexp)}")
    return result.group(1)


AVAILABLE_KERNEL_MODULES = search(r"boot.initrd.availableKernelModules = \[ ?([^\]]+?) ?\];", hardware_automatic) or " "
INITRD_KERNEL_MODULES = search(r"boot.initrd.kernelModules = \[ ?([^\]]*?) ?\];", hardware_automatic) or " "
KERNEL_MODULES = search(r"boot.kernelModules = \[ ?([^\]]+?) ?\];", hardware_automatic) or " "
EXTRA_MODULE_PACKAGES = search(r"boot.extraModulePackages = \[ ?([^\]]*?) ?\];", hardware_automatic) or " "
if "luks" in hardware_automatic:
    OPTIONAL_LUKS_EXPRESSION = f"\n        {search(r'boot\.initrd\.(luks[^;]+;)', hardware_automatic)}"
else:
    print("NOT ENCRYPTED")
    exit()
root_substring = search(r"fileSystems\.\"/\"(.+)\};", hardware_automatic)
DEVICE_PATH_ROOT = search(r"device = (\"[^\"]+?\");", root_substring)
FSTYPE_ROOT = search(r"fsType = (\"[^\"]+?\");", root_substring)

boot_substring = search(r"fileSystems\.\"/boot\"(.+)\};", hardware_automatic)
DEVICE_PATH_BOOT = search(r"device = (\"[^\"]+?\");", boot_substring)
FSTYPE_BOOT = search(r"fsType = (\"[^\"]+?\");", boot_substring)
BOOT_OPTIONS = search(r"options = \[ ?([^\]]+?) ?\];", boot_substring) or " "

# new_config = hardware_template.format(
#     DEVICE_NAME=DEVICE_NAME,
#     AVAILABLE_KERNEL_MODULES=AVAILABLE_KERNEL_MODULES,
#     INITRD_KERNEL_MODULES=INITRD_KERNEL_MODULES,
#     KERNEL_MODULES=KERNEL_MODULES,
#     EXTRA_MODULE_PACKAGES=EXTRA_MODULE_PACKAGES,
#     DEVICE_PATH_ROOT=DEVICE_PATH_ROOT,
#     FSTYPE_ROOT=FSTYPE_ROOT,
#     DEVICE_PATH_BOOT=DEVICE_PATH_BOOT,
#     FSTYPE_BOOT=FSTYPE_BOOT,
# )
# if not OPTIONAL_LUKS_EXPRESSION:
#   exit()
# print(OPTIONAL_LUKS_EXPRESSION)
# exit()

new_hardware_config = f""";\n\n  {DEVICE_NAME} = {OPEN}
    boot = {OPEN}
      initrd = {OPEN}
        availableKernelModules = [{AVAILABLE_KERNEL_MODULES}];
        kernelModules = [{INITRD_KERNEL_MODULES}];{OPTIONAL_LUKS_EXPRESSION}
      {CLOSE};
      kernelModules = [{KERNEL_MODULES}];
      extraModulePackages = [{EXTRA_MODULE_PACKAGES}];
    {CLOSE};

    fileSystems = {OPEN}
      "/" = {OPEN}
        device = {DEVICE_PATH_ROOT};
        fsType = {FSTYPE_ROOT};
      {CLOSE};
      "/boot" = {OPEN}
        device = {DEVICE_PATH_BOOT};
        fsType = {FSTYPE_BOOT};
        options = [{BOOT_OPTIONS}];
      {CLOSE};
    {CLOSE};
  {CLOSE}"""

SUFFIX = ";\n}.${\n  deviceConfig.name\n}"

with open("/home/isaac/nix-config/system/hardware-configuration.nix.bak", "w") as f:
    f.write(hardware_pre)
with open("/home/isaac/nix-config/system/hardware-configuration.nix", "w") as f:
    f.write(hardware_pre.replace(SUFFIX, new_hardware_config + SUFFIX))

print(new_hardware_config)

minimal_hyprland_config = """
$mainMod=super

animations {
  bezier=myBezier, 0.05, 0.9, 0.1, 1.05
  animation=windows, 1, 7, myBezier
  animation=windowsOut, 1, 7, default, popin 80%
  animation=border, 1, 10, default
  animation=borderangle, 1, 8, default
  animation=fade, 1, 7, default
  animation=workspaces, 1, 6, default
  enabled=true
}

decoration {
  blur {
    enabled=true
    passes=1
    size=3
  }
  rounding=5
}

dwindle {
  preserve_split=true
  pseudotile=true
}

general {
  border_size=2
  col.active_border=rgb(002400)
  col.inactive_border=rgb(162016)
  gaps_in=5
  gaps_out=20
  layout=dwindle
}

gestures {
  workspace_swipe=false
}

group {
  groupbar {
    text_color=0xffffffff
  }
  col.border_locked_active=rgb(003366)
  col.border_locked_inactive=rgb(242424)
}

misc {
  disable_hyprland_logo=true
  disable_splash_rendering=true
  enable_swallow=true
  swallow_regex=^(org.wezfurlong.wezterm)$
}

bind=$mainMod, Q, killactive,
bind=$mainMod, V, togglefloating,
bind=$mainMod, F, fullscreen
bind=$mainMod, W, exec, wezterm
"""
hypr_dir = Path("/home/isaac/.config/hypr")
if not hypr_dir.exists():
    Path.mkdir(hypr_dir)
with open(hypr_dir / "hyprland.conf", "w") as f:
    f.write(minimal_hyprland_config)

sys.exit()
