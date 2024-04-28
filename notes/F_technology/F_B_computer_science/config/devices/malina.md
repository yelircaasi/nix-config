# Malina

* [Jente Hidskes' website - A purpose-built Linux OS for my Raspberry Pi 3B+ home automation system](https://www.hjdskes.nl/projects/rpi-linux/)
* [RPI](http://libgen.rs/search.php?%26req%3Draspberry%2Bpi%26phrase%3D1%26view%3Dsimple%26column%3Ddef%26sort%3Dyear%26sortmode%3DDESC)
* [forums.raspberrypi.com/viewtopic.php?t=312104](https://forums.raspberrypi.com/viewtopic.php?t%3D312104) Definitive guide to configure extremely lightweight GUI with Raspbian Lite + Openbox. - Raspberry Pi Forums

## 1) Raspberry Pi OS

* install
* install Nix
* run nebokrai flake (with poetry2nix preferWheels = true;)
* look into differences with regular iso to understand why changes are automatically written to the SD card

## 2) Raspberry Pi OS Lite

* read [downloads.raspberrypi.com/raspios_lite_arm64/release_notes.txt](https://downloads.raspberrypi.com/raspios_lite_arm64/release_notes.txt)
* 2) Alpine Server (no DE)
* read: [garrym/raspberry-pi-alpine](https://github.com/garrym/raspberry-pi-alpine)
* [blog.svedr.in/posts/how-to-run-an-arm-vm-on-a-x86-host/](https://blog.svedr.in/posts/how-to-run-an-arm-vm-on-a-x86-host/)
* → [duckduckgo.com/?q=run+arm64+vm&ia=web](https://duckduckgo.com/?q=run+arm64+vm&ia=web)
* [graalvm.org/latest/reference-manual/native-image/](https://www.graalvm.org/latest/reference-manual/native-image/)
* [graalvm.github.io/native-build-tools/latest/gradle-plugin.html](https://graalvm.github.io/native-build-tools/latest/gradle-plugin.html)
* [graalvm.org/22.0/reference-manual/native-image/ARM64/](https://www.graalvm.org/22.0/reference-manual/native-image/ARM64/)
* [bell-sw.com/blog/static-images-with-liberica-native-image-kit/](https://bell-sw.com/blog/static-images-with-liberica-native-image-kit/)
* [liberica native image kit](https://bell-sw.com/announcements/2021/10/22/the-new-liberica-native-image-kit-21-3-based-on-liberica-17-and-11-is-out/)
* [bell-sw.com/blog/static-images-with-liberica-native-image-kit/](https://bell-sw.com/blog/static-images-with-liberica-native-image-kit/)
* [hub.docker.com/r/bellsoft/liberica-openjdk-alpine-musl](https://hub.docker.com/r/bellsoft/liberica-openjdk-alpine-musl)
* [stmxcsr.com/micro/raspberry-signal-client.html](https://stmxcsr.com/micro/raspberry-signal-client.html)
* [bell-sw/Liberica/blob/master/docker/repos/liberica-openjre-alpine/17/Dockerfile](https://github.com/bell-sw/Liberica/blob/master/docker/repos/liberica-openjre-alpine/17/Dockerfile)
* [docker.com/blog/multi-arch-images/](https://www.docker.com/blog/multi-arch-images/)
* [stmxcsr.com/micro/raspberry-signal-client.html](https://stmxcsr.com/micro/raspberry-signal-client.html)
* [lwesterhof/semaphore](https://github.com/lwesterhof/semaphore)
* [signald.org/](https://signald.org/)  [gitlab.com/signald/signald](https://gitlab.com/signald/signald)
* [erlangen-sheppy.medium.com/setting-up-signal-cli-on-linux-7831b27c0790](https://erlangen-sheppy.medium.com/setting-up-signal-cli-on-linux-7831b27c0790)
* [Sidneys1/signal-bot](https://github.com/Sidneys1/signal-bot)
* [boxdot/gurk-rs](https://github.com/boxdot/gurk-rs)
* [signalapp/libsignal](https://github.com/signalapp/libsignal)
* [whisperfish/libsignal-service-rs](https://github.com/whisperfish/libsignal-service-rs)
* [whisperfish/presage/](https://github.com/whisperfish/presage/)
* [rust-lang.github.io/rustup/cross-compilation.html](https://rust-lang.github.io/rustup/cross-compilation.html)

## 3) Alpine Sigma OS

* fork repo:  [rdbo/sigma-linux](https://github.com/rdbo/sigma-linux)
* read [jensd.be/1126/linux/cross-compiling-for-arm-or-aarch64-on-debian-or-ubuntu](https://jensd.be/1126/linux/cross-compiling-for-arm-or-aarch64-on-debian-or-ubuntu)
* create appropriate container
* adapt build script for cross-compilation inside Alpine Docker container
* make changes needed to run on SD card (see Alpine Server)
* try build

## 4) NixOS Pi

* read [nix-community/nixos-generators](https://github.com/nix-community/nixos-generators) 
* read [discourse.nixos.org/t/nixos-image-for-raspberry-pi-3b-armv7/18430](https://discourse.nixos.org/t/nixos-image-for-raspberry-pi-3b-armv7/18430)
* read [nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html)
* read (slightly outdated) [nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi)
* read [nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_3](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_3)
* read [myme.no/posts/2022-12-01-nixos-on-raspberrypi.html](https://myme.no/posts/2022-12-01-nixos-on-raspberrypi.html)
* read [lucernae/nixos-pi](https://github.com/lucernae/nixos-pi)
* read [discourse.nixos.org/t/raspberry-pi-3-documentation/11426/3](https://discourse.nixos.org/t/raspberry-pi-3-documentation/11426/3) & follow links
* read [eisfunke.com/posts/2023/nixos-on-raspberry-pi.html](https://www.eisfunke.com/posts/2023/nixos-on-raspberry-pi.html)
* read [zupo/nix](https://github.com/zupo/nix) (maybe best)
* read [stianlagstad.no/2022/11/how-to-install-nixos-on-a-raspberry-pi-3b/](https://stianlagstad.no/2022/11/how-to-install-nixos-on-a-raspberry-pi-3b/) (looks really good)
* read [citizen428.net/blog/installing-nixos-raspberry-pi-3/](https://citizen428.net/blog/installing-nixos-raspberry-pi-3/)
* read [r/NixOS/comments/kk0zfu/help_installing_on_a_raspberry_pi_3b/](https://www.reddit.com/r/NixOS/comments/kk0zfu/help_installing_on_a_raspberry_pi_3b/)
* read [discourse.nixos.org/t/boot-config-txt-related-questions-for-raspberry-pi/3650/2](https://discourse.nixos.org/t/boot-config-txt-related-questions-for-raspberry-pi/3650/2)
* read [discourse.nixos.org/t/problems-booting-on-raspberry-pi-3b/24952](https://discourse.nixos.org/t/problems-booting-on-raspberry-pi-3b/24952)
* read [mtlynch.io/nixos-pi4/](https://mtlynch.io/nixos-pi4/)
* read [labs.quansight.org/blog/2020/07/nixos-rpi-wifi-router](https://labs.quansight.org/blog/2020/07/nixos-rpi-wifi-router)

## 5) TinyCore RPI

 read [tinycorelinux.net/9.x/armv6/releases/RPi/README](http://tinycorelinux.net/9.x/armv6/releases/RPi/README)
