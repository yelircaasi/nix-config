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


def search(regexp: str | re.PATTERN, searched: str) -> str:
    if isinstance(regexp, str):
        regexp = re.compile(regexp, re.DOTALL)

    result = re.search(regexp, searched)

    if result is None:
        raise ValueError(f"search unsuccessful: {str(regexp)}")
    return result.group(1)


AVAILABLE_KERNEL_MODULES = search(r"boot.initrd.availableKernelModules = \[ ?([^\]]+?) ?\];", hardware_automatic) or " "
INITRD_KERNEL_MODULES = search(r"boot.initrd.kernelModules = \[ ?([^\]]*?) ?\];", hardware_automatic) or " "
KERNEL_MODULES = search(r"boot.kernelModules = \[ ?([^\]]+?) ?\];", hardware_automatic) or " "
EXTRA_MODULE_PACKAGES = search(r"boot.extraModulePackages = \[ ?([^\]]*?) ?\];", hardware_automatic) or " "

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

new_hardware_config = f""";\n\n  {DEVICE_NAME} = {OPEN}
    boot = {OPEN}
      initrd = {OPEN}
        availableKernelModules = [{AVAILABLE_KERNEL_MODULES}];
        kernelModules = [{INITRD_KERNEL_MODULES}];
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
sys.exit()

