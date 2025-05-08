

import argparse
import json
import logging
import os
import pathlib
import platform
import re
import subprocess
import sys
import textwrap

import requests

try:
    import apt_pkg as apt

    apt.init()
    APT_CACHE = apt.Cache(None)
except ImportError:
    APT_CACHE = None

try:
    import rpm

    RPM_TS = rpm.TransactionSet()
except ImportError:
    RPM_TS = None

LOGGER: logging.Logger = logging.getLogger(__name__)

MDM_API = "https://api.mdm.prod.ias.inovex.io/inventory"
MDM_API_VERSION = "1.0"

SYSTEM_DISK_DEVICE = "MDM_SYSTEM_DISK_DEVICE"
SYSTEM_DISK_DEVICE_DEFAULT = "/dev/nvme0n1"
PRODUCT_FAMILY_FILE = "MDM_SYSTEM_PRODUCT_FAMILY_FILE"
PRODUCT_FAMILY_FILE_DEFAULT = "/sys/devices/virtual/dmi/id/product_family"
PRODUCT_NAME_FILE = "MDM_SYSTEM_PRODUCT_NAME_FILE"
PRODUCT_NAME_FILE_DEFAULT = "/sys/devices/virtual/dmi/id/product_name"
BIOS_VERSION_FILE = "MDM_SYSTEM_BIOS_VERSION_FILE"
BIOS_VERSION_FILE_DEFAULT = "/sys/devices/virtual/dmi/id/bios_version"
FIRMWARE_RELEASE_FILE = "MDM_SYSTEM_EC_FIRMWARE_RELEASE_FILE"
FIRMWARE_RELEASE_FILE_DEFAULT = "/sys/devices/virtual/dmi/id/ec_firmware_release"
PRODUCT_SERIAL_FILE = "MDM_SYSTEM_PRODUCT_SERIAL_FILE"
PRODUCT_SERIAL_FILE_DEFAULT = "/sys/devices/virtual/dmi/id/product_serial"
PASSWORD_PAM_FILE = "MDM_PASSWORD_PAM_FILE"
PASSWORD_PAM_FILE_DEFAULT = "/etc/pam.d/common-password"
PASSWORD_MIN_LENGTH = "MDM_PASSWORD_MIN_LENGTH"
SCREEN_LOCK_TIMEOUT = "MDM_SCREEN_LOCK_TIMEOUT"
PACKAGES_LIST_FILE = "MDM_PACKAGES_LIST_FILE"


def run_command(command: list[str]) -> subprocess.CompletedProcess[bytes]:
    try:
        result = subprocess.run(command, capture_output=True, check=True)
        return result
    except Exception as e:
        LOGGER.error("%s", e)
        sys.exit(1)


def check_for_crypto_luks(children: list[dict] | None) -> str | None:
    if children:
        c = children[0]
        if (fstype := c.get("fstype")) and fstype == "crypto_LUKS":
            return fstype
        return check_for_crypto_luks(c.get("children"))
    return None


def get_mountpoints():
    lsblk_result = run_command(
        [
            "/run/current-system/sw/bin/lsblk",
            "--inverse",
            "--tree",
            "-o",
            "FSTYPE,NAME,MOUNTPOINTS",
            "--exclude",
            "7",
            "--json",
        ]
    )
    lsblk_json: dict[str, list[dict]] = json.loads(lsblk_result.stdout)
    result: list[dict[str, str | None]] = []
    for block in lsblk_json.get("blockdevices", []):
        for mountpoint in block.get('mountpoints'):
            if mountpoint:
                result.append(
                    {
                        "name": block.get("name"),
                        "mountpoint": mountpoint,
                        "fstype": block.get("fstype"),
                        "crypt_type": check_for_crypto_luks(block.get("children")),
                    }
                )
    return result


def get_os_info() -> dict[str, str]:
    try:
        os_platform = platform.freedesktop_os_release()
        result = {
            "distributor_id": os_platform.get("ID"),
            "description": os_platform.get("PRETTY_NAME"),
            "release": os_platform.get("VERSION_ID", "n/a"),
            "codename": os_platform.get("VERSION_CODENAME", "n/a"),
        }
        return result
    except Exception as e:
        LOGGER.error("%s", e)
        sys.exit(1)


def get_apt_package_list() -> list[dict[str, str]]:
    result = []
    if APT_CACHE:
        for pkg in [p for p in APT_CACHE.packages if p.current_ver]:
            result.append(
                {
                    "name": pkg.get_fullname(True),
                    "version": str(pkg.current_ver.ver_str),
                    "package_manager": "apt",
                }
            )
    else:
        LOGGER.debug("skip apt package list, 'python3-apt' module not found")
    return result


def get_rpm_package_list() -> list[dict[str, str]]:
    result = []
    if RPM_TS:
        for pkg in RPM_TS.dbMatch():
            result.append(
                {
                    "name": pkg["name"],
                    "version": f"{pkg['version']}-{pkg['release']}",
                    "package_manager": "rpm",
                }
            )
    else:
        LOGGER.debug("skip rpm package list, 'python3-rpm' module not available")
    return result


def run_package_manager(command: list[str], pkg_mgr: str) -> str:
    try:
        return subprocess.check_output(command)
    except FileNotFoundError as e:
        LOGGER.debug("skip %s package list, '%s' command not found", pkg_mgr, command[0])
        return b""
    except Exception as e:
        LOGGER.error("%s", e)
        sys.exit(1)


def get_package_list_from_command(command: list[str], pkg_mgr: str, start_line: int = 0) -> list[dict[str, str]]:
    output = run_package_manager(command, pkg_mgr)

    result = []
    for line in output.decode().splitlines()[start_line:]:
        package_version = re.split(r'\s+', line)
        result.append({
            "name": package_version[0],
            "version": package_version[1],
            "package_manager": pkg_mgr
        })
    return result


def parse_package_list(package_list_file: str | None) -> list[dict[str, str]]:
    result: list[dict[str, str]] = []
    if package_list_file:
        try:
            package_list = pathlib.Path(package_list_file).read_text().splitlines()
        except Exception as e:
            LOGGER.error("%s", e)
            sys.exit(1)
        for package in package_list:
            package_version = package.split(" ")
            result.append({
                "name": package_version[0],
                "version": package_version[1],
                "package_manager": package_version[2]
            })
        return result

    result += get_apt_package_list()
    result += get_package_list_from_command(["snap", "list"], "snap", 1)
    result += get_rpm_package_list()
    result += get_package_list_from_command(["flatpak", "list", "--columns=application,version,branch"], "flatpak")
    result += get_package_list_from_command(["pacman", "-Q"], "pacman")

    if result:
        return sorted(result, key=lambda package: package["name"])

    LOGGER.error("No package list found. Use %s environment variable", PACKAGES_LIST_FILE)
    sys.exit(1)


def read_file_content(filename: str) -> str:
    try:
        return pathlib.Path(filename).read_text(encoding="utf8").strip()
    except Exception as e:
        LOGGER.error("%s", e)
        sys.exit(1)


def get_screen_lock_timeout() -> int:
    lock_timeout = os.getenv(SCREEN_LOCK_TIMEOUT)
    if lock_timeout:
        try:
            return int(lock_timeout)
        except Exception as ex:
            LOGGER.error("Failed to parse screen timeout: %s", str(ex))
            sys.exit(1)

    LOGGER.error("No screen lock timeout in %s environment variable", SCREEN_LOCK_TIMEOUT)
    sys.exit(1)


def get_password_min_length(pam_file: str) -> int:
    min_length = os.getenv(PASSWORD_MIN_LENGTH)
    if not min_length:
        grep_result = run_command(
            [
                "/run/current-system/sw/bin/grep",
                "-oP",
                "^password.*pam_(unix|pwquality)\\.so.* minlen=\\K\\d+",
                pam_file,
            ]
        )
        min_length = grep_result.stdout
    try:
        return int(min_length)
    except Exception as ex:
        LOGGER.error("Failed to parse minimum password length: %s", str(ex))
        sys.exit(1)


def get_disk_serial(device: str) -> str:
    lsblk_result = run_command(
        [
            "/run/current-system/sw/bin/lsblk",
            "--nodeps",
            "-no",
            "serial",
            device,
        ]
    )
    disk_serial = lsblk_result.stdout.decode().replace("\n", "")
    try:
        return disk_serial
    except Exception as ex:
        LOGGER.error("Failed to get disk serial: %s", str(ex))
        sys.exit(1)


def build_inventory() -> dict[str, list | dict | str]:
    return {
        "system": {
            "bios_version": read_file_content(
                os.environ.get(BIOS_VERSION_FILE, BIOS_VERSION_FILE_DEFAULT)
            ),
            "disk_serial": get_disk_serial(
                os.environ.get(SYSTEM_DISK_DEVICE, SYSTEM_DISK_DEVICE_DEFAULT)
            ),
            "ec_firmware_release": read_file_content(
                os.environ.get(FIRMWARE_RELEASE_FILE, FIRMWARE_RELEASE_FILE_DEFAULT)
            ),
            "product_family": read_file_content(
                os.environ.get(PRODUCT_FAMILY_FILE, PRODUCT_FAMILY_FILE_DEFAULT)
            ),
            "product_name": read_file_content(
                os.environ.get(PRODUCT_NAME_FILE, PRODUCT_NAME_FILE_DEFAULT)
            ),
            "product_serial": read_file_content(
                os.environ.get(PRODUCT_SERIAL_FILE, PRODUCT_SERIAL_FILE_DEFAULT)
            ),
        },
        "os": get_os_info(),
        "password": {
            "min_length": get_password_min_length(
                os.environ.get(PASSWORD_PAM_FILE, PASSWORD_PAM_FILE_DEFAULT)
            ),
        },
        "screen": {
            "lock_timeout": get_screen_lock_timeout(),
        },
        "mountpoints": get_mountpoints(),
        "packages": parse_package_list(os.environ.get(PACKAGES_LIST_FILE, "")),
    }


def validate_mdm_token(file_path: str) -> str:
    if not os.path.isabs(file_path):
        LOGGER.debug("No absolute path %s, converting to absolute path", file_path)
        if file_path.startswith("~"):
            file_path = os.path.expanduser(file_path)
        else:
            file_path = str(pathlib.Path(file_path).resolve())
    try:
        LOGGER.debug("Reading token from %s", file_path)
        with open(file_path, "r", encoding="utf8") as token:
            return token.readline().strip()
    except Exception as ex:
        LOGGER.error("Failed to read mdm token from %s: %s", file_path, str(ex))
        sys.exit(1)


def show_inventory() -> None:
    print(json.dumps(build_inventory(), indent=2))


def get_inventory(args: argparse.Namespace) -> None:
    LOGGER.info("Fetching inventory from mdm")
    token = validate_mdm_token(args.tokenfile)
    response: requests.Response = requests.get(
        MDM_API,
        headers={
            "Authorization": f"Bearer {token}",
            "X-Api-Version": MDM_API_VERSION,
        },
        timeout=10,
    )
    if response.ok:
        print(json.dumps(response.json(), indent=2))
    else:
        LOGGER.error(
            "Failed to fetch inventory from mdm api. Status code %d, %s",
            response.status_code,
            response.content,
        )
        sys.exit(1)


def post_inventory(args: argparse.Namespace) -> None:
    inventory = build_inventory()
    token = validate_mdm_token(args.tokenfile)
    response: requests.Response = requests.post(
        MDM_API,
        json=inventory,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
            "X-Api-Version": MDM_API_VERSION,
        },
        timeout=10,
    )
    if response.ok:
        LOGGER.info("Published inventory to mdm api")
    else:
        LOGGER.error(
            "Failed to publish inventory to mdm api, Status code %d, %s",
            response.status_code,
            response.content,
        )


def formatter(prog: str) -> argparse.HelpFormatter:
    return argparse.RawDescriptionHelpFormatter(prog=prog, max_help_position=50)


def configure_logger(args: argparse.Namespace) -> None:
    logging.basicConfig(
        format="%(levelname)s: %(message)s",
        level=args.log_level.upper(),
        handlers=[
            logging.StreamHandler(sys.stderr),
        ],
    )


def main():
    parser = argparse.ArgumentParser(
        prog="MDM inventory reader",
        description=textwrap.dedent(
            f"""\
            Script to show, send and receive the MDM inventory data for Linux.

            The following environment variables can be set to override some values/files to read from:
            {SYSTEM_DISK_DEVICE:<48} defaults to {SYSTEM_DISK_DEVICE_DEFAULT}
            {PRODUCT_FAMILY_FILE:<48} defaults to {PRODUCT_FAMILY_FILE_DEFAULT}
            {PRODUCT_NAME_FILE:<48} defaults to {PRODUCT_NAME_FILE_DEFAULT}
            {PRODUCT_SERIAL_FILE:<48} defaults to {PRODUCT_SERIAL_FILE_DEFAULT}
            {BIOS_VERSION_FILE:<48} defaults to {BIOS_VERSION_FILE_DEFAULT}
            {FIRMWARE_RELEASE_FILE:<48} defaults to {FIRMWARE_RELEASE_FILE_DEFAULT}
            {PASSWORD_PAM_FILE:<48} defaults to {PASSWORD_PAM_FILE_DEFAULT}
            {PASSWORD_MIN_LENGTH:<48} this variable should only be used if no pam file is used to
                                                             define the password min length. The value should only be passed
                                                             as a computed value to the environment variable
            {SCREEN_LOCK_TIMEOUT}
            {PACKAGES_LIST_FILE}
            """
        ),
        add_help=True,
        allow_abbrev=False,
        formatter_class=formatter,
        usage=argparse.SUPPRESS,
    )
    parser.add_argument(
        "--show", help="Show data to be sent to the MDM API", action="store_true"
    )
    parser.add_argument(
        "--get",
        help="Get inventory data store on the MDM backend",
        action="store_true",
    )
    parser.add_argument("--put", help="Sent data to the MDM API", action="store_true")
    parser.add_argument(
        "--token-file",
        type=str,
        dest="tokenfile",
        help="The path to the file to read the mdm token from. Defaults to ~/.config/inovex-mdm-inventory/token",
        default="~/.config/inovex-mdm-inventory/token",
    )
    parser.add_argument(
        "--log-level",
        help="Define the loglevel for the output",
        dest="log_level",
        type=str,
        choices=["debug", "info", "warning", "warn", "error", "fatal", "critical"],
        default="info",
    )

    try:
        args = parser.parse_args()
        configure_logger(args)
        if args.show:
            show_inventory()
        elif args.get:
            get_inventory(args)
        elif args.put:
            post_inventory(args)
        else:
            LOGGER.info("No valid command to execute provided")
            sys.exit(1)
    except BrokenPipeError:
        devnull = os.open(os.devnull, os.O_WRONLY)
        os.dup2(devnull, sys.stdout.fileno())
        sys.exit(1)


if __name__ == "__main__":
    main()
