# Malina

pi [Jente Hidskes' website - A purpose-built Linux OS for my Raspberry Pi 3B+ home automation system](https://www.hjdskes.nl/projects/rpi-linux/)
pi [RPI](http://libgen.rs/search.php?%26req%3Draspberry%2Bpi%26phrase%3D1%26view%3Dsimple%26column%3Ddef%26sort%3Dyear%26sortmode%3DDESC)
pi [https://forums.raspberrypi.com/viewtopic.php?t=312104](https://forums.raspberrypi.com/viewtopic.php?t%3D312104) Definitive guide to configure extremely lightweight GUI with Raspbian Lite + Openbox. - Raspberry Pi Forums

1) Raspberry Pi OS
 install
 install Nix
 run nebokrai flake (with poetry2nix preferWheels = true;)
 look into differences with regular iso to understand why changes are automatically written to the SD card
2) Raspberry Pi OS Lite
 read https://downloads.raspberrypi.com/raspios_lite_arm64/release_notes.txt


2) Alpine Server (no DE)
 read: https://github.com/garrym/raspberry-pi-alpine

* https://blog.svedr.in/posts/how-to-run-an-arm-vm-on-a-x86-host/

→ https://duckduckgo.com/?q=run+arm64+vm&ia=web
* https://www.graalvm.org/latest/reference-manual/native-image/
* https://graalvm.github.io/native-build-tools/latest/gradle-plugin.html
* https://www.graalvm.org/22.0/reference-manual/native-image/ARM64/
* https://bell-sw.com/blog/static-images-with-liberica-native-image-kit/
* https://bell-sw.com/announcements/2021/10/22/the-new-liberica-native-image-kit-21-3-based-on-liberica-17-and-11-is-out/
* https://bell-sw.com/blog/static-images-with-liberica-native-image-kit/
* https://hub.docker.com/r/bellsoft/liberica-openjdk-alpine-musl
* https://stmxcsr.com/micro/raspberry-signal-client.html
* https://github.com/bell-sw/Liberica/blob/master/docker/repos/liberica-openjre-alpine/17/Dockerfile
* https://www.docker.com/blog/multi-arch-images/
* https://stmxcsr.com/micro/raspberry-signal-client.html
* https://github.com/lwesterhof/semaphore
* https://signald.org/  https://gitlab.com/signald/signald
* https://erlangen-sheppy.medium.com/setting-up-signal-cli-on-linux-7831b27c0790
* https://github.com/Sidneys1/signal-bot


* https://github.com/boxdot/gurk-rs
* https://github.com/signalapp/libsignal
* https://github.com/whisperfish/libsignal-service-rs
* https://github.com/whisperfish/presage/
* https://rust-lang.github.io/rustup/cross-compilation.html



3) Alpine Sigma OS
 fork repo:  https://github.com/rdbo/sigma-linux
 read https://jensd.be/1126/linux/cross-compiling-for-arm-or-aarch64-on-debian-or-ubuntu
 create appropriate container
 adapt build script for cross-compilation inside Alpine Docker container
 make changes needed to run on SD card (see Alpine Server)
 try build


4) NixOS Pi
 read https://github.com/nix-community/nixos-generators *****
 read https://discourse.nixos.org/t/nixos-image-for-raspberry-pi-3b-armv7/18430
 read https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html
 read (slightly outdated) https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi
 read https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_3
 read https://myme.no/posts/2022-12-01-nixos-on-raspberrypi.html
 read https://github.com/lucernae/nixos-pi
 read https://discourse.nixos.org/t/raspberry-pi-3-documentation/11426/3 & follow links
 read https://www.eisfunke.com/posts/2023/nixos-on-raspberry-pi.html
 read https://github.com/zupo/nix (maybe best)
 read https://stianlagstad.no/2022/11/how-to-install-nixos-on-a-raspberry-pi-3b/ (looks really good)
 read https://citizen428.net/blog/installing-nixos-raspberry-pi-3/
 read https://www.reddit.com/r/NixOS/comments/kk0zfu/help_installing_on_a_raspberry_pi_3b/
 read https://discourse.nixos.org/t/boot-config-txt-related-questions-for-raspberry-pi/3650/2
 read https://discourse.nixos.org/t/problems-booting-on-raspberry-pi-3b/24952
 read https://mtlynch.io/nixos-pi4/
 read https://labs.quansight.org/blog/2020/07/nixos-rpi-wifi-router



5) TinyCore RPI
 read http://tinycorelinux.net/9.x/armv6/releases/RPi/README
