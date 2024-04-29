# Hank

## Latest

* Hank Ubuntu server (v2): install docker in install

```sh
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub [flathub.org/repo/flathub.flatpakrepo](https://flathub.org/repo/flathub.flatpakrepo)
flatpak install org.wezfurlong.wezterm
sudo apt install landscape-client
sudo landscape-config --computer-title "Isaac stellaris 15" --account-name standalone -p SpeakFriendAndEnter --url [landscape.knecon.com/message-system](https://landscape.knecon.com/message-system) --ping-url [landscape.knecon.com/ping](http://landscape.knecon.com/ping)

# [teams.microsoft.com/l/message/19:0e375ad9-64aa-488b-bde0-9d643d768f57_5ae9b4e0-d8c6-47f1-ac08-c5cd013ac891@unq.gbl.spaces/1712647904617?context=%7B%22contextType%22%3A%22chat%22%7D](https://teams.microsoft.com/l/message/19:0e375ad9-64aa-488b-bde0-9d643d768f57_5ae9b4e0-d8c6-47f1-ac08-c5cd013ac891@unq.gbl.spaces/1712647904617?context=%7B%22contextType%22%3A%22chat%22%7D)

sudo apt install nala
sudo nala update -y && sudo nala upgrade -y
sudo ubuntu-drivers install
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=""/GRUB_CMDLINE_LINUX_DEFAULT="nvidia_drm.modeset=1"/g'
sudo update-grub # sudo apt-install nvidia-driver-535

sudo reboot
sudo nala install -y build-essential \
     cmake \
     cmake-extras \
     fontconfig \
     gettext \
     gettext-base \
     glslang-tools \
     hwdata \
     libavcodec-dev \
     libavformat-dev \
     libavutil-dev \
     libdrm-dev \
     libegl-dev \
     libegl1-mesa-dev \
     libffi-dev \
     libfontconfig-dev \
     libgbm-dev \
     libgles2 \
     libgulkan-dev \
     libinput-bin \
     libinput-dev \
     libliftoff-dev \
     libpango1.0-dev \
     libpixman-1-dev \
     librsvg \
     librsvg2-dev \
     libseat-dev \
     libtomlplusplus-dev \
     libtomlplusplus3 \
     libudev-dev \
     libvkfft-dev \
     libvulkan-dev \
     libvulkan-volk-dev \
     libxcb-composite0-dev \
     libxcb-dri3-dev \
     libxcb-ewmh-dev \
     libxcb-ewmh2 \
     libxcb-icccm4-dev \
     libxcb-present-dev \
     libxcb-render-util0-dev \
     libxcb-res0-dev \
     libxcb-util-dev \
     libxcb-xinput-dev \
     libxkbcommon-dev \
     libxkbcommon-x11-dev \
     libxkbregistry-dev \
     libxml2-dev \
     libzip-dev \
     meson \
     ninja-build \
     seatd \
     vulkan-validationlayers-dev \
     wget \
     xdg-desktop-portal-wlr \
     xwayland
mkdir HyprSource
cd HyprSource

## get Source

wget [gitlab.freedesktop.org/mesa/drm/-/archive/libdrm-2.4.120/drm-libdrm-2.4.120.tar.gz](https://gitlab.freedesktop.org/mesa/drm/-/archive/libdrm-2.4.120/drm-libdrm-2.4.120.tar.gz)
tar -xzf drm-libdrm-2.4.120.tar.gz
wget [hyprwm/Hyprland/releases/download/v0.39.1/source-v0.39.1.tar.gz](https://github.com/hyprwm/Hyprland/releases/download/v0.39.1/source-v0.39.1.tar.gz)
tar -xvf source-v0.39.1.tar.gz && mv source-v0.39.1 hyprland-source
wget [hyprwm/hyprlang/archive/refs/tags/v0.5.1.tar.gz](https://github.com/hyprwm/hyprlang/archive/refs/tags/v0.5.1.tar.gz)
tar -xvf v0.5.1.tar.gz && mv v0.5.1 hyprlang-source
wget [hyprwm/hyprcursor/archive/refs/tags/v0.1.7.tar.gz](https://github.com/hyprwm/hyprcursor/archive/refs/tags/v0.1.7.tar.gz)
tar -xvf v0.1.7.tar.gz && mv v0.1.7 hyprlang-source
wget [gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/1.35/downloads/wayland-protocols-1.35.tar.xz](https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/1.35/downloads/wayland-protocols-1.35.tar.xz)
tar -xvJf wayland-protocols-1.35.tar.xz
wget [gitlab.freedesktop.org/wayland/wayland/-/releases/1.22.0/downloads/wayland-1.22.0.tar.xz](https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.22.0/downloads/wayland-1.22.0.tar.xz)
tar -xzvJf wayland-1.22.0.tar.xz
wget [gitlab.freedesktop.org/emersion/libdisplay-info/-/releases/0.1.1/downloads/libdisplay-info-0.1.1.tar.xz](https://gitlab.freedesktop.org/emersion/libdisplay-info/-/releases/0.1.1/downloads/libdisplay-info-0.1.1.tar.xz)
tar -xvJf libdisplay-info-0.1.1.tar.xz

# build libdrm

cd drm-libdrm-2.4.120 && meson builddir/ && sudo ninja -C builddir/ install

# build wayland

cd wayland-1.22.0 && mkdir build && cd build && meson setup .. --prefix=/usr --buildtype=release -Ddocumentation=false && ninja
sudo ninja install
cd ../..

# bulild wayland-protocols

cd wayland-protocols-1.35 && mkdir build && cd build && meson setup --prefix=/usr --buildtype=release && ninja
sudo ninja install
cd ../..

# build libdisplay-info

cd libdisplay-info-0.1.1/ && mkdir build && cd build && meson setup --prefix=/usr --buildtype=release && ninja
sudo ninja install
cd ../..

# build hyprcursor

cd hyprcursor-source
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
cmake --build ./build --config Release --target all -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
sudo cmake --install build
cd ..

# build hyprlang

cd cd hyprlang-source
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
cmake --build ./build --config Release --target hyprlang -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
cmake --install ./build
cd ..

# build Hyprland

chmod a+rw hyprland-source
cd hyprland-source/
make all
sudo make install
sudo nala install kitty
flatpak install org.mozilla.firefox
flatpak install org.wezfurlong.wezterm
* curl -fsSL [apt.fury.io/wez/gpg.key](https://apt.fury.io/wez/gpg.key) | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] [apt.fury.io/wez/](https://apt.fury.io/wez/) * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo nala update
sudo nala install wezterm

```
* Next steps:
* [ ] write full install script from [wiki.hyprland.org/Getting-Started/Installation/](https://wiki.hyprland.org/Getting-Started/Installation/)
* [ ] add Nvidia fixes to script using sed, from [here](https://gist.github.com/Vertecedoc4545/07a9624924ac3e03ff0ab2d5e3616955#file-nvidia-partching-hyprland-ubuntu-md) and [here](https://gist.github.com/Vertecedoc4545/6e54487f07a1888b656b656c0cdd9764)
* [ ] look into wezterm bug
* [wezfurlong.org/wezterm/troubleshooting.html](https://wezfurlong.org/wezterm/troubleshooting.html)
* [wezfurlong.org/wezterm/config/lua/config/enable_wayland.html](https://wezfurlong.org/wezterm/config/lua/config/enable_wayland.html)
* [wez/wezterm/issues/5103](https://github.com/wez/wezterm/issues/5103)
* [wez/wezterm/issues/5228](https://github.com/wez/wezterm/issues/5228)
* [r/hyprland/comments/1c38y11/wezterm_not_working_in_native_wayland_mode/](https://www.reddit.com/r/hyprland/comments/1c38y11/wezterm_not_working_in_native_wayland_mode/)
* [r/archlinux/comments/18rf5t1/psa_on_hyprland_wezterm_will_not_start_anymore/](https://www.reddit.com/r/archlinux/comments/18rf5t1/psa_on_hyprland_wezterm_will_not_start_anymore/)
* [r/hyprland/comments/1auqy8b/wezterm_not_open_anymore/](https://www.reddit.com/r/hyprland/comments/1auqy8b/wezterm_not_open_anymore/)
* [wez/wezterm/issues/4672](https://github.com/wez/wezterm/issues/4672)
* [gist.github.com/Vertecedoc4545/3b077301299c20c5b9b4db00f4ca6000](https://gist.github.com/Vertecedoc4545/3b077301299c20c5b9b4db00f4ca6000)
* [jakoolit](https://github.com/JaKooLit/Debian-Hyprland)
  -> [JaKooLit/Debian-Hyprland/tree/main/install-scripts](https://github.com/JaKooLit/Debian-Hyprland/tree/main/install-scripts)

## Old

Vision:
* Questions:

 Does flatpak’s nvidia driver work ootb without system drivers?
 Can I install NixOS with full disk encryption? wiki
* Roadmap

 look into building [canonical/landscape-client](https://github.com/canonical/landscape-client) on Debian and (especially) NixOS → [nix-community/nix-installers](https://github.com/nix-community/nix-installers)
 Read: [gist.github.com/clample/e3c51bf8026098fded9628d3e0ee7967](https://gist.github.com/clample/e3c51bf8026098fded9628d3e0ee7967)
 port all configs to home-manager
 manage all secrets and passwords with sops-nix as well
 create triple boot: 100G NixOS, 100G Ubuntu Server 23.10 Wayland, 800G Ubuntu Server 22.04 X11
 first garbage-collect system to free up space for
* Generations:
* Ubuntu server + i3
* Debian server + i3
* Debian server + sway
* Debian server + hyprland
* NixOS + i3
* NixOS + sway
* NixOS + Hyprland
* [dbnicholson/deb-ostree-builder](https://github.com/dbnicholson/deb-ostree-builder) → ?
```sh
sudo apt install
sudo apt update && sudo apt upgrade

# sudo apt install spice-vdagent spice-webdavd

sudo apt install --no-install-recommends lightdm-gtk-greeter
sudo apt install --no-install-recommends lightdm
sudo apt install --no-install-recommends xorg xinit
sudo dpkg-reconfigure lightdm

/usr/lib/apt/apt-helper download-file [debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb](https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb) keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb
echo "deb [debian.sur5r.net/i3/](http://debian.sur5r.net/i3/) $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3
sudo apt install picom
echo "exec i3" >> ~/.xinitrc
reboot
sudo vim /etc/netplan/00-installer-config-wifi.yaml

'
# This is the network config written by "subiquity"

#network:

# version: 2

# wifis: {}

* network:
  version: 2
  wifis:* wlp4s0:*   optional: true*   access-points:*     HappyWifiHappyLifi:*       password: Tairnbach2021!*   dhcp4: true

'
sudo netplan apply
sh <(curl -L [nixos.org/nix/install)](https://nixos.org/nix/install)) --no-daemon
* nix-env -iA nixpkgs.neovim
* nix-env -iA nixpkgs.zsh
* command -v zsh | sudo tee -a /etc/shells
* chsh -s $(which zsh)

# requires reboot

sudo apt install nvidia-driver-530
nix-channel --add [guibou/nixGL/archive/main.tar.gz](https://github.com/guibou/nixGL/archive/main.tar.gz) nixgl && nix-channel --update
nix-env -iA nixgl.auto.nixGLDefault
nix-env install -iA nixpkgs.wezterm

# NIXGL GENERALLY WORKING, BUT NOT WITH WEZTERM, ALACRITTY, AND KITTY -> DEBUG

sudo apt install kitty wezterm
sudo apt install mesa-utils
sudo apt-get install libgl1-mesa-glx libgl1-mesa-dri # attempted fix -> REMOVE?

sudo apt-get install mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev

# try driver version 510, or update nixGL to be 530 compatible

mkdir ~/pkgs && cd ~/
curl -LO [wez/wezterm/releases/download/20230408-112425-69ae8472/wezterm-20230408-112425-69ae8472.Ubuntu22.04.deb](https://github.com/wez/wezterm/releases/download/20230408-112425-69ae8472/wezterm-20230408-112425-69ae8472.Ubuntu22.04.deb)
sudo apt install -y ./wezterm-20230408-112425-69ae8472.Ubuntu22.04.deb
sudo apt install kitty
sudo add-apt-repository ppa:aslatter/ppa -y && sudo apt install alacritty
nix-env -iA nixpkgs.glxinfo

#######

sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL [download.docker.com/linux/ubuntu/gpg](https://download.docker.com/linux/ubuntu/gpg) | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] [download.docker.com/linux/ubuntu](https://download.docker.com/linux/ubuntu) \*   "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \*   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
docker run hello-world
sudo systemctl edit --force --full networking.service

#Add the following line:

#TimeoutStartSec=10sec

#(did not solve it, but I left it)

#follow instead:

#https://ubuntuforums.org/showthread.php?t=2476963

########

nix-env -iA nixpkgs.nitrogen
mkdir ~/Pictures/wallpaper
curl -o ~/Pictures/wallpaper/leaves.jpg [drive.google.com/file/d/1yNf0dBaKzl0OPSriKthrFBBRSkNePYPO](https://drive.google.com/file/d/1yNf0dBaKzl0OPSriKthrFBBRSkNePYPO)
nitrogen --set-scaled ~/Pictures/wallpaper/leaves.jpg

# add 'exec --no-startup-id nitrogen --restore' to i3 config

nix-env -iA nixpkgs.arandr

#add picture to nitrogen and create bg-saved.cfg (from #9 here, mode=0)

sudo apt install flatpak
flatpak remote-add --if-not-exists flathub [flathub.org/repo/flathub.flatpakrepo](https://flathub.org/repo/flathub.flatpakrepo)
flatpak install flathub org.mozilla.firefox

# NEED TO FIX THIS - arandr not saving file -> remove and script xrandr, bind to keystroke

# [r/i3wm/comments/ln3zd7/making_arandr_setup_permanent/](https://www.reddit.com/r/i3wm/comments/ln3zd7/making_arandr_setup_permanent/)

# -> [crivotz/dot_files/tree/master/linux](https://github.com/crivotz/dot_files/tree/master/linux)

# [crivotz/dot_files/blob/master/linux/screenlayout/autoxrandr.sh](https://github.com/crivotz/dot_files/blob/master/linux/screenlayout/autoxrandr.sh)

nix-env --uninstall arandr
nix-store --gc

# add ~/.local/bin to $PATH

nvim ~/.local/bin/twoscreen

# then add to i3 config

flatpak install flathub org.wezfurlong.wezterm

# need to resolve nix, keeping apt wezterm for comparison and debugging purposes

sudo apt instal nala
 get dual monitor setup working
 get sound working
 fix icons

#Add PipeWire repository

sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
sudo apt update

#Install PipeWire

sudo apt install pipewire pipewire-pulse
sudo apt install pipewire-audio-client-libraries
sudo apt install gstreamer1.0-pipewire libspa-0.2-bluetooth libspa-0.2-jack

#Set PipeWire as default audio daemon

systemctl --user stop pulseaudio.service pulseaudio.socket
systemctl --user disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio.service pulseaudio.socket
systemctl --user enable pipewire.socket pipewire-pulse.socket
systemctl --user start pipewire.socket pipewire-pulse.socket
sudo nala install alsa-utils
reboot

# set up media keys to work with i3

## Media volume controls

#bindsym XF86AudioMute exec amixer sset 'Master' toggle

#bindsym XF86AudioLowerVolume exec amixer sset 'Master' 5%-

#bindsym XF86AudioRaiseVolume exec amixer sset 'Master' 5%+

flatpak install flathub org.gtk.Gtk3theme.Adwaita-dark

#flatpak install flathub org.freedesktop.Platform.Icontheme.Adwaita (removed again because deprecated)

nix-env -iA nixpkgs.lxappearance

#sudo nala install dconf-editor (removed)

# not sure if this is useful or necessary

nix-env -iA nixpkgs.unzip
nix-env -iA nixpkgs.bat
nix-env --uninstall glxinfo # use later again

flatpak install flathub com.github.tchx84.Flatseal
flatpak --user override --filesystem=/home/$USER/.icons/:ro
flatpak --user override --filesystem=/usr/share/icons/:ro
flatpak install flathub org.pipewire.Helvum
sudo nala install pavucontrol
flatpak install flathub org.freeplane.App
nix-env -iA nixpkgs.treesheets
xset mouse 5
sudo timedatectl set-timezone Europe/Berlin
ssh-keygen -t ed25519 -C "Isaac Riley's Stellaris 15"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# then add to github and gitlab

flatpak install flathub com.github.Eloston.UngoogledChromium
apt update
apt install landscape-client
landscape-config -p SpeakFriendAndEnter --account-name standalone --url [landscape.knecon.com/message-system](https://landscape.knecon.com/message-system) --ping-url [landscape.knecon.com/ping](https://landscape.knecon.com/ping)

#nei xfce.thunar

#necessary?

cd /usr/share/icons/Adwaita
for size in 16x16 22x22 24x24 32x32 48x48 256x256; do (sudo mkdir -p $size/mimetypes && cd $size/mimetypes; sudo ln -vsf ../places/folder.png inode-directory.png); done

#nei krusader

#nei xfe

nei spaceFM
nei starship
nei kanata-with-cmd

# follow: [jtroo/kanata/blob/main/docs/avoid-sudo-linux.md](https://github.com/jtroo/kanata/blob/main/docs/avoid-sudo-linux.md)

flatpak install flathub org.gtk.Gtk3theme.Yaru-dark

# download from [romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)

# install fonts

# to fix icons in vscode terminal

cd ~/pkgs
wget [ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip)
mkdir -p ~/.local/share/fonts
unzip Meslo.zip -d .local/share/fonts
cd .local/share/fonts
rm *Windows*
fc-cache -fv
```

## Next Steps

* try [flathub.org/apps/org.upscayl.Upscayl](https://flathub.org/apps/org.upscayl.Upscayl)
* [flathub.org/apps/org.otfried.Ipe](https://flathub.org/apps/org.otfried.Ipe)
* [flathub.org/apps/com.github.GradienceTeam.Gradience](https://flathub.org/apps/com.github.GradienceTeam.Gradience)

## Hank - Installed

* Terminal (non-GUI)
* bash
* curl
* diffutils
* dash
* figlet
* gnupg
* grep
* gzip
* jq
* ccls
* llvm
* findutils
* make
* luarocks
* lolcat
* ncurses-bin
* openssl
* python3-pip
* ruby-dev
* pipx
* python3-venv
* python3.10-venv
* rfkill
* shim-signed
* tk-dev
* wget
* python3-tk
* xz-utils
* wpasupplicant
* mtp-tools
* GUI
* alacritty
* ungoogled-chromium
* evince
* kitty
* luakit
* qutebrowser
* qalculate-gtk
* vieb/now 10.4.0 amd64 [installed,local]
* rpi-imager
* shotwell
* wezterm
* vlc
* Other
* alsa-utils
* build-essential
* gparted
* i3/unknown,now 4.22-2~~jammy1 amd64 [installed]
* lightdm-gtk-greeter
* lightdm
* ca-certificates
* lxpolkit
* lxappearance
* picom
* pavucontrol
* pipewire-audio-client-libraries
* pipewire-pulse
* pipewire
* policykit-1-gnome
* openssh-server
* rofi
* wireless-tools
* xdotool
* sur5r-keyring
* xorg
* xinit
* xsel
* wmctrl
* wl-clipboard
* sysvinit-utils
* Core
* bsdutils
* base-files
* base-passwd
* hostname
* init
* login
* net-tools
* linux-generic
* ubuntu-minimal
* ubuntu-server-minimal
* ubuntu-server
* ubuntu-standard
* Android
* adb
* android-sdk-platform-tools-common
* GStreamer etc.
* gstreamer1.0-alsa
* gstreamer1.0-gl
* gstreamer1.0-gtk3
* gstreamer1.0-libav
* gstreamer1.0-pipewire
* gstreamer1.0-plugins-bad
* gstreamer1.0-plugins-base
* gstreamer1.0-plugins-good
* gstreamer1.0-plugins-ugly
* gstreamer1.0-pulseaudio
* gstreamer1.0-qt5
* gstreamer1.0-tools
* gstreamer1.0-x
* libgstreamer-plugins-bad1.0-dev
* libgstreamer-plugins-base1.0-dev
* libgstreamer1.0-dev
* v4l2loopback-dkms
* v4l2loopback-utils
* Container
* containerd.io
* docker-buildx-plugin
* docker-ce-cli
* docker-ce
* docker-compose-plugin
* nvidia-container-toolkit/bionic 1.13.5-1 amd64 [upgradable from: 1.13.3-1]
* Drivers
* epson-inkjet-printer-escpr/now 1.8.1-1 amd64 [installed,local]
* epson-printer-utility/now 1.1.2-1 amd64 [installed,local]
* nvidia-driver-530
* Boot
* efibootmgr
* grub-efi-amd64
* grub-efi-amd64-signed
* Package Management
* flatpak
* nala
* Landscape
* landscape-client/focal 23.10+git6308+1-0ubuntu0 amd64 [upgradable from:
* landscape-profile-standalone-calmav/now 1 all [installed,local]
* Library
* libssl-dev
* libxml2-dev
* libxmlsec1-dev
* libbz2-dev
* liblzma-dev
* libncursesw5-dev
* libreadline-dev
* libspa-0.2-bluetooth
* libspa-0.2-jack
* libsqlite3-dev
* libdebconfclient0
* libffi-dev
* libflashrom1
* libftdi1-2
* zlib1g-dev
* GL
* libgl1-mesa-dev
* libgl1-mesa-dri
* libgl1-mesa-glx
* libglu1-mesa-dev
* mesa-common-dev
* mesa-utils
* libegl1
* Nix
* cachix-1.6.1
* rustc-1.69.0
* xonsh-0.13.4
* nerdfix-0.3.1
* nixGL
* nixGLNvidia-530.41.03
* fd-8.7.0
* wego-2.1
* go-1.20.4
* neovide-0.10.4
* nodejs-18.16.0
* fzf-0.40.0
* gedit-44.2
* geany-1.38
* pyright-1.1.309
* luajit-2.1.0-2022-10-04
* lazygit-0.38.2
* ripgrep-13.0.0
* Monadoro-0.3.6.2
* pomodoro-unstable-2021-06-18
* graphviz-7.1.0
* zip-3.0
* vscode-1.78.2
* direnv-2.32.3
* baobab-44.0
* firefox-113.0.2
* exercism-3.1.0
* copier-7.0.1
* kanata-1.3.0
* zsh-5.9
* starship-1.14.2
* spacefm-1.0.6
* alacritty-0.12.0
* zathura-with-plugins-0.5.2
* rxvt-unicode-unwrapped-9.30
* kitty-0.28.1
* tree-2.0.4
* treesheets-unstable-2023-05-04
* neovim-0.9.0
* bat-0.23.0
* unzip-6.0
* wezterm-20230408-112425-69ae8472
* neofetch-unstable-2021-12-10
* arandr-0.1.10
* nitrogen-1.6.1
* github:peterldowns/nix-search-cli
* nix-2.18.1
* jira-cli-go-1.4.0
* AppImage
* Android_File_Transfer_For_Linux-9967dec-x86_64.AppImage
* ubports-installer_0.10.0_linux_x86_64.AppImage
* balenaEtcher-1.18.11-x64.AppImage
* Vieb-10.4.0.AppImage
* Flatpak
* Brave Browser
* ungoogled-chromium
* Codecs (ungoogled-chromium)
* Flatseal
* Nyxt
* FreeTube
* Impression
* Floorp Lightning
* Chromium Web Browser
* Codecs
* Freedesktop Platform
* Mesa
* Mesa (Extra)
* nvidia-530-41-03
* ffmpeg-full
* openh264
* openh264
* Freeplane
* GNOME Application Platform
* GNOME Application Platform
* GNOME Software Development
* Adwaita dark GTK theme
* Yaru-dark Gtk Theme
* KDE Application Platform
* Firefox
* Helvum
* qutebrowser
* Wez's Terminal Emulator
* vscodium (com.vscodium.codium)
* com.github.IsmaelMartinez.teams_for_linux
* Docker Images
* rabbitmq
* prom/prometheus
* kickstart: ready
* kickstart: latest
* ubuntu: 22.04
* tf2
* nvim-alpine: base
* cv-base
* pycuda
* yelircaasi/pycuda
* nlq-dev
* notion
* pybuntu: 11
* pybuntu: 10
* pybuntu: 8
* ubuntu
* pycuda: 11
* pycuda: 10
* pycuda: 8
* hello-world
* nvidia/cuda: 11.8.0-cudnn8-runtime-ubuntu22.04
* tf211
* tensorflow/tensorflow: 2.11.0-gpu
* alpine: 3.16.3
* nixos/nix
* Manual
* Nix
* pyenv
* NodeJS
* NPM
* sdkman
* Snap
* android-studio
* bare
* core
* core20
* core22
* gnome-3-38-2004
* gtk-common-themes
* lxd
* snapd
* ubports-installer

/home/isaac/miniforge3/condabin
* conda
* mamba ⇒ ../bin/mamba

/home/isaac/.pyenv/plugins/pyenv-virtualenv/shims
* activate
* deactivate

/home/isaac/.pyenv/shims
* 2to3
* 2to3-3.10
* 2to3-3.11
* 2to3-3.8
* pycache
* activate
* activate.csh
* activate.fish
* activate.nu
* activate.ps1
* activate_this.py
* bzcat
* bzcmp
* bzdiff
* bzegrep
* bzfgrep
* bzgrep
* bzip2
* bzip2recover
* bzless
* bzmore
* c_rehash
* captoinfo
* conda
* conda-content-trust
* conda-env
* cph
* deactivate
* docutils
* doesitcache
* dul-receive-pack
* dul-upload-pack
* dulwich
* f2py
* idle
* idle3
* idle3.10
* idle3.11
* idle3.8
* infotocap
* ipython
* ipython3
* jlpm
* jsonpointer
* jsonschema
* jupyter
* jupyter-console
* jupyter-dejavu
* jupyter-events
* jupyter-execute
* jupyter-kernel
* jupyter-kernelspec
* jupyter-lab
* jupyter-labextension
* jupyter-labhub
* jupyter-migrate
* jupyter-nbconvert
* jupyter-notebook
* jupyter-qtconsole
* jupyter-run
* jupyter-server
* jupyter-troubleshoot
* jupyter-trust
* keyring
* lzcat
* lzcmp
* lzdiff
* lzegrep
* lzfgrep
* lzgrep
* lzless
* lzma
* lzmadec
* lzmainfo
* lzmore
* markdown-it
* ncursesw6-config
* normalizer
* pip
* pip-3.11
* pip3
* pip3.10
* pip3.11
* pip3.8
* pkginfo
* poetry
* pybabel
* pydoc
* pydoc3
* pydoc3.10
* pydoc3.11
* pydoc3.8
* pygmentize
* pyjson5
* pypi
* pyproject-build
* python
* python-config
* python3
* python3-config
* python3.1
* python3.10
* python3.10-config
* python3.10-gdb.py
* python3.11
* python3.11-config
* python3.11-gdb.py
* python3.8
* python3.8-config
* python3.8-gdb.py
* qtpy
* rich-click
* rst2html.pyrst2html4.pyrst2html5.pyrst2latex.pyrst2man.pyrst2odt.py
* rst2odt_prepstyles.py
* rst2pseudoxml.pyrst2s5.pyrst2xetex.pyrst2xml.pyrstpep2html.py
* send2trash
* sqlite3_analyzer
* tabs
* tabulate
* tclsh
* tclsh8.6
* tic
* toe
* tqdm
* tset
* unlzma
* virtualenv
* wheel
* wheel-3.11
* wheel-filename
* wheel3
* wheel3.11
* wish
* wish8.6
* wsdump
* x86_64-conda-linux-gnu-ld
* x86_64-conda_cos7-linux-gnu-ld
* xzcmp
* xzdec

/home/isaac/.pyenv/bin
* pyenv ⇒ ../libexec/pyenv

/home/isaac/.nvm/versions/node/v21.0.0/bin
* corepack ⇒ ../lib/node_modules/corepack/dist/corepack.js
* cspell ⇒ ../lib/node_modules/cspell/bin.mjs
* cspell-esm ⇒ ../lib/node_modules/cspell/bin.mjs
* eslint_d ⇒ ../lib/node_modules/eslint_d/bin/eslint_d.js
* fd ⇒ ../lib/node_modules/fd-find/dist/fd
* medium ⇒ ../lib/node_modules/mediumcli/index.js
* neovim-node-host ⇒ ../lib/node_modules/neovim/bin/cli.js
* node
* npm ⇒ ../lib/node_modules/npm/bin/npm-cli.js
* npx ⇒ ../lib/node_modules/npm/bin/npx-cli.js
* tsc ⇒ ../lib/node_modules/typescript/bin/tsc
* tsserver ⇒ ../lib/node_modules/typescript/bin/tsserver
* vim-language-server ⇒ ../lib/node_modules/vim-language-server/bin/index.js
* yo ⇒ ../lib/node_modules/yo/lib/cli.js
* yo-complete ⇒ ../lib/node_modules/yo/lib/completion/index.js

/home/isaac/.nix-profile/bin
* acyclic ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/acyclic
* alacritty ⇒ /nix/store/gj4xiq8mqjb8qwrsxi3kl2g38lnsga0r-alacritty-0.12.0/bin/alacritty
* arandr ⇒ /nix/store/hjb6s2zjyclpbx1hshhlx06r7f8l8mvw-arandr-0.1.10/bin/arandr
* baobab ⇒ /nix/store/4cjzy22knsgjrfljsb5wsqk4vh53inm3-baobab-44.0/bin/baobab
* bat ⇒ /nix/store/r735v7al3b31sj90wjxpwmcsqxn73550-bat-0.23.0/bin/bat
* bcomps ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/bcomps
* cachix ⇒ /nix/store/ijmldjlnmqg6r786rk1wc8xg0zig9pbz-cachix-1.6.1/bin/cachix
* ccomps ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/ccomps
* circo ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/circo
* cluster ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/cluster
* code ⇒ /nix/store/bf8g91fqb9nv7bhhanfd03iksg20gim4-vscode-1.78.2/bin/code
* copier ⇒ /nix/store/wcgi4mxfw3q8b00awswmjlwbkjmzqvl3-copier-7.0.1/bin/copier
* corepack ⇒ /nix/store/hdwy8j1jvj2d68p449vvpf5j4mrgzldi-nodejs-18.16.0/bin/corepack
* diffimg ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/diffimg
* dijkstra ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/dijkstra
* direnv ⇒ /nix/store/wlq9vvnljcd03bkb0zixprbki42x39ns-direnv-2.32.3/bin/direnv
* dot ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/dot
* dot2gxl ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/dot2gxl
* dot_builtins ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/dot_builtins
* edgepaint ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/edgepaint
* exercism ⇒ /nix/store/7pm3j3zcahxjzcssr1hlxgq9gs869mad-exercism-3.1.0/bin/exercism
* fd ⇒ /nix/store/4yy36lx085gc4mm7qshs1cq1jm0qx8im-fd-8.7.0/bin/fd
* fdp ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/fdp
* firefox ⇒ /nix/store/3igqa8akmyswkanm6vpk11if4fiqrji8-firefox-113.0.2/bin/firefox
* funzip ⇒ /nix/store/8hviqzpddlxc5i3pclpp24clb71bpqcj-unzip-6.0/bin/funzip
* fzf ⇒ /nix/store/snxcrrlmxw0nd0na93xs8qgbdi0fsm6z-fzf-0.40.0/bin/fzf
* fzf-share ⇒ /nix/store/snxcrrlmxw0nd0na93xs8qgbdi0fsm6z-fzf-0.40.0/bin/fzf-share
* fzf-tmux ⇒ /nix/store/snxcrrlmxw0nd0na93xs8qgbdi0fsm6z-fzf-0.40.0/bin/fzf-tmux
* gc ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gc
* geany ⇒ /nix/store/394xs8p4i8hlw29pnqz3mx4qirmzi3kv-geany-1.38/bin/geany
* gedit ⇒ /nix/store/hpw7mx68cyizc6h5fwxx45807i1ah5xc-gedit-44.2/bin/gedit
* generate-bidi ⇒ /nix/store/5nfb78arxwy457mph4c2y93llrmla863-wezterm-20230408-112425-69ae8472/bin/generate-bidi
* gml2gv ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gml2gv
* go ⇒ /nix/store/8v5zwymidmry0wd3lhj6zggskzsvqrfk-go-1.20.4/bin/go
* gofmt ⇒ /nix/store/8v5zwymidmry0wd3lhj6zggskzsvqrfk-go-1.20.4/bin/gofmt
* graphml2gv ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/graphml2gv
* gv2gml ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gv2gml
* gv2gxl ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gv2gxl
* gvcolor ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gvcolor
* gvgen ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gvgen
* gvmap ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gvmap
* gvmap.sh ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gvmap.sh
* gvpack ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gvpack
* gvpr ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gvpr
* gxl2dot ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gxl2dot
* gxl2gv ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/gxl2gv
* jira ⇒ /nix/store/kd6g90lmmxib99ckirq427q3w5avqf14-jira-cli-go-1.4.0/bin/jira
* kanata ⇒ /nix/store/k4va44117xgnaw02h6b3nmqwp9ga5r1i-kanata-1.3.0/bin/kanata
* kitten ⇒ /nix/store/8vwv6mgnhr3zr3mc3gzyp8gvnrdqdmp0-kitty-0.28.1/bin/kitten
* kitty ⇒ /nix/store/8vwv6mgnhr3zr3mc3gzyp8gvnrdqdmp0-kitty-0.28.1/bin/kitty
* lazygit ⇒ /nix/store/q06kr5wx8brjhnmvsaab6vr10kafm943-lazygit-0.38.2/bin/lazygit
* lua ⇒ /nix/store/ii1wkyw9z6srpwk9x3vr8318f8p07x2a-luajit-2.1.0-2022-10-04/bin/lua
* luajit ⇒ /nix/store/ii1wkyw9z6srpwk9x3vr8318f8p07x2a-luajit-2.1.0-2022-10-04/bin/luajit
* luajit-2.1.0-beta3 ⇒ /nix/store/ii1wkyw9z6srpwk9x3vr8318f8p07x2a-luajit-2.1.0-2022-10-04/bin/luajit-2.1.0-beta3
* mm2gv ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/mm2gv
* monadoro ⇒ /nix/store/fj2napysij5f2h1bxr45cizsz0hjcxsq-Monadoro-0.3.6.2/bin/monadoro
* neato ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/neato
* neofetch ⇒ /nix/store/s0fq5263drspyplbyfdlr38g1fcgl148-neofetch-unstable-2021-12-10/bin/neofetch
* neovide ⇒ /nix/store/wmzspwrixnfmpcylm1106f1hl87y2swd-neovide-0.10.4/bin/neovide
* nerdfix ⇒ /nix/store/l6x5gw03b5kixayk4m4wc0pkccjs3q81-nerdfix-0.3.1/bin/nerdfix
* nitrogen ⇒ /nix/store/bdpwllvjclz807swnqwd9z5nakknb80z-nitrogen-1.6.1/bin/nitrogen
* nix ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix
* nix-build ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-build
* nix-channel ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-channel
* nix-collect-garbage ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-collect-garbage
* nix-copy-closure ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-copy-closure
* nix-daemon ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-daemon
* nix-env ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-env
* nix-hash ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-hash
* nix-instantiate ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-instantiate
* nix-prefetch-url ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-prefetch-url
* nix-search ⇒ /nix/store/a7aanjb21n89wbrxnxkaydxqchdwlgax-nix-search-cli-0.1.0/bin/nix-search
* nix-shell ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-shell
* nix-store ⇒ /nix/store/kb36rhybxxgxr80d7dnvxwqvcr2478vp-nix-2.18.1/bin/nix-store
* nixGL ⇒ /nix/store/5286bd36dwnya8hfsz7yik049dhr29pa-nixGL/bin/nixGL
* nixGLNvidia-530.41.03 ⇒ /nix/store/j8cgjicar070m3gyp3dnlhlw3mspnd4i-nixGLNvidia-530.41.03/bin/nixGLNvidia-530.41.03
* node ⇒ /nix/store/hdwy8j1jvj2d68p449vvpf5j4mrgzldi-nodejs-18.16.0/bin/node
* nop ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/nop
* npm ⇒ /nix/store/hdwy8j1jvj2d68p449vvpf5j4mrgzldi-nodejs-18.16.0/bin/npm
* npx ⇒ /nix/store/hdwy8j1jvj2d68p449vvpf5j4mrgzldi-nodejs-18.16.0/bin/npx
* nvim ⇒ /nix/store/4c84ai966sv8bhzvf9cnpv5y8pj8gcjv-neovim-0.9.0/bin/nvim
* nvim-python3 ⇒ /nix/store/4c84ai966sv8bhzvf9cnpv5y8pj8gcjv-neovim-0.9.0/bin/nvim-python3
* nvim-ruby ⇒ /nix/store/4c84ai966sv8bhzvf9cnpv5y8pj8gcjv-neovim-0.9.0/bin/nvim-ruby
* osage ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/osage
* patchwork ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/patchwork
* pomodoro ⇒ /nix/store/2cdyhvdh4fk0xakdgb4fi72gkp7dmqn5-pomodoro-unstable-2021-06-18/bin/pomodoro
* prune ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/prune
* pyright ⇒ /nix/store/mmkvhps3p2qs1lx7mdsfbm6si3gbclj3-pyright-1.1.309/bin/pyright
* pyright-langserver ⇒ /nix/store/mmkvhps3p2qs1lx7mdsfbm6si3gbclj3-pyright-1.1.309/bin/pyright-langserver
* rg ⇒ /nix/store/8j6z0ns9qaii212msjjnm024fx9dvcr5-ripgrep-13.0.0/bin/rg
* rust-gdb ⇒ /nix/store/3zjg1zw1cf7hixmjmdvw244gmaxac5gk-rustc-1.69.0/bin/rust-gdb
* rust-gdbgui ⇒ /nix/store/3zjg1zw1cf7hixmjmdvw244gmaxac5gk-rustc-1.69.0/bin/rust-gdbgui
* rust-lldb ⇒ /nix/store/3zjg1zw1cf7hixmjmdvw244gmaxac5gk-rustc-1.69.0/bin/rust-lldb
* rustc ⇒ /nix/store/3zjg1zw1cf7hixmjmdvw244gmaxac5gk-rustc-1.69.0/bin/rustc
* rustdoc ⇒ /nix/store/3zjg1zw1cf7hixmjmdvw244gmaxac5gk-rustc-1.69.0/bin/rustdoc
* sccmap ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/sccmap
* sfdp ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/sfdp
* spacefm ⇒ /nix/store/56nsadhxn7wpi8xl8nf3l6vr4n83ccps-spacefm-1.0.6/bin/spacefm
* spacefm-auth ⇒ /nix/store/56nsadhxn7wpi8xl8nf3l6vr4n83ccps-spacefm-1.0.6/bin/spacefm-auth
* spacefm-installer ⇒ /nix/store/56nsadhxn7wpi8xl8nf3l6vr4n83ccps-spacefm-1.0.6/bin/spacefm-installer
* starship ⇒ /nix/store/jwmgyab6idgwg1i6rm9mp54x2h7ffg5p-starship-1.14.2/bin/starship
* strip-ansi-escapes ⇒ /nix/store/5nfb78arxwy457mph4c2y93llrmla863-wezterm-20230408-112425-69ae8472/bin/strip-ansi-escapes
* sync-color-schemes ⇒ /nix/store/5nfb78arxwy457mph4c2y93llrmla863-wezterm-20230408-112425-69ae8472/bin/sync-color-schemes
* tred ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/tred
* tree ⇒ /nix/store/yfrb9prridl1h01kxhvjinnkb669m38l-tree-2.0.4/bin/tree
* treesheets ⇒ /nix/store/y1xndqkpg5z93b2qsfchzc7c7a5dpx7h-treesheets-unstable-2023-05-04/bin/treesheets
* twopi ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/twopi
* unflatten ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/unflatten
* unxrandr ⇒ /nix/store/hjb6s2zjyclpbx1hshhlx06r7f8l8mvw-arandr-0.1.10/bin/unxrandr
* unzip ⇒ /nix/store/8hviqzpddlxc5i3pclpp24clb71bpqcj-unzip-6.0/bin/unzip
* unzipsfx ⇒ /nix/store/8hviqzpddlxc5i3pclpp24clb71bpqcj-unzip-6.0/bin/unzipsfx
* urclock ⇒ /nix/store/599k6qa29z3r8a40kalasqybnq7ysbzw-rxvt-unicode-unwrapped-9.30/bin/urclock
* urxvt ⇒ /nix/store/599k6qa29z3r8a40kalasqybnq7ysbzw-rxvt-unicode-unwrapped-9.30/bin/urxvt
* urxvtc ⇒ /nix/store/599k6qa29z3r8a40kalasqybnq7ysbzw-rxvt-unicode-unwrapped-9.30/bin/urxvtc
* urxvtd ⇒ /nix/store/599k6qa29z3r8a40kalasqybnq7ysbzw-rxvt-unicode-unwrapped-9.30/bin/urxvtd
* vimdot ⇒ /nix/store/6n2azvnmqs06wmqn8iii3qm47ddi1m5d-graphviz-7.1.0/bin/vimdot
* wego ⇒ /nix/store/ik47jnxl942zygyhdys9j8js4zl5iwyp-wego-2.1/bin/wego
* wezterm ⇒ /nix/store/5nfb78arxwy457mph4c2y93llrmla863-wezterm-20230408-112425-69ae8472/bin/wezterm
* wezterm-gui ⇒ /nix/store/5nfb78arxwy457mph4c2y93llrmla863-wezterm-20230408-112425-69ae8472/bin/wezterm-gui
* wezterm-mux-server ⇒ /nix/store/5nfb78arxwy457mph4c2y93llrmla863-wezterm-20230408-112425-69ae8472/bin/wezterm-mux-server
* xonsh ⇒ /nix/store/l756x8gsb09zakf6lbyqqcxm6nijzhq3-xonsh-0.13.4/bin/xonsh
* xonsh-cat ⇒ /nix/store/l756x8gsb09zakf6lbyqqcxm6nijzhq3-xonsh-0.13.4/bin/xonsh-cat
* xonsh-uname ⇒ /nix/store/l756x8gsb09zakf6lbyqqcxm6nijzhq3-xonsh-0.13.4/bin/xonsh-uname
* xonsh-uptime ⇒ /nix/store/l756x8gsb09zakf6lbyqqcxm6nijzhq3-xonsh-0.13.4/bin/xonsh-uptime
* zathura ⇒ /nix/store/3sj7a9q0a507jcgivvga41xhxd186xzk-zathura-with-plugins-0.5.2/bin/zathura
* zip ⇒ /nix/store/nibknf22pwmpg5ldrv5lvbzz50ygr7ry-zip-3.0/bin/zip
* zipcloak ⇒ /nix/store/nibknf22pwmpg5ldrv5lvbzz50ygr7ry-zip-3.0/bin/zipcloak
* zipgrep ⇒ /nix/store/8hviqzpddlxc5i3pclpp24clb71bpqcj-unzip-6.0/bin/zipgrep
* zipinfo ⇒ /nix/store/8hviqzpddlxc5i3pclpp24clb71bpqcj-unzip-6.0/bin/zipinfo
* zipnote ⇒ /nix/store/nibknf22pwmpg5ldrv5lvbzz50ygr7ry-zip-3.0/bin/zipnote
* zipsplit ⇒ /nix/store/nibknf22pwmpg5ldrv5lvbzz50ygr7ry-zip-3.0/bin/zipsplit
* zsh ⇒ /nix/store/39ajc7cmrksfqgzzp36i1x1igqymqb7y-zsh-5.9/bin/zsh

/home/isaac/.local/bin
* activate-global-python-argcomplete
* alembic
* asadmin
* ascii-image-converter
* azure_export
* beautysh
* black
* blackd
* bundle_image
* cfadmin
* check-jsonschema ⇒ /home/isaac/.local/pipx/venvs/check-jsonschema/bin/check-jsonschema
* classifier ⇒ /home/isaac/.local/pipx/venvs/classifier/bin/classifier
* cmark
* codespell
* cq
* cuda_test
* cwutil
* databricks
* dbfs
* deno
* docutils
* doesitcache
* doq
* dul-receive-pack
* dul-upload-pack
* dulwich
* dynaconf
* dynamodb_dump
* dynamodb_load
* elbadmin
* f2py
* fetch_file
* flake8
* flask
* fonttools
* gen_client
* gh
* glacier
* gsutil
* gunicorn
* identify-cli
* instance_events
* ipython
* ipython3
* jupyter
* jupyter-migrate
* jupyter-troubleshoot
* jupyter-trust
* jupytext
* jupytext-config
* keyring
* kill_instance
* langchain
* langchain-server
* launch_instance
* lazyman
* list_instances
* lss3
* lua-language-server
* lvim
* mako-render
* markdown-it
* matrix-webcam ⇒ /home/isaac/.local/pipx/venvs/matrix-webcam/bin/matrix-webcam
* mdbook ⇒ /home/isaac/pkgs/mdbook
* mdbook-theme ⇒ /home/isaac/pkgs/mdbook-theme
* misspell
* mlflow
* mturk
* nodeenv
* normalizer
* nvim-Daniel
* nvim-JustinLvim
* nvim-LunarIde
* nvim-LunarVim
* nvim-LvimAdib
* nvim-Shuvro
* nvr
* Organize ⇒ /home/isaac/.local/pipx/venvs/organizer-cli/bin/Organize
* pip
* pip3
* pip3.10
* pip3.11
* pkginfo
* poetry
* pre-commit
* pyami_sendmail
* pycodestyle
* pyflakes
* pyftmerge
* pyftsubset
* pygmentize
* pylsp
* pypi ⇒ /home/isaac/.local/pipx/venvs/pypi-command-line/bin/pypi
* pyproject-build
* pyrsa-decrypt
* pyrsa-encrypt
* pyrsa-keygen
* pyrsa-priv2pub
* pyrsa-sign
* pyrsa-verify
* python-argcomplete-check-easy-install-script
* register-python-argcomplete
* rich
* route53
* rst2html.pyrst2html4.pyrst2html5.pyrst2latex.pyrst2man.pyrst2odt.py
* rst2odt_prepstyles.py
* rst2pseudoxml.pyrst2s5.pyrst2xetex.pyrst2xml.pyrstpep2html.py
* ruff
* s3put
* sdbadmin
* spacy
* sphinx-apidoc ⇒ /home/isaac/.local/pipx/venvs/sphinx/bin/sphinx-apidoc
* sphinx-autogen ⇒ /home/isaac/.local/pipx/venvs/sphinx/bin/sphinx-autogen
* sphinx-build ⇒ /home/isaac/.local/pipx/venvs/sphinx/bin/sphinx-build
* sphinx-quickstart ⇒ /home/isaac/.local/pipx/venvs/sphinx/bin/sphinx-quickstart
* sqlformat
* tabulate
* taskadmin
* tectonic
* test_cuda
* tftest
* tldr
* tqdm
* trash
* trash-empty
* trash-list
* trash-put
* trash-restore
* trash-rm
* ttx
* twoscreen
* virtualenv
* weasel
* wheel
* wsdump
* zoxide

/home/isaac/.cargo/bin
* cargo
* cargo-clippy
* cargo-fmt
* cargo-miri
* clippy-driver
* lsd
* rls
* rust-analyzer
* rust-gdb
* rust-gdbgui
* rust-lldb
* rustc
* rustdoc
* rustfmt
* rustup
* stylua
* tree-sitter

/usr/local/sbin
* unminimize

/usr/sbin
* aa-remove-unknown
* aa-status
* aa-teardown
* accessdb
* add-shell
* addgnupghome
* addgroup ⇒ adduser
* adduser
* agetty
* alsa-info
* alsabat-test
* alsactl
* apparmor_parser
* apparmor_status ⇒ aa-status
* applygnupgdefaults
* arp
* arpd
* arptables ⇒ /etc/alternatives/arptables
* arptables-nft ⇒ xtables-nft-multi
* arptables-nft-restore ⇒ xtables-nft-multi
* arptables-nft-save ⇒ xtables-nft-multi
* arptables-restore ⇒ /etc/alternatives/arptables-restore
* arptables-save ⇒ /etc/alternatives/arptables-save
* aspell-autobuildhash
* avahi-daemon
* badblocks
* bcache-super-show
* biosdecode
* blkdeactivate
* blkdiscard
* blkid
* blkzone
* blockdev
* bridge
* cache_check ⇒ pdata_tools
* cache_dump ⇒ pdata_tools
* cache_metadata_size ⇒ pdata_tools
* cache_repair ⇒ pdata_tools
* cache_restore ⇒ pdata_tools
* cache_writeback ⇒ pdata_tools
* capsh
* cfdisk
* cgdisk
* chcpu
* chgpasswd
* chmem
* chpasswd
* chroot
* clamd
* clamonacc
* cpgr ⇒ cppw
* cppw
* cron
* cryptdisks_start
* cryptdisks_stop
* cryptsetup
* cryptsetup-reencrypt
* cryptsetup-ssh
* ctrlaltdel
* dcb
* debugfs
* delgroup ⇒ deluser
* deluser
* depmod ⇒ /bin/kmod
* devlink
* dhclient
* dhclient-script
* dkms
* dmeventd
* dmidecode
* dmsetup
* dmstats ⇒ dmsetup
* dosfsck ⇒ fsck.fat
* dosfslabel ⇒ fatlabel
* dpkg-preconfigure
* dpkg-reconfigure
* dumpe2fs
* e2freefrag
* e2fsck
* e2image
* e2label ⇒ tune2fs
* e2mmpstatus ⇒ dumpe2fs
* e2scrub
* e2scrub_all
* e2undo
* e4crypt
* e4defrag
* ebtables ⇒ /etc/alternatives/ebtables
* ebtables-nft ⇒ xtables-nft-multi
* ebtables-nft-restore ⇒ xtables-nft-multi
* ebtables-nft-save ⇒ xtables-nft-multi
* ebtables-restore ⇒ /etc/alternatives/ebtables-restore
* ebtables-save ⇒ /etc/alternatives/ebtables-save
* era_check ⇒ pdata_tools
* era_dump ⇒ pdata_tools
* era_invalidate ⇒ pdata_tools
* era_restore ⇒ pdata_tools
* escapesrc
* ethtool
* faillock
* fatlabel
* fdisk
* filefrag
* findfs
* fixparts
* fsadm
* fsck
* fsck.btrfs
* fsck.cramfs
* fsck.ext2 ⇒ e2fsck
* fsck.ext3 ⇒ e2fsck
* fsck.ext4 ⇒ e2fsck
* fsck.fat
* fsck.minix
* fsck.msdos ⇒ fsck.fat
* fsck.vfat ⇒ fsck.fat
* fsck.xfs
* fsfreeze
* fstab-decode
* fstrim
* gconf-schemas
* gdisk
* genccode
* gencmn
* genl
* gennorm2
* gensprep
* get-quirk-options
* getcap
* getpcaps
* getty ⇒ agetty
* gparted
* groupadd
* groupdel
* groupmems
* groupmod
* grpck
* grpconv
* grpunconv
* grub-install
* grub-macbless
* grub-mkconfig
* grub-mkdevicemap
* grub-probe
* grub-reboot
* grub-set-default
* guest-account
* halt ⇒ /bin/systemctl
* hdparm
* hwclock
* iconvconfig
* icupkg
* ifconfig
* init ⇒ /lib/systemd/systemd
* insmod ⇒ /bin/kmod
* installkernel
* integritysetup
* invoke-rc.d
* ip ⇒ /bin/ip
* ip6tables ⇒ /etc/alternatives/ip6tables
* ip6tables-apply ⇒ iptables-apply
* ip6tables-legacy ⇒ xtables-legacy-multi
* ip6tables-legacy-restore ⇒ xtables-legacy-multi
* ip6tables-legacy-save ⇒ xtables-legacy-multi
* ip6tables-nft ⇒ xtables-nft-multi
* ip6tables-nft-restore ⇒ xtables-nft-multi
* ip6tables-nft-save ⇒ xtables-nft-multi
* ip6tables-restore ⇒ /etc/alternatives/ip6tables-restore
* ip6tables-restore-translate ⇒ xtables-nft-multi
* ip6tables-save ⇒ /etc/alternatives/ip6tables-save
* ip6tables-translate ⇒ xtables-nft-multi
* ipmaddr
* iptables ⇒ /etc/alternatives/iptables
* iptables-apply
* iptables-legacy ⇒ xtables-legacy-multi
* iptables-legacy-restore ⇒ xtables-legacy-multi
* iptables-legacy-save ⇒ xtables-legacy-multi
* iptables-nft ⇒ xtables-nft-multi
* iptables-nft-restore ⇒ xtables-nft-multi
* iptables-nft-save ⇒ xtables-nft-multi
* iptables-restore ⇒ /etc/alternatives/iptables-restore
* iptables-restore-translate ⇒ xtables-nft-multi
* iptables-save ⇒ /etc/alternatives/iptables-save
* iptables-translate ⇒ xtables-nft-multi
* iptunnel
* irqbalance
* irqbalance-ui
* iscsi-iname
* iscsi_discovery
* iscsiadm
* iscsid
* iscsistart
* isosize
* ispell-autobuildhash
* iucode-tool ⇒ iucode_tool
* iucode_tool
* iwconfig
* iwevent
* iwgetid
* iwlist
* iwpriv
* iwspy
* kbdrate
* killall5
* kpartx
* ldattach
* ldconfig
* ldconfig.real
* lightdm
* lightdm-gtk-greeter
* lightdm-session
* locale-gen
* logrotate
* logsave
* losetup
* lsmod ⇒ /bin/kmod
* luksformat
* lvchange ⇒ lvm
* lvconvert ⇒ lvm
* lvcreate ⇒ lvm
* lvdisplay ⇒ lvm
* lvextend ⇒ lvm
* lvm
* lvmconfig ⇒ lvm
* lvmdiskscan ⇒ lvm
* lvmdump
* lvmpolld
* lvmsadc ⇒ lvm
* lvmsar ⇒ lvm
* lvreduce ⇒ lvm
* lvremove ⇒ lvm
* lvrename ⇒ lvm
* lvresize ⇒ lvm
* lvs ⇒ lvm
* lvscan ⇒ lvm
* make-bcache
* mdadm
* mdmon
* mii-tool
* mkdosfs ⇒ mkfs.fat
* mke2fs
* mkfs
* mkfs.bfs
* mkfs.btrfs
* mkfs.cramfs
* mkfs.ext2 ⇒ mke2fs
* mkfs.ext3 ⇒ mke2fs
* mkfs.ext4 ⇒ mke2fs
* mkfs.fat
* mkfs.minix
* mkfs.msdos ⇒ mkfs.fat
* mkfs.ntfs ⇒ mkntfs
* mkfs.vfat ⇒ mkfs.fat
* mkfs.xfs
* mkhomedir_helper
* mkinitramfs
* mklost+found
* mkntfs
* mkswap
* ModemManager
* modinfo ⇒ /bin/kmod
* modprobe ⇒ /bin/kmod
* mount.fuse ⇒ mount.fuse3
* mount.fuse3
* mount.lowntfs-3g ⇒ /bin/lowntfs-3g
* mount.ntfs ⇒ mount.ntfs-3g
* mount.ntfs-3g ⇒ /bin/ntfs-3g
* mpathpersist
* multipath
* multipathd
* nameif
* needrestart
* netplan ⇒ ../share/netplan/netplan.script
* newusers
* nfnl_osf
* nft
* nologin
* ntfsclone
* ntfscp
* ntfslabel
* ntfsresize
* ntfsundelete
* on_ac_power
* overlayroot-chroot
* ownership
* pam-auth-update
* pam_extrausers_chkpwd
* pam_extrausers_update
* pam_getenv
* pam_timestamp_check
* paperconfig
* parted
* partprobe
* pdata_tools
* pivot_root
* plipconfig
* plymouthd
* poweroff ⇒ /bin/systemctl
* prime-offload
* prime-switch
* pvchange ⇒ lvm
* pvck ⇒ lvm
* pvcreate ⇒ lvm
* pvdisplay ⇒ lvm
* pvmove ⇒ lvm
* pvremove ⇒ lvm
* pvresize ⇒ lvm
* pvs ⇒ lvm
* pvscan ⇒ lvm
* pwck
* pwconv
* pwunconv
* rarp
* readprofile
* reboot ⇒ /bin/systemctl
* remove-default-ispell
* remove-default-wordlist
* remove-shell
* resize2fs
* rfkill
* rmmod ⇒ /bin/kmod
* rmt ⇒ /etc/alternatives/rmt
* rmt-tar
* route
* rsyslogd
* rtacct
* rtcwake
* rtkitctl
* rtmon
* runlevel ⇒ /bin/systemctl
* runuser
* select-default-ispell
* select-default-wordlist
* service
* setcap
* setvesablank
* setvtrgb
* sfdisk
* sgdisk
* shadowconfig
* shutdown ⇒ /bin/systemctl
* slattach
* sshd
* start-stop-daemon
sudo_logsrvd
sudo_sendlog
* sulogin
* swaplabel
* swapoff
* swapon
* switch_root
* sync-available
* sysctl
* tarcat
* tc
* telinit ⇒ /bin/systemctl
* thermald
* thin_check ⇒ pdata_tools
* thin_delta ⇒ pdata_tools
* thin_dump ⇒ pdata_tools
* thin_ls ⇒ pdata_tools
* thin_metadata_size ⇒ pdata_tools
* thin_repair ⇒ pdata_tools
* thin_restore ⇒ pdata_tools
* thin_rmap ⇒ pdata_tools
* thin_trim ⇒ pdata_tools
* tipc
* tune2fs
* tzconfig
* u-d-c-print-pci-ids
* ub-device-create
* ufw
* umount.udisks2
* unix_chkpwd
* unix_update
* update-binfmts
* update-ca-certificates
* update-default-aspell ⇒ update-dictcommon-aspell
* update-default-ispell
* update-default-wordlist
* update-dictcommon-aspell
* update-dictcommon-hunspell
* update-fonts-alias
* update-fonts-dir
* update-fonts-scale
* update-grub
* update-grub2 ⇒ update-grub
* update-gsfontmap
* update-icon-caches
* update-info-dir
* update-initramfs
* update-locale
* update-passwd
* update-pciids
* update-rc.d
* update-secureboot-policy
* update-shells
* usb_modeswitch
* usb_modeswitch_dispatcher
* usbmuxd
* useradd
* userdel
* usermod
* uuidd
* v4l2-dbg
* validlocale
* vcstime
* vdpa
* veritysetup
* vgcfgbackup ⇒ lvm
* vgcfgrestore ⇒ lvm
* vgchange ⇒ lvm
* vgck ⇒ lvm
* vgconvert ⇒ lvm
* vgcreate ⇒ lvm
* vgdisplay ⇒ lvm
* vgexport ⇒ lvm
* vgextend ⇒ lvm
* vgimport ⇒ lvm
* vgimportclone ⇒ lvm
* vgmerge ⇒ lvm
* vgmknodes ⇒ lvm
* vgreduce ⇒ lvm
* vgremove ⇒ lvm
* vgrename ⇒ lvm
* vgs ⇒ lvm
* vgscan ⇒ lvm
* vgsplit ⇒ lvm
* vigr ⇒ vipw
* vipw
* visudo
* vpddecode
* wipefs
* wpa_action
* wpa_cli
* wpa_supplicant
* xfs_admin
* xfs_bmap
* xfs_copy
* xfs_db
* xfs_estimate
* xfs_freeze
* xfs_fsr
* xfs_growfs
* xfs_info
* xfs_io
* xfs_logprint
* xfs_mdrestore
* xfs_metadump
* xfs_mkfile
* xfs_ncheck
* xfs_quota
* xfs_repair
* xfs_rtcp
* xfs_scrub
* xfs_scrub_all
* xfs_spaceman
* xtables-legacy-multi
* xtables-monitor ⇒ xtables-nft-multi
* xtables-nft-multi
* zerofree
* zic
* zramctl

/usr/bin
* X11 ⇒ .
* 411toppm
* [
* aa-enabled
* aa-exec
* aa-features-abi
* aclocal ⇒ /etc/alternatives/aclocal
* aclocal-1.16
* aconnect
* activate-global-python-argcomplete3
* adb ⇒ ../lib/android-sdk/platform-tools/adb
* add-apt-repository
* addpart
* addr2line ⇒ x86_64-linux-gnu-addr2line
* alacritty
* alsabat
* alsaloop
* alsamixer
* alsatplg
* alsaucm
* amidi
* amixer
* animate ⇒ /etc/alternatives/animate
* animate-im6 ⇒ /etc/alternatives/animate-im6
* animate-im6.q16
* anytopnm
* aplay
* aplaymidi
* apport-bug
* apport-cli
* apport-collect ⇒ apport-bug
* apport-unpack
* appres
* apropos ⇒ whatis
* apt
* apt-add-repository ⇒ add-apt-repository
* apt-cache
* apt-cdrom
* apt-config
* apt-extracttemplates
* apt-ftparchive
* apt-get
* apt-key
* apt-mark
* apt-sortpkgs
* ar ⇒ x86_64-linux-gnu-ar
* arch
* arecord ⇒ aplay
* arecordmidi
* as ⇒ x86_64-linux-gnu-as
* asciitopgm
* aseqdump
* aseqnet
* aspell
* aspell-import
* atktopbm
* atobm
* autoconf
* autoheader
* autom4te
* automake ⇒ /etc/alternatives/automake
* automake-1.16
* automat-visualize3
* autoreconf
* autoscan
* autoupdate
* awk ⇒ /etc/alternatives/awk
* axfer
* b2sum
* base32
* base64
* basename
* basenc
* bash
* bashbug
* bc
* bdftopcf
* bdftruncate
* bioradtopgm
* bitmap
* black
* black-primer
* bmptopnm
* bmptoppm ⇒ bmptopnm
* bmtoa
* boltctl
* bootctl
* browse ⇒ xdg-open
* brushtopbm
* btrfs
* btrfs-convert
* btrfs-find-root
* btrfs-image
* btrfs-map-logical
* btrfs-select-super
* btrfsck ⇒ btrfs
* btrfstune
* bugpoint ⇒ ../lib/llvm-14/bin/bugpoint
* bugpoint-14 ⇒ ../lib/llvm-14/bin/bugpoint
* bundle3.0
* bundler3.0
* bunzip2
* busctl
* busybox
* bwrap
* byobu
* byobu-config
* byobu-ctrl-a
* byobu-disable
* byobu-disable-prompt
* byobu-enable
* byobu-enable-prompt
* byobu-export
* byobu-janitor
* byobu-keybindings
* byobu-launch
* byobu-launcher
* byobu-launcher-install
* byobu-launcher-uninstall
* byobu-layout
* byobu-prompt
* byobu-quiet
* byobu-reconnect-sockets
* byobu-screen ⇒ byobu
* byobu-select-backend
* byobu-select-profile
* byobu-select-session
* byobu-shell
* byobu-silent
* byobu-status
* byobu-status-detail
* byobu-tmux ⇒ byobu
* byobu-ugraph
* byobu-ulevel
* bzcat
* bzcmp ⇒ bzdiff
* bzdiff
* bzegrep ⇒ bzgrep
* bzexe
* bzfgrep ⇒ bzgrep
* bzgrep
* bzip2
* bzip2recover
* bzless ⇒ bzmore
* bzmore
* c++ ⇒ /etc/alternatives/c++
* c++filt ⇒ x86_64-linux-gnu-c++filt
* c89 ⇒ /etc/alternatives/c89
* c89-gcc
* c99 ⇒ /etc/alternatives/c99
* c99-gcc
* c_rehash
* captoinfo ⇒ tic
* cat
* catman
* cc ⇒ /etc/alternatives/cc
* ccls
* cct
* cec-compliance
* cec-ctl
* cec-follower
* cftp3
* cgi-fcgi
* chage
* chardet ⇒ chardetect
* chardetect
* chattr
* chcon
* chfn
* chgrp
* chkfont
* chmod
* choom
* chown
* chromedriver ⇒ ../lib/chromium/chromedriver
* chromium
* chrt
* chsh
* chvt
* ckbcomp
* ckeygen3
* cksum
* clambc
* clamconf
* clamdscan
* clamdtop
* clamscan
* clamsubmit
* clear
* clear_console
* cloud-id
* cloud-init
* cloud-init-per
* cmp
* cmuwmtopbm
* codepage
* col
* col1
* col2 ⇒ col1
* col3 ⇒ col1
* col4 ⇒ col1
* col5 ⇒ col1
* col6 ⇒ col1
* col7 ⇒ col1
* col8 ⇒ col1
* col9 ⇒ col1
* colcrt
* colrm
* column
* comm
* compare ⇒ /etc/alternatives/compare
* compare-im6 ⇒ /etc/alternatives/compare-im6
* compare-im6.q16
* composite ⇒ /etc/alternatives/composite
* composite-im6 ⇒ /etc/alternatives/composite-im6
* composite-im6.q16
* conch3
* conjure ⇒ /etc/alternatives/conjure
* conjure-im6 ⇒ /etc/alternatives/conjure-im6
* conjure-im6.q16
* containerd
* containerd-shim
* containerd-shim-runc-v1
* containerd-shim-runc-v2
* convert ⇒ /etc/alternatives/convert
* convert-im6 ⇒ /etc/alternatives/convert-im6
* convert-im6.q16
* corelist
* count-14 ⇒ ../lib/llvm-14/bin/count
* cp
* cpan
* cpan5.34-x86_64-linux-gnu
* cpio
* cpp ⇒ cpp-11
* cpp-11 ⇒ x86_64-linux-gnu-cpp-11
* cpp-12 ⇒ x86_64-linux-gnu-cpp-12
* crc32
* crontab
* cs2cs
* csplit
* ctail
* ctr
* ctstat ⇒ lnstat
* curl
* cut
* cvlc
* cvtsudoers
* cx18-ctl
* dash
* date
* dbus-cleanup-sockets
* dbus-daemon
* dbus-monitor
* dbus-run-session
* dbus-send
* dbus-update-activation-environment
* dbus-uuidgen
* dbxtool
* dconf
* dd
* deallocvt
* deb-systemd-helper
* deb-systemd-invoke
* debconf
* debconf-apt-progress
* debconf-communicate
* debconf-copydb
* debconf-escape
* debconf-set-selections
* debconf-show
* debian-distro-info
* decode_tm6000
* delpart
* delv
* derb
* desktop-file-edit ⇒ desktop-file-install
* desktop-file-install
* desktop-file-validate
* dex
* df
* dfu-tool
* dh_autotools-dev_restoreconfig
* dh_autotools-dev_updateconfig
* dh_bash-completion
* dh_dkms
* dh_gstscancodecs
* dh_mkdocs
* dh_perl_openssl
* diff
* diff3
* dig
* dir
* dircolors
* dirmngr
* dirmngr-client
* dirname
* display ⇒ /etc/alternatives/display
* display-im6 ⇒ /etc/alternatives/display-im6
* display-im6.q16
* distro-info ⇒ ubuntu-distro-info
* dm-tool
* dmenu
* dmenu_path
* dmenu_run
* dmesg
* dnsdomainname ⇒ hostname
* do-release-upgrade
* docker
* docker-proxy
* dockerd
* dockerd-rootless-setuptool.shdockerd-rootless.sh
* domainname ⇒ hostname
* dpkg
* dpkg-architecture
* dpkg-buildflags
* dpkg-buildpackage
* dpkg-checkbuilddeps
* dpkg-deb
* dpkg-distaddfile
* dpkg-divert
* dpkg-genbuildinfo
* dpkg-genchanges
* dpkg-gencontrol
* dpkg-gensymbols
* dpkg-maintscript-helper
* dpkg-mergechangelogs
* dpkg-name
* dpkg-parsechangelog
* dpkg-query
* dpkg-realpath
* dpkg-scanpackages
* dpkg-scansources
* dpkg-shlibdeps
* dpkg-source
* dpkg-split
* dpkg-statoverride
* dpkg-trigger
* dpkg-vendor
* dsymutil ⇒ ../lib/llvm-14/bin/dsymutil
* dsymutil-14 ⇒ ../lib/llvm-14/bin/dsymutil
* du
* dumpiso
* dumpkeys
* dumpsexp
* dunst
* dunstctl
* dunstify
* dvipdf
* dwp ⇒ x86_64-linux-gnu-dwp
* eatmydata
* ec2metadata
* echo
* ed
* editor ⇒ /etc/alternatives/editor
* editres
* efibootdump
* efibootmgr
* eglinfo ⇒ eglinfo.x86_64-linux-gnu
* eglinfo.x86_64-linux-gnu
* egrep
* eject
* elfedit ⇒ x86_64-linux-gnu-elfedit
* enc2xs
* encguess
* enchant-2
* enchant-lsmod-2
* env
* envsubst
* eps2eps
* epson-printer-utility ⇒ /opt/epson-printer-utility/bin/epson-printer-utility
* eqn
* erb ⇒ erb3.0
* erb3.0
* es2_info ⇒ es2_info.x86_64-linux-gnu
* es2_info.x86_64-linux-gnu
* es2gears_wayland ⇒ es2gears_wayland.x86_64-linux-gnu
* es2gears_wayland.x86_64-linux-gnu
* es2gears_x11 ⇒ es2gears_x11.x86_64-linux-gnu
* es2gears_x11.x86_64-linux-gnu
* es2tri ⇒ es2tri.x86_64-linux-gnu
* es2tri.x86_64-linux-gnu
* evince
* evince-previewer
* evince-thumbnailer
* ex ⇒ /etc/alternatives/ex
* exiftool
* expand
* expiry
* expr
* eyuvtoppm
* factor
* faillog
* faked-sysv
* faked-tcp
* fakeroot ⇒ /etc/alternatives/fakeroot
* fakeroot-sysv
* fakeroot-tcp
* fallocate
* false
* fastboot
* fc-cache
* fc-cat
* fc-conflist
* fc-list
* fc-match
* fc-pattern
* fc-query
* fc-scan
* fc-validate
* fgconsole
* fgrep
* fiascotopnm
* figlet ⇒ /etc/alternatives/figlet
* figlet-figlet
* figlist
* file
* FileCheck-14 ⇒ ../lib/llvm-14/bin/FileCheck
* finalrd
* fincore
* find
* findmnt
* fitstopnm
* flatpak
* flock
* fmt
* fold
* fonttosfnt
* free
* freshclam
* fstopgm
* ftp ⇒ /etc/alternatives/ftp
* funzip
* fuser
* fusermount ⇒ fusermount3
* fusermount3
* fwupdagent ⇒ fwupdmgr
* fwupdate
* fwupdmgr
* fwupdtool
* g++ ⇒ g++-11
* g++-11 ⇒ x86_64-linux-gnu-g++-11
* g3topbm
* gapplication
* gawk
* gcc ⇒ gcc-11
* gcc-11 ⇒ x86_64-linux-gnu-gcc-11
* gcc-12 ⇒ x86_64-linux-gnu-gcc-12
* gcc-ar ⇒ gcc-ar-11
* gcc-ar-11 ⇒ x86_64-linux-gnu-gcc-ar-11
* gcc-ar-12 ⇒ x86_64-linux-gnu-gcc-ar-12
* gcc-nm ⇒ gcc-nm-11
* gcc-nm-11 ⇒ x86_64-linux-gnu-gcc-nm-11
* gcc-nm-12 ⇒ x86_64-linux-gnu-gcc-nm-12
* gcc-ranlib ⇒ gcc-ranlib-11
* gcc-ranlib-11 ⇒ x86_64-linux-gnu-gcc-ranlib-11
* gcc-ranlib-12 ⇒ x86_64-linux-gnu-gcc-ranlib-12
* gconf-merge-tree
* gconftool ⇒ gconftool-2
* gconftool-2
* gcov ⇒ gcov-11
* gcov-11 ⇒ x86_64-linux-gnu-gcov-11
* gcov-12 ⇒ x86_64-linux-gnu-gcov-12
* gcov-dump ⇒ gcov-dump-11
* gcov-dump-11 ⇒ x86_64-linux-gnu-gcov-dump-11
* gcov-dump-12 ⇒ x86_64-linux-gnu-gcov-dump-12
* gcov-tool ⇒ gcov-tool-11
* gcov-tool-11 ⇒ x86_64-linux-gnu-gcov-tool-11
* gcov-tool-12 ⇒ x86_64-linux-gnu-gcov-tool-12
* gdbus
* gdbus-codegen
* gem
* gem3.0
* gemtopbm ⇒ gemtopnm
* gemtopnm
* genbrk
* gencat
* gencfu
* gencnval
* gendict
* genrb
* geod
* geqn ⇒ eqn
* GET ⇒ lwp-request
* getconf
* getent
* getkeycodes
* getopt
* gettext
* gettext.sh
* ghostscript ⇒ gs
* gie
* giftopnm
* ginstall-info ⇒ install-info
* gio
* gio-querymodules ⇒ ../lib/x86_64-linux-gnu/glib-2.0/gio-querymodules
* git
* git-receive-pack ⇒ git
* git-shell
* git-upload-archive ⇒ git
* git-upload-pack ⇒ git
* glib-compile-resources
* glib-compile-schemas ⇒ ../lib/x86_64-linux-gnu/glib-2.0/glib-compile-schemas
* glib-genmarshal
* glib-gettextize
* glib-mkenums
* glxdemo ⇒ glxdemo.x86_64-linux-gnu
* glxdemo.x86_64-linux-gnu
* glxgears ⇒ glxgears.x86_64-linux-gnu
* glxgears.x86_64-linux-gnu
* glxheads ⇒ glxheads.x86_64-linux-gnu
* glxheads.x86_64-linux-gnu
* glxinfo ⇒ glxinfo.x86_64-linux-gnu
* glxinfo.x86_64-linux-gnu
* gmake ⇒ make
* gnome-terminal
* gnome-terminal.real
* gnome-terminal.wrapper
* gnome-www-browser ⇒ /etc/alternatives/gnome-www-browser
* gnuplot ⇒ /etc/alternatives/gnuplot
* gnuplot-x11
* gobject-query
* gold ⇒ x86_64-linux-gnu-gold
* gouldtoppm
* gpasswd
* gpg
* gpg-agent
* gpg-connect-agent
* gpg-error-config
* gpg-wks-server
* gpg-zip
* gpgcompose
* gpgconf
* gpgparsemail
* gpgrt-config
* gpgsm
* gpgsplit
* gpgtar
* gpgv
* gpic ⇒ pic
* gprof ⇒ x86_64-linux-gnu-gprof
* gpu-manager
* grep
* grep-aptavail ⇒ grep-dctrl
* grep-available ⇒ grep-dctrl
* grep-dctrl
* grep-debtags ⇒ grep-dctrl
* grep-status ⇒ grep-dctrl
* gresource
* groff
* grog
* grops
* grotty
* groups
* growpart
* grub-editenv
* grub-file
* grub-fstest
* grub-glue-efi
* grub-kbdcomp
* grub-menulst2cfg
* grub-mkfont
* grub-mkimage
* grub-mklayout
* grub-mknetdir
* grub-mkpasswd-pbkdf2
* grub-mkrelpath
* grub-mkrescue
* grub-mkstandalone
* grub-mount
* grub-render-label
* grub-script-check
* grub-syslinux2cfg
* gs
* gsbj
* gsdj
* gsdj500
* gsettings
* gsettings-data-convert
* gsettings-schema-convert
* gslj
* gslp
* gsnd
* gst-inspect-1.0
* gst-launch-1.0
* gst-stats-1.0
* gst-tester-1.0
* gst-typefind-1.0
* gtbl ⇒ tbl
* gtester
* gtester-report
* gtf
* gtk-update-icon-cache
* gunzip
* gzexe
* gzip
* h2ph
* h2xs
* hardlink
* hd ⇒ hexdump
* head
* HEAD ⇒ lwp-request
* helpztags
* hexdump
* hipstopgm
* hmac256
* host
* hostid
* hostname
* hostnamectl
* htop* httpx
* hwe-support-status
* i3
* i3-config-wizard
* i3-dmenu-desktop
* i3-dump-log
* i3-input
* i3-migrate-config-to-v4
* i3-msg
* i3-nagbar
* i3-save-tree
* i3-sensible-editor
* i3-sensible-pager
* i3-sensible-terminal
* i3-with-shmlog ⇒ i3
* i386 ⇒ setarch
* i3bar
* i3lock
* i3status
* iceauth
* ico
* icontopbm
* iconv
* icuexportdata
* icuinfo
* id
* identify ⇒ /etc/alternatives/identify
* identify-im6 ⇒ /etc/alternatives/identify-im6
* identify-im6.q16
* iecset
* ifnames
* ilbmtoppm
* imagetops
* imgtoppm
* import ⇒ /etc/alternatives/import
* import-im6 ⇒ /etc/alternatives/import-im6
* import-im6.q16
* info
* infobrowser ⇒ /etc/alternatives/infobrowser
* infocmp
* infotocap ⇒ tic
* install
* install-info
* instmodsh
* invgeod ⇒ geod
* invproj ⇒ proj
* ionice
* ip
* ipcmk
* ipcrm
* ipcs
* iptables-xml ⇒ ../sbin/xtables-legacy-multi
* ir-ctl
* irb ⇒ irb3.0
* irb3.0
* ischroot
* iscsiadm ⇒ /sbin/iscsiadm
* ispell-wrapper
* ivtv-ctl
* join
* join-dctrl
* journalctl
* jpegtopnm
* jq
* json-patch-jsondiff
* json_pp
* json_xs
* jsondiff ⇒ /etc/alternatives/jsondiff
* jsonpatch
* jsonpointer
* jsonschema
* JxrDecApp
* JxrEncApp
* kbd_mode
* kbdinfo
* kbxutil
* keep-one-running ⇒ run-one
* kernel-install
* keyring
* kill
* killall
* kitty
* kmod
* kmodsign
* landscape-broker
* landscape-client
* landscape-config
* landscape-manager
* landscape-monitor
* landscape-package-changer
* landscape-package-reporter
* landscape-release-upgrader
* landscape-sysinfo
* last
* lastb ⇒ last
* lastlog
* lcf
* ld ⇒ x86_64-linux-gnu-ld
* ld.bfd ⇒ x86_64-linux-gnu-ld.bfd
* ld.gold ⇒ x86_64-linux-gnu-ld.gold
* ldd
* leaftoppm
* less
* lessecho
* lessfile ⇒ lesspipe
* lesskey
* lesspipe
* lexgrog
* libgcrypt-config
* libnetcfg
* libpng-config ⇒ libpng16-config
* libpng16-config
* libtool
* libtoolize
* link
* linux-boot-prober
* linux-check-removal
* linux-update-symlinks
* linux-version
* linux32 ⇒ setarch
* linux64 ⇒ setarch
* lispmtopgm
* listres
* livereload
* llc ⇒ ../lib/llvm-14/bin/llc
* llc-14 ⇒ ../lib/llvm-14/bin/llc
* lli ⇒ ../lib/llvm-14/bin/lli
* lli-14 ⇒ ../lib/llvm-14/bin/lli
* lli-child-target-14 ⇒ ../lib/llvm-14/bin/lli-child-target
* llvm-addr2line-14 ⇒ ../lib/llvm-14/bin/llvm-addr2line
* llvm-ar ⇒ ../lib/llvm-14/bin/llvm-ar
* llvm-ar-14 ⇒ ../lib/llvm-14/bin/llvm-ar
* llvm-as ⇒ ../lib/llvm-14/bin/llvm-as
* llvm-as-14 ⇒ ../lib/llvm-14/bin/llvm-as
* llvm-bcanalyzer ⇒ ../lib/llvm-14/bin/llvm-bcanalyzer
* llvm-bcanalyzer-14 ⇒ ../lib/llvm-14/bin/llvm-bcanalyzer
* llvm-bitcode-strip-14 ⇒ ../lib/llvm-14/bin/llvm-bitcode-strip
* llvm-c-test ⇒ ../lib/llvm-14/bin/llvm-c-test
* llvm-c-test-14 ⇒ ../lib/llvm-14/bin/llvm-c-test
* llvm-cat ⇒ ../lib/llvm-14/bin/llvm-cat
* llvm-cat-14 ⇒ ../lib/llvm-14/bin/llvm-cat
* llvm-cfi-verify ⇒ ../lib/llvm-14/bin/llvm-cfi-verify
* llvm-cfi-verify-14 ⇒ ../lib/llvm-14/bin/llvm-cfi-verify
* llvm-config ⇒ ../lib/llvm-14/bin/llvm-config
* llvm-config-14 ⇒ ../lib/llvm-14/bin/llvm-config
* llvm-cov ⇒ ../lib/llvm-14/bin/llvm-cov
* llvm-cov-14 ⇒ ../lib/llvm-14/bin/llvm-cov
* llvm-cvtres ⇒ ../lib/llvm-14/bin/llvm-cvtres
* llvm-cvtres-14 ⇒ ../lib/llvm-14/bin/llvm-cvtres
* llvm-cxxdump ⇒ ../lib/llvm-14/bin/llvm-cxxdump
* llvm-cxxdump-14 ⇒ ../lib/llvm-14/bin/llvm-cxxdump
* llvm-cxxfilt ⇒ ../lib/llvm-14/bin/llvm-cxxfilt
* llvm-cxxfilt-14 ⇒ ../lib/llvm-14/bin/llvm-cxxfilt
* llvm-cxxmap-14 ⇒ ../lib/llvm-14/bin/llvm-cxxmap
* llvm-debuginfod-find-14 ⇒ ../lib/llvm-14/bin/llvm-debuginfod-find
* llvm-diff ⇒ ../lib/llvm-14/bin/llvm-diff
* llvm-diff-14 ⇒ ../lib/llvm-14/bin/llvm-diff
* llvm-dis ⇒ ../lib/llvm-14/bin/llvm-dis
* llvm-dis-14 ⇒ ../lib/llvm-14/bin/llvm-dis
* llvm-dlltool ⇒ ../lib/llvm-14/bin/llvm-dlltool
* llvm-dlltool-14 ⇒ ../lib/llvm-14/bin/llvm-dlltool
* llvm-dwarfdump ⇒ ../lib/llvm-14/bin/llvm-dwarfdump
* llvm-dwarfdump-14 ⇒ ../lib/llvm-14/bin/llvm-dwarfdump
* llvm-dwp ⇒ ../lib/llvm-14/bin/llvm-dwp
* llvm-dwp-14 ⇒ ../lib/llvm-14/bin/llvm-dwp
* llvm-exegesis ⇒ ../lib/llvm-14/bin/llvm-exegesis
* llvm-exegesis-14 ⇒ ../lib/llvm-14/bin/llvm-exegesis
* llvm-extract ⇒ ../lib/llvm-14/bin/llvm-extract
* llvm-extract-14 ⇒ ../lib/llvm-14/bin/llvm-extract
* llvm-gsymutil-14 ⇒ ../lib/llvm-14/bin/llvm-gsymutil
* llvm-ifs-14 ⇒ ../lib/llvm-14/bin/llvm-ifs
* llvm-install-name-tool-14 ⇒ ../lib/llvm-14/bin/llvm-install-name-tool
* llvm-jitlink-14 ⇒ ../lib/llvm-14/bin/llvm-jitlink
* llvm-jitlink-executor-14 ⇒ ../lib/llvm-14/bin/llvm-jitlink-executor
* llvm-lib ⇒ ../lib/llvm-14/bin/llvm-lib
* llvm-lib-14 ⇒ ../lib/llvm-14/bin/llvm-lib
* llvm-libtool-darwin-14 ⇒ ../lib/llvm-14/bin/llvm-libtool-darwin
* llvm-link ⇒ ../lib/llvm-14/bin/llvm-link
* llvm-link-14 ⇒ ../lib/llvm-14/bin/llvm-link
* llvm-lipo-14 ⇒ ../lib/llvm-14/bin/llvm-lipo
* llvm-lto ⇒ ../lib/llvm-14/bin/llvm-lto
* llvm-lto-14 ⇒ ../lib/llvm-14/bin/llvm-lto
* llvm-lto2 ⇒ ../lib/llvm-14/bin/llvm-lto2
* llvm-lto2-14 ⇒ ../lib/llvm-14/bin/llvm-lto2
* llvm-mc ⇒ ../lib/llvm-14/bin/llvm-mc
* llvm-mc-14 ⇒ ../lib/llvm-14/bin/llvm-mc
* llvm-mca ⇒ ../lib/llvm-14/bin/llvm-mca
* llvm-mca-14 ⇒ ../lib/llvm-14/bin/llvm-mca
* llvm-ml-14 ⇒ ../lib/llvm-14/bin/llvm-ml
* llvm-modextract ⇒ ../lib/llvm-14/bin/llvm-modextract
* llvm-modextract-14 ⇒ ../lib/llvm-14/bin/llvm-modextract
* llvm-mt ⇒ ../lib/llvm-14/bin/llvm-mt
* llvm-mt-14 ⇒ ../lib/llvm-14/bin/llvm-mt
* llvm-nm ⇒ ../lib/llvm-14/bin/llvm-nm
* llvm-nm-14 ⇒ ../lib/llvm-14/bin/llvm-nm
* llvm-objcopy ⇒ ../lib/llvm-14/bin/llvm-objcopy
* llvm-objcopy-14 ⇒ ../lib/llvm-14/bin/llvm-objcopy
* llvm-objdump ⇒ ../lib/llvm-14/bin/llvm-objdump
* llvm-objdump-14 ⇒ ../lib/llvm-14/bin/llvm-objdump
* llvm-opt-report ⇒ ../lib/llvm-14/bin/llvm-opt-report
* llvm-opt-report-14 ⇒ ../lib/llvm-14/bin/llvm-opt-report
* llvm-otool-14 ⇒ ../lib/llvm-14/bin/llvm-otool
* llvm-pdbutil ⇒ ../lib/llvm-14/bin/llvm-pdbutil
* llvm-pdbutil-14 ⇒ ../lib/llvm-14/bin/llvm-pdbutil
* llvm-PerfectShuffle ⇒ ../lib/llvm-14/bin/llvm-PerfectShuffle
* llvm-PerfectShuffle-14 ⇒ ../lib/llvm-14/bin/llvm-PerfectShuffle
* llvm-profdata ⇒ ../lib/llvm-14/bin/llvm-profdata
* llvm-profdata-14 ⇒ ../lib/llvm-14/bin/llvm-profdata
* llvm-profgen-14 ⇒ ../lib/llvm-14/bin/llvm-profgen
* llvm-ranlib ⇒ ../lib/llvm-14/bin/llvm-ranlib
* llvm-ranlib-14 ⇒ ../lib/llvm-14/bin/llvm-ranlib
* llvm-rc ⇒ ../lib/llvm-14/bin/llvm-rc
* llvm-rc-14 ⇒ ../lib/llvm-14/bin/llvm-rc
* llvm-readelf ⇒ ../lib/llvm-14/bin/llvm-readelf
* llvm-readelf-14 ⇒ ../lib/llvm-14/bin/llvm-readelf
* llvm-readobj ⇒ ../lib/llvm-14/bin/llvm-readobj
* llvm-readobj-14 ⇒ ../lib/llvm-14/bin/llvm-readobj
* llvm-reduce-14 ⇒ ../lib/llvm-14/bin/llvm-reduce
* llvm-rtdyld ⇒ ../lib/llvm-14/bin/llvm-rtdyld
* llvm-rtdyld-14 ⇒ ../lib/llvm-14/bin/llvm-rtdyld
* llvm-sim-14 ⇒ ../lib/llvm-14/bin/llvm-sim
* llvm-size ⇒ ../lib/llvm-14/bin/llvm-size
* llvm-size-14 ⇒ ../lib/llvm-14/bin/llvm-size
* llvm-split ⇒ ../lib/llvm-14/bin/llvm-split
* llvm-split-14 ⇒ ../lib/llvm-14/bin/llvm-split
* llvm-stress ⇒ ../lib/llvm-14/bin/llvm-stress
* llvm-stress-14 ⇒ ../lib/llvm-14/bin/llvm-stress
* llvm-strings ⇒ ../lib/llvm-14/bin/llvm-strings
* llvm-strings-14 ⇒ ../lib/llvm-14/bin/llvm-strings
* llvm-strip ⇒ ../lib/llvm-14/bin/llvm-strip
* llvm-strip-14 ⇒ ../lib/llvm-14/bin/llvm-strip
* llvm-symbolizer ⇒ ../lib/llvm-14/bin/llvm-symbolizer
* llvm-symbolizer-14 ⇒ ../lib/llvm-14/bin/llvm-symbolizer
* llvm-tapi-diff-14 ⇒ ../lib/llvm-14/bin/llvm-tapi-diff
* llvm-tblgen ⇒ ../lib/llvm-14/bin/llvm-tblgen
* llvm-tblgen-14 ⇒ ../lib/llvm-14/bin/llvm-tblgen
* llvm-tli-checker-14 ⇒ ../lib/llvm-14/bin/llvm-tli-checker
* llvm-undname ⇒ ../lib/llvm-14/bin/llvm-undname
* llvm-undname-14 ⇒ ../lib/llvm-14/bin/llvm-undname
* llvm-windres-14 ⇒ ../lib/llvm-14/bin/llvm-windres
* llvm-xray ⇒ ../lib/llvm-14/bin/llvm-xray
* llvm-xray-14 ⇒ ../lib/llvm-14/bin/llvm-xray
* ln
* lnstat
* loadkeys
* loadunimap
* locale
* locale-check
* localectl
* localedef
* logger
* login
* loginctl
* logname
* look
* lowntfs-3g
* ls
* lsattr
* lsb_release
* lsblk
* lscpu
* lshw
* lsinitramfs
* lsipc
* lslocks
* lslogins
* lsmem
* lsmod ⇒ kmod
* lsns
* lsof
* lspci
* lspgpot
* lsusb
* lsw
* lto-dump-11 ⇒ x86_64-linux-gnu-lto-dump-11
* lto-dump-12 ⇒ x86_64-linux-gnu-lto-dump-12
* lua ⇒ /etc/alternatives/lua-interpreter
* lua-any
* lua5.1
* luac ⇒ /etc/alternatives/lua-compiler
* luac5.1
* luakit
* luarocks
* luarocks-5.1
* luarocks-5.2
* luarocks-5.3
* luarocks-5.4
* luarocks-admin
* luarocks-admin-5.1
* luarocks-admin-5.2
* luarocks-admin-5.3
* luarocks-admin-5.4
* luit
* lwp-download
* lwp-dump
* lwp-mirror
* lwp-request
* lxappearance
* lxpolkit
* lxsettings-daemon
* lzcat ⇒ /etc/alternatives/lzcat
* lzcmp ⇒ /etc/alternatives/lzcmp
* lzdiff ⇒ /etc/alternatives/lzdiff
* lzegrep ⇒ /etc/alternatives/lzegrep
* lzfgrep ⇒ /etc/alternatives/lzfgrep
* lzgrep ⇒ /etc/alternatives/lzgrep
* lzless ⇒ /etc/alternatives/lzless
* lzma ⇒ /etc/alternatives/lzma
* lzmainfo
* lzmore ⇒ /etc/alternatives/lzmore
* m4
* macptopbm
* mailmail3
* make
* make-first-existing-target
* makeconv
* man
* man-recode
* mandb
* manifest
* manpath
* mapscrn
* markdown_py
* mawk
* mcookie
* md5sum
* md5sum.textutils ⇒ md5sum
* mdatopbm
* mdig
* mech-dump
* media-ctl
* memusage
* memusagestat
* mesa-overlay-control.py
* mesg
* mgrtopbm
* migrate-pubring-from-classic-gpg
* mimeopen
* mimetype
* min ⇒ /opt/Min/min
* mk_modmap
* mkdir
* mkdocs
* mkfifo
* mkfontdir
* mkfontscale
* mknod
* mksquashfs
* mktemp
* mmcli
* mogrify ⇒ /etc/alternatives/mogrify
* mogrify-im6 ⇒ /etc/alternatives/mogrify-im6
* mogrify-im6.q16
* mokutil
* monitor-sensor
* montage ⇒ /etc/alternatives/montage
* montage-im6 ⇒ /etc/alternatives/montage-im6
* montage-im6.q16
* more
* mount
* mountpoint
* mpicalc
* mt ⇒ /etc/alternatives/mt
* mt-gnu
* mtp-albumart
* mtp-albums
* mtp-connect
* mtp-delfile ⇒ mtp-connect
* mtp-detect
* mtp-emptyfolders
* mtp-files
* mtp-filetree
* mtp-folders
* mtp-format
* mtp-getfile ⇒ mtp-connect
* mtp-getplaylist
* mtp-hotplug
* mtp-newfolder ⇒ mtp-connect
* mtp-newplaylist
* mtp-playlists
* mtp-reset
* mtp-sendfile ⇒ mtp-connect
* mtp-sendtr ⇒ mtp-connect
* mtp-thumb
* mtp-tracks
* mtp-trexist
* mtr
* mtr-packet
* mtrace
* mtvtoppm
* mv
* nala
* namei
* nano
* nawk ⇒ /etc/alternatives/nawk
* nc ⇒ /etc/alternatives/nc
* nc.openbsd
* ncurses5-config ⇒ ncurses6-config
* ncurses6-config
* ncursesw5-config ⇒ ncursesw6-config
* ncursesw6-config
* neotoppm
* neqn
* netcat ⇒ /etc/alternatives/netcat
* netstat
* networkctl
* networkd-dispatcher
* newgrp
* NF ⇒ col1
* ngettext
* nice
* nisdomainname ⇒ hostname
* nl
* nm ⇒ x86_64-linux-gnu-nm
* nohup
* normalizer
* nose2-3
* nose2-3.8
* not-14 ⇒ ../lib/llvm-14/bin/not
* nproc
* nroff
* nsenter
* nslookup
* nspr-config
* nss-config
* nstat
* nsupdate
* ntfs-3g
* ntfs-3g.probe
* ntfscat
* ntfscluster
* ntfscmp
* ntfsdecrypt
* ntfsfallocate
* ntfsfix
* ntfsinfo
* ntfsls
* ntfsmove
* ntfsrecover
* ntfssecaudit
* ntfstruncate
* ntfsusermap
* ntfswipe
* numfmt
* nvidia-bug-report.sh
* nvidia-container-cli
* nvidia-container-runtime
* nvidia-container-runtime-hook
* nvidia-container-toolkit ⇒ /usr/bin/nvidia-container-runtime-hook
* nvidia-ctk
* nvidia-cuda-mps-control
* nvidia-cuda-mps-server
* nvidia-debugdump
* nvidia-detector
* nvidia-ngx-updater
* nvidia-persistenced
* nvidia-powerd
* nvidia-settings
* nvidia-sleep.sh
* nvidia-smi
* nvidia-xconfig
* nvlc
* obj2yaml ⇒ ../lib/llvm-14/bin/obj2yaml
* obj2yaml-14 ⇒ ../lib/llvm-14/bin/obj2yaml
* objcopy ⇒ x86_64-linux-gnu-objcopy
* objdump ⇒ x86_64-linux-gnu-objdump
* oclock
* od
* oem-getlogs
* on_ac_power ⇒ /sbin/on_ac_power
* open ⇒ /etc/alternatives/open
* open-wezterm-here
* opencv_annotation
* opencv_interactive-calibration
* opencv_model_diagnostics
* opencv_version
* opencv_visualisation
* opencv_waldboost_detector
* openssl
* openvt
* opt ⇒ ../lib/llvm-14/bin/opt
* opt-14 ⇒ ../lib/llvm-14/bin/opt
* orc-bugreport
* orcc
* os-prober
* p11-kit
* pa-info
* pacat
* pacmd
* pactl
* padsp
* pager ⇒ /etc/alternatives/pager
* palmtopnm
* pamcut
* pamdeinterlace
* pamdice
* pamfile
* pamoil
* pamon ⇒ pacat
* pamstack
* pamstretch
* pamstretch-gen
* paperconf
* paplay ⇒ pacat
* parec ⇒ pacat
* parecord ⇒ pacat
* partx
* passwd
* paste
* pastebinit
* pasuspender
* patch
* pathchk
* pavucontrol
* pax11publish
* pbget ⇒ pbput
* pbmclean
* pbmlife
* pbmmake
* pbmmask
* pbmpage
* pbmpscale
* pbmreduce
* pbmtext
* pbmtextps
* pbmto10x
* pbmtoascii
* pbmtoatk
* pbmtobbnbg
* pbmtocmuwm
* pbmtoepsi
* pbmtoepson
* pbmtog3
* pbmtogem
* pbmtogo
* pbmtoicon
* pbmtolj
* pbmtomacp
* pbmtomda
* pbmtomgr
* pbmtonokia
* pbmtopgm
* pbmtopi3
* pbmtoplot
* pbmtoppa
* pbmtopsg3
* pbmtoptx
* pbmtowbmp
* pbmtox10bm
* pbmtoxbm
* pbmtoybm
* pbmtozinc
* pbmupc
* pbput
* pbputs ⇒ pbput
* pcre-config
* pcre2-config
* pcxtoppm
* pdb3 ⇒ pdb3.10
* pdb3.10 ⇒ ../lib/python3.10/pdb.py
* pdf2dsc
* pdf2ps
* peekfd
* perl
* perl5.34-x86_64-linux-gnu
* perl5.34.0
* perlbug
* perldoc
* perli11ndoc
* perlivp
* perlthanks
* pf2afm
* pfbtopfa
* pgmbentley
* pgmcrater
* pgmedge
* pgmenhance
* pgmhist
* pgmkernel
* pgmnoise
* pgmnorm ⇒ pnmnorm
* pgmoil ⇒ pamoil
* pgmramp
* pgmslice
* pgmtexture
* pgmtofs
* pgmtolispm
* pgmtopbm
* pgmtoppm
* pgrep
* pi1toppm
* pi3topbm
* pic
* pico ⇒ /etc/alternatives/pico
* picom
* picom-trans
* piconv
* pidof ⇒ /sbin/killall5
* pidwait
* pigz
* pinentry ⇒ /etc/alternatives/pinentry
* pinentry-curses
* ping
* ping4 ⇒ ping
* ping6 ⇒ ping
* pinky
* pip
* pip3
* pip3.10
* pipewire
* pipewire-aes67 ⇒ pipewire
* pipewire-avb ⇒ pipewire
* pipewire-media-session
* pipewire-pulse ⇒ pipewire
* pipx
* pjtoppm
* pkaction
* pkcheck
* pkcon
* pkexec
* pkg-config
* pkgdata
* pkill ⇒ pgrep
* pkmon
* pkttyagent
* pl2pm
* pldd
* plymouth
* pmap
* png-fix-itxt
* pngfix
* pngtopnm
* pnmalias
* pnmarith
* pnmcat
* pnmcolormap
* pnmcomp
* pnmconvol
* pnmcrop
* pnmcut
* pnmdepth
* pnmenlarge
* pnmfile
* pnmflip
* pnmgamma
* pnmhisteq
* pnmhistmap
* pnmindex
* pnminterp ⇒ pamstretch
* pnminterp-gen ⇒ pamstretch-gen
* pnminvert
* pnmmargin
* pnmmontage
* pnmnlfilt
* pnmnoraw ⇒ pnmtoplainpnm
* pnmnorm
* pnmpad
* pnmpaste
* pnmpsnr
* pnmquant
* pnmremap
* pnmrotate
* pnmscale
* pnmscalefixed
* pnmshear
* pnmsmooth
* pnmsplit
* pnmtile
* pnmtoddif
* pnmtofiasco
* pnmtofits
* pnmtojpeg
* pnmtopalm
* pnmtoplainpnm
* pnmtopng
* pnmtops
* pnmtorast
* pnmtorle
* pnmtosgi
* pnmtosir
* pnmtotiff
* pnmtotiffcmyk
* pnmtoxwd
* pod2html
* pod2man
* pod2text
* pod2usage
* podchecker
* pollinate
* POST ⇒ lwp-request
* pphs
* ppm3d
* ppmbrighten
* ppmchange
* ppmcie
* ppmcolormask
* ppmcolors
* ppmdim
* ppmdist
* ppmdither
* ppmfade
* ppmflash
* ppmforge
* ppmhist
* ppmlabel
* ppmmake
* ppmmix
* ppmnorm ⇒ pnmnorm
* ppmntsc
* ppmpat
* ppmquant
* ppmquantall
* ppmqvga
* ppmrainbow
* ppmrelief
* ppmshadow
* ppmshift
* ppmspread
* ppmtoacad
* ppmtobmp
* ppmtoeyuv
* ppmtogif
* ppmtoicr
* ppmtoilbm
* ppmtojpeg ⇒ pnmtojpeg
* ppmtoleaf
* ppmtolj
* ppmtomap
* ppmtomitsu
* ppmtompeg
* ppmtoneo
* ppmtopcx
* ppmtopgm
* ppmtopi1
* ppmtopict
* ppmtopj
* ppmtopuzz
* ppmtorgb3
* ppmtosixel
* ppmtotga
* ppmtouil
* ppmtowinicon
* ppmtoxpm
* ppmtoyuv
* ppmtoyuvsplit
* ppmtv
* pr
* precat
* preconv
* preunzip
* prezip
* prezip-bin
* prime-select
* prime-supported
* printafm
* printenv
* printf
* prlimit
* pro ⇒ ubuntu-advantage
* proj
* projinfo
* projsync
* prove
* proxy
* prtstat
* ps
* ps2ascii
* ps2epsi
* ps2pdf
* ps2pdf12
* ps2pdf13
* ps2pdf14
* ps2pdfwr
* ps2ps
* ps2ps2
* ps2txt ⇒ ps2ascii
* psfaddtable ⇒ psfxtable
* psfgettable ⇒ psfxtable
* psfstriptable ⇒ psfxtable
* psfxtable
* psidtopgm
* pslog
* pstopnm
* pstree
* pstree.x11 ⇒ pstree
* ptar
* ptardiff
* ptargrep
* ptx
* pulseaudio
* purge-old-kernels
* pw-cat
* pw-cli
* pw-config
* pw-dot
* pw-dsdplay ⇒ pw-cat
* pw-dump
* pw-encplay ⇒ pw-cat
* pw-jack
* pw-link
* pw-loopback
* pw-metadata
* pw-mididump
* pw-midiplay ⇒ pw-cat
* pw-midirecord ⇒ pw-cat
* pw-mon
* pw-play ⇒ pw-cat
* pw-profiler
* pw-record ⇒ pw-cat
* pw-reserve
* pw-top
* pwd
* pwdx
* py.test-3 ⇒ pytest-3
* py3clean
* py3compile
* py3versions ⇒ ../share/python3/py3versions.py
* pybabel ⇒ /etc/alternatives/pybabel
* pybabel-python3
* pydoc3 ⇒ pydoc3.10
* pydoc3.10
* pyflakes3
* pygettext3 ⇒ pygettext3.10
* pygettext3.10
* pygmentize
* pyhtmlizer3
* pyserial-miniterm
* pyserial-ports
* pytest-3
* python-argcomplete-check-easy-install-script3
* python-argcomplete-tcsh3
* python3 ⇒ python3.10
* python3-commonmark
* python3-config ⇒ python3.10-config
* python3-coverage
* python3.10
* python3.10-config ⇒ x86_64-linux-gnu-python3.10-config
* python3.10-coverage
* pzstd
* qalc
* qalculate ⇒ /etc/alternatives/qalculate
* qalculate-gtk
* qrttoppm
* quirks-handler
* qutebrowser
* qvlc
* racc3.0
* rake
* rake3.0
* ranlib ⇒ x86_64-linux-gnu-ranlib
* rasttopnm
* rawtopgm
* rawtoppm
* rbash ⇒ bash
* rbs3.0
* rcp ⇒ /etc/alternatives/rcp
* rdma
* rdoc ⇒ rdoc3.0
* rdoc3.0
* rds-ctl
* readelf ⇒ x86_64-linux-gnu-readelf
* readlink
* realpath
* red
* register-python-argcomplete3
* rendercheck
* renice
* rescan-scsi-bus.sh
* reset ⇒ tset
* resizecons
* resizepart
* resolvectl
* rev
* rgb3toppm
* rgrep
* ri ⇒ ri3.0
* ri3.0
* rletopnm
* rlogin ⇒ /etc/alternatives/rlogin
* rm
* rmdir
* rnano ⇒ nano
* rofi
* rofi-sensible-terminal
* rofi-theme-selector
* rootlesskit
* rootlesskit-docker-proxy
* routef
* routel
* rpcgen
* rpi-imager
* rrsync
* rsh ⇒ /etc/alternatives/rsh
* rstart
* rstartd
* rsync
* rsync-ssl
* rtstat ⇒ lnstat
* ruby ⇒ ruby3.0
* ruby3.0
* run-one
* run-one-constantly ⇒ run-one
* run-one-until-failure ⇒ run-one
* run-one-until-success ⇒ run-one
* run-parts
* run-this-one ⇒ run-one
* run-with-aspell
* runc
* runcon
* rview ⇒ /etc/alternatives/rview
* rvim ⇒ /etc/alternatives/rvim
* rvlc
* sanstats ⇒ ../lib/llvm-14/bin/sanstats
* sanstats-14 ⇒ ../lib/llvm-14/bin/sanstats
* savelog
* sbattach
* sbigtopgm
* sbkeysync
* sbsiglist
* sbsign
* sbvarsign
* sbverify
* scandeps
* scp
* screen
* screendump
* script
* scriptlive
* scriptreplay
* scsi_logging_level
* scsi_mandat
* scsi_readcap
* scsi_ready
* scsi_satl
* scsi_start
* scsi_stop
* scsi_temperature
* sdiff
* sed
* select-default-iwrap
* select-editor
* sendiso
* sensible-browser
* sensible-editor
* sensible-pager
* seq
* session-migration
* sessreg
* setarch
* setfont
* setkeycodes
* setleds
* setlogcons
* setmetamode
* setpci
* setpriv
* setsid
* setterm
* setupcon
* setxkbmap
* sftp
* sg ⇒ newgrp
* sg_bg_ctl
* sg_compare_and_write
* sg_copy_results
* sg_dd
* sg_decode_sense
* sg_emc_trespass
* sg_format
* sg_get_config
* sg_get_elem_status
* sg_get_lba_status
* sg_ident
* sg_inq
* sg_logs
* sg_luns
* sg_map
* sg_map26
* sg_modes
* sg_opcodes
* sg_persist
* sg_prevent
* sg_raw
* sg_rbuf
* sg_rdac
* sg_read
* sg_read_attr
* sg_read_block_limits
* sg_read_buffer
* sg_read_long
* sg_readcap
* sg_reassign
* sg_referrals
* sg_rep_pip
* sg_rep_zones
* sg_requests
* sg_reset
* sg_reset_wp
* sg_rmsn
* sg_rtpg
* sg_safte
* sg_sanitize
* sg_sat_identify
* sg_sat_phy_event
* sg_sat_read_gplog
* sg_sat_set_features
* sg_scan
* sg_seek
* sg_senddiag
* sg_ses
* sg_ses_microcode
* sg_start
* sg_stpg
* sg_stream_ctl
* sg_sync
* sg_test_rwbuf
* sg_timestamp
* sg_turs
* sg_unmap
* sg_verify
* sg_vpd
* sg_wr_mode
* sg_write_buffer
* sg_write_long
* sg_write_same
* sg_write_verify
* sg_write_x
* sg_xcopy
* sg_zone
* sginfo
* sgitopnm
* sgm_dd
* sgp_dd
* sh ⇒ dash
* sha1sum
* sha224sum
* sha256sum
* sha384sum
* sha512sum
* shasum
* shotwell
* showconsolefont
* showfigfonts
* showkey
* showrgb
* shred
* shuf
* sigtool
* sirtopnm
* size ⇒ x86_64-linux-gnu-size
* skill
* slabtop
* sldtoppm
* sleep
* slirp4netns
* slock
* slogin ⇒ ssh
* smproxy
* snap
* snapctl ⇒ ../lib/snapd/snapctl
* snapfuse
* snice ⇒ skill
* soelim
* sort
* sort-dctrl
* sos
* sos-collector
* sosreport
* sotruss
* spa-acp-tool
* spa-inspect
* spa-json-dump
* spa-monitor
* spa-resample
* spctoppm
* speaker-test
* splain
* split
* split-file-14 ⇒ ../lib/llvm-14/bin/split-file
* splitfont
* sprof
* sprop
* sputoppm
* sqfscat ⇒ unsquashfs
* sqfstar ⇒ mksquashfs
* ss
* sselp
* ssh
* ssh-add
* ssh-agent
* ssh-argv0
* ssh-copy-id
* ssh-import-id
* ssh-import-id-gh
* ssh-import-id-lp
* ssh-keygen
* ssh-keyscan
* ssid
* st4topgm
* start-pulseaudio-x11
* startx
* stat
* static-sh ⇒ busybox
* stdbuf
* stest
* strace
* strace-log-merge
* stream ⇒ /etc/alternatives/stream
* stream-im6 ⇒ /etc/alternatives/stream-im6
* stream-im6.q16
* streamzip
* strings ⇒ x86_64-linux-gnu-strings
* strip ⇒ x86_64-linux-gnu-strip
* strip-ansi-escapes
* stty
* su
sudo
sudoedit ⇒ sudo
sudoreplay
* sum
* svlc
* swarp
* sync
* systemctl
* systemd ⇒ /lib/systemd/systemd
* systemd-analyze
* systemd-ask-password
* systemd-cat
* systemd-cgls
* systemd-cgtop
* systemd-cryptenroll
* systemd-delta
* systemd-detect-virt
* systemd-escape
* systemd-hwdb
* systemd-id128
* systemd-inhibit
* systemd-machine-id-setup
* systemd-mount
* systemd-notify
* systemd-path
* systemd-run
* systemd-socket-activate
* systemd-stdio-bridge
* systemd-sysext
* systemd-sysusers
* systemd-tmpfiles
* systemd-tty-ask-password-agent
* systemd-umount ⇒ systemd-mount
* tabbed ⇒ /etc/alternatives/tabbed
* tabbed.default
* tabbed.meta
* tabs
* tac
* tail
* tar
* taskset
* tbl
* tbl-dctrl
* tclsh ⇒ tclsh8.6
* tclsh8.6
* tcltk-depends
* tcpdump
* tee
* telnet ⇒ /etc/alternatives/telnet
* telnet.netkit
* tempfile
* test
* testlibraw
* tgatoppm
* thinkjettopbm
* tic
* tifftopnm
* time
* timedatectl
* timeout
* tkconch3
* tload
* tmux
* tnftp
* toe
* top
* touch
* tput
* tr
* tracepath
* transset
* trial3
* troff
* true
* truncate
* trust
* tset
* tsort
* tty
* twist3
* twistd3
* typeprof3.0
* tzselect
* ua ⇒ ubuntu-advantage
* ubuntu-advantage
* ubuntu-bug ⇒ apport-bug
* ubuntu-core-launcher ⇒ ../lib/snapd/snap-confine
* ubuntu-distro-info
* ubuntu-drivers
* ubuntu-security-status
* ucf
* ucfq
* ucfr
* uclampset
* uconv
* ucs2any
* udevadm
* udisksctl
* ul
* umount
* uname
* unattended-upgrade
* unattended-upgrades ⇒ unattended-upgrade
* uncompress
* unexpand
* unicode_start
* unicode_stop
* uniq
* unity-scope-loader
* unlink
* unlzma ⇒ /etc/alternatives/unlzma
* unmkinitramfs
* unpigz
* unshare
* unsquashfs
* unxz ⇒ xz
* unzip
* unzipsfx
* unzstd ⇒ zstd
* update-alternatives
* update-desktop-database
* update-gconf-defaults
* update-mime-database
* update-perl-sax-parsers
* update_rubygems
* upower
* uptime
* usb-devices
* usbhid-dump
* usbreset
* users
* utmpdump
* uuidgen
* uuidparse
* v4l2-compliance
* v4l2-ctl
* v4l2-sysfs-path
* v4l2loopback-ctl
* vcs-run
* vdir
* verify-uselistorder ⇒ ../lib/llvm-14/bin/verify-uselistorder
* verify-uselistorder-14 ⇒ ../lib/llvm-14/bin/verify-uselistorder
* VGAuthService
* vi ⇒ /etc/alternatives/vi
* vieb ⇒ /opt/Vieb/vieb
* view ⇒ /etc/alternatives/view
* viewres
* vigpg
* vim ⇒ /etc/alternatives/vim
* vim.basic
* vim.tiny
* vimdiff ⇒ /etc/alternatives/vimdiff
* vimtutor
* vlc
* vlc-wrapper
* vm-support
* vmhgfs-fuse
* vmstat
* vmtoolsd
* vmware-alias-import
* vmware-checkvm
* vmware-hgfsclient
* vmware-namespace-cmd
* vmware-rpctool
* vmware-toolbox-cmd
* vmware-vgauth-cmd
* vmware-vmblock-fuse
* vmware-xferlogs
* w
* wall
* watch
* watchgnupg
* wayland-scanner
* wbmptopbm
* wc
* wdctl
* wezterm
* wezterm-gui
* wezterm-mux-server
* wget
* whatis
* whereis
* which ⇒ /etc/alternatives/which
* which.debianutils
* whiptail
* who
* whoami
* wifi-status
* winicontoppm
* wish ⇒ wish8.6
* wish8.6
* wl-copy
* wl-paste
* wmctrl
* wmname
* word-list-compress
* wpa_passphrase
* write ⇒ /etc/alternatives/write
* write.ul
* X ⇒ Xorg
* x-session-manager ⇒ /etc/alternatives/x-session-manager
* x-terminal-emulator ⇒ /etc/alternatives/x-terminal-emulator
* x-window-manager ⇒ /etc/alternatives/x-window-manager
* x-www-browser ⇒ /etc/alternatives/x-www-browser
* x11perf
* x11perfcomp
* x86_64 ⇒ setarch
* x86_64-linux-gnu-addr2line
* x86_64-linux-gnu-ar
* x86_64-linux-gnu-as
* x86_64-linux-gnu-c++filt
* x86_64-linux-gnu-cpp ⇒ cpp-11
* x86_64-linux-gnu-cpp-11
* x86_64-linux-gnu-cpp-12
* x86_64-linux-gnu-dwp
* x86_64-linux-gnu-elfedit
* x86_64-linux-gnu-g++ ⇒ g++-11
* x86_64-linux-gnu-g++-11
* x86_64-linux-gnu-gcc ⇒ gcc-11
* x86_64-linux-gnu-gcc-11
* x86_64-linux-gnu-gcc-12
* x86_64-linux-gnu-gcc-ar ⇒ gcc-ar-11
* x86_64-linux-gnu-gcc-ar-11
* x86_64-linux-gnu-gcc-ar-12
* x86_64-linux-gnu-gcc-nm ⇒ gcc-nm-11
* x86_64-linux-gnu-gcc-nm-11
* x86_64-linux-gnu-gcc-nm-12
* x86_64-linux-gnu-gcc-ranlib ⇒ gcc-ranlib-11
* x86_64-linux-gnu-gcc-ranlib-11
* x86_64-linux-gnu-gcc-ranlib-12
* x86_64-linux-gnu-gcov ⇒ gcov-11
* x86_64-linux-gnu-gcov-11
* x86_64-linux-gnu-gcov-12
* x86_64-linux-gnu-gcov-dump ⇒ gcov-dump-11
* x86_64-linux-gnu-gcov-dump-11
* x86_64-linux-gnu-gcov-dump-12
* x86_64-linux-gnu-gcov-tool ⇒ gcov-tool-11
* x86_64-linux-gnu-gcov-tool-11
* x86_64-linux-gnu-gcov-tool-12
* x86_64-linux-gnu-gold ⇒ x86_64-linux-gnu-ld.gold
* x86_64-linux-gnu-gprof
* x86_64-linux-gnu-ld ⇒ x86_64-linux-gnu-ld.bfd
* x86_64-linux-gnu-ld.bfd
* x86_64-linux-gnu-ld.gold
* x86_64-linux-gnu-lto-dump-11
* x86_64-linux-gnu-lto-dump-12
* x86_64-linux-gnu-nm
* x86_64-linux-gnu-objcopy
* x86_64-linux-gnu-objdump
* x86_64-linux-gnu-pkg-config ⇒ /usr/share/pkg-config-crosswrapper
* x86_64-linux-gnu-python3-config ⇒ x86_64-linux-gnu-python3.10-config
* x86_64-linux-gnu-python3.10-config
* x86_64-linux-gnu-ranlib
* x86_64-linux-gnu-readelf
* x86_64-linux-gnu-size
* x86_64-linux-gnu-strings
* x86_64-linux-gnu-strip
* x86_64-pc-linux-gnu-pkg-config
* xargs
* xauth
* xbiff
* xbmtopbm
* xcalc
* xclip
* xclip-copyfile
* xclip-cutfile
* xclip-pastefile
* xclipboard
* xclock
* xcmsdb
* xconsole
* xcursorgen
* xcutsel
* xdg-dbus-proxy
* xdg-desktop-icon
* xdg-desktop-menu
* xdg-email
* xdg-icon-resource
* xdg-mime
* xdg-open
* xdg-screensaver
* xdg-settings
* xdg-user-dir
* xdg-user-dirs-update
* xditview
* xdotool
* xdpyinfo
* xdriinfo
* xedit
* xev
* xeyes
* xfd
* xfontsel
* xgamma
* xgc
* xhost
* ximtoppm
* xinit
* xinput
* xkbbell
* xkbcomp
* xkbevd
* xkbprint
* xkbvleds
* xkbwatch
* xkeystone
* xkill
* xload
* xlogo
* xlsatoms
* xlsclients
* xlsfonts
* xmag
* xman
* xmessage
* xml2-config
* xmlsec1-config
* xmodmap
* xmore
* Xorg
* xpmtoppm
* xprop
* xrandr
* xrdb
* xrefresh
* xsel
* xset
* xsetmode
* xsetpointer
* xsetroot
* xslt-config
* xsm
* xss-lock
* xssstate
* xstdcmap
* xsubpp
* xvidtune
* xvinfo
* xvminitoppm
* xwd
* xwdtopnm
* xwininfo
* xwud
* xxd
* xz
* xzcat ⇒ xz
* xzcmp ⇒ xzdiff
* xzdiff
* xzegrep ⇒ xzgrep
* xzfgrep ⇒ xzgrep
* xzgrep
* xzless
* xzmore
* yaml-bench-14 ⇒ ../lib/llvm-14/bin/yaml-bench
* yaml2obj ⇒ ../lib/llvm-14/bin/yaml2obj
* yaml2obj-14 ⇒ ../lib/llvm-14/bin/yaml2obj
* ybmtopbm
* yes
* ypdomainname ⇒ hostname
* yuvsplittoppm
* yuvtoppm
* zcat
* zcmp
* zdiff
* zdump
* zegrep
* zeisstopnm
* zfgrep
* zforce
* zgrep
* zip
* zipcloak
* zipdetails
* zipgrep
* zipinfo
* zipnote
* zipsplit
* zless
* zmore
* znew
* zstd
* zstdcat ⇒ zstd
* zstdgrep
* zstdless
* zstdmt ⇒ zstd

/sbin

/usr/games
* lolcat

/snap/bin
* ubports-installer
* lxc
* lxd.lxc
* lxd.migrate
* lxd.lxc-to-lxd
* lxd.check-kernel
* lxd
* android-studio
* lxd.buginfo
* lxd.benchmark
* Manual .deb installs
* epson-inkjet-printer-escpr_1.8.1-1_amd64.deb
* epson-printer-utility_1.1.2-1_amd64.deb
* min-1.29.0-amd64.deb
* ungoogled-chromium_112.0.5615.165-1_amd64.deb
* vieb_10.4.0_amd64.deb
* NIXPKGS_ALLOW_UNFREE=1 nix profile install --impure --override-input nixpkgs nixpkgs/nixos-23.11 --show-trace github:nix-community/nixGL#nixGLNvidia
* [NixOS/nixpkgs/issues/122671](https://github.com/NixOS/nixpkgs/issues/122671)
* Teams CLI creation?
* [fossteams/teams-cli](https://github.com/fossteams/teams-cli)
* [fossteams](https://github.com/fossteams)
* [learn.microsoft.com/en-us/graph/api/resources/teams-api-overview?view=graph-rest-1.0](https://learn.microsoft.com/en-us/graph/api/resources/teams-api-overview?view=graph-rest-1.0)
* [learn.microsoft.com/en-us/graph/use-the-api](https://learn.microsoft.com/en-us/graph/use-the-api)
* [learn.microsoft.com/en-us/graph/overview](https://learn.microsoft.com/en-us/graph/overview)
* [developer.microsoft.com/en-us/graph/](https://developer.microsoft.com/en-us/graph/)
* [c-sharpcorner.com/article/managing-microsoft-teams-with-office-365-cli-commands/](https://www.c-sharpcorner.com/article/managing-microsoft-teams-with-office-365-cli-commands/)
* [pnp.github.io/](https://pnp.github.io/)
* [pnp/cli-microsoft365](https://github.com/pnp/cli-microsoft365)

/var/snap/landscape-client/common/etc/landscape-client.conf  :
* [client]
* log_level = info
* url = * [landscape.knecon.com/message-system](https://landscape.knecon.com/message-system)
* ping_url = * [landscape.knecon.com/ping](https://landscape.knecon.com/ping)
* data_path = /var/lib/landscape/client
* computer_title = stellaris15
* account_name = standalone
* registration_key = SpeakFriendAndEnter
* include_manager_plugins = ScriptExecution
* AppImages: Android_File_Transfer_For_Linux, ubports-installer, Vieb, xplorer, balenaEtcher

+++ b/redai/backend/image/utils.py

@@ -80,7 +80,7 @@ def hash_image(image: Image):
* Returns:

 """
* image = image.resize((10, 10), Image.ANTIALIAS)
* image = image.resize((10, 10), Image.LANCZOS)
* image = image.convert("L")
* pixel_data = list(image.getdata())
* avg_pixel = sum(pixel_data) / len(pixel_data)
* [i3wm.org/docs/repositories.html](https://i3wm.org/docs/repositories.html)
* [DT](https://www.youtube.com/watch?v=AHvwxc62lDQ&t=135s)
* [thexavier666/i3_ubuntu_server](https://github.com/thexavier666/i3_ubuntu_server)
* [hackification.io/blog/2020/10/09/installing-the-i3-tiling-window-manager-on-ubuntu-server/](https://www.hackification.io/blog/2020/10/09/installing-the-i3-tiling-window-manager-on-ubuntu-server/)
* [kifarunix.com/install-i3-windows-manager-on-ubuntu/](https://kifarunix.com/install-i3-windows-manager-on-ubuntu/)
* [linuxfordevices.com/tutorials/ubuntu/install-i3-window-manager](https://www.linuxfordevices.com/tutorials/ubuntu/install-i3-window-manager)
* [linux.how2shout.com/how-to-install-i3-window-manager-ubuntu-20-04-or-debian-11/](https://linux.how2shout.com/how-to-install-i3-window-manager-ubuntu-20-04-or-debian-11/)
* [linuxways.net/ubuntu/how-to-install-i3-on-ubuntu/](https://linuxways.net/ubuntu/how-to-install-i3-on-ubuntu/)
* [askubuntu.com/questions/1440313/ubuntu-server-22-10-failed-to-start-session](https://askubuntu.com/questions/1440313/ubuntu-server-22-10-failed-to-start-session)
* [askubuntu.com/questions/1397503/i3-radius-dependancy-issues](https://askubuntu.com/questions/1397503/i3-radius-dependancy-issues)
* [unix.stackexchange.com/questions/593534/changing-i3-startup-terminal](https://unix.stackexchange.com/questions/593534/changing-i3-startup-terminal)
* [docs.qtile.org/en/latest/manual/install/ubuntu.html](http://docs.qtile.org/en/latest/manual/install/ubuntu.html)
* [vpsie.com/knowledge-base/how-to-install-qtile-on-ubuntu-20-04-lts/](https://vpsie.com/knowledge-base/how-to-install-qtile-on-ubuntu-20-04-lts/)
* [Work On Ubuntu FASTER and MORE EFFICIENTLY with tiling window managersTiling Window Managers - In this video I'll explain what they are, why I think using tiling window managers is more efficient, and show how to install 2 of my favorites on Ubuntu Linux.
* For the demo of installing i3 on Ubuntu, skip to 4:28
* Demo on installing and configuring bspwm - 7:15
* Extra links
* Archlinux Comparison of Tiling Window Managers: [wiki.archlinux.org/index.php/Comparison_of_tiling_window_managers](https://wiki.archlinux.org/index.php/Comparison_of_tiling_window_managers)
* At 9:10, the path to default bspwm and sxhdc config files on ubuntu  is /usr/share/doc/bspwm/examples
* Lemonbar documentation: [LemonBoy/bar](https://github.com/LemonBoy/bar)
* i3wm: [i3/i3](https://github.com/i3/i3)
* bspwm: [...](https://github.com/baskerville/bspwm)
        [...](https://www.youtube.com/watch?v=-PGlrtoFXK4))
* [tecadmin.net/installing-lightdm-on-ubuntu/](https://tecadmin.net/installing-lightdm-on-ubuntu/)

```jsx
sudo apt update && sudo apt upgrade
sudo apt install --no-install-recommends lightdm-gtk-greeter
sudo apt install --no-install-recommends lightdm
sudo apt install --no-install-recommends xorg xinit
sudo dpkg-reconfigure lightdm

/usr/lib/apt/apt-helper download-file [debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb](https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb) keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb
rm keyring.deb
echo "deb [debian.sur5r.net/i3/](http://debian.sur5r.net/i3/) $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3
sudo apt install picom
echo "exec i3" >> ~/.xinitrc
sudo apt install libx11-dev libxft-dev libharfbuzz-dev libxinerama-dev build-essential
git clone [gitlab.com/dwt1/dmenu-distrotube.git](https://gitlab.com/dwt1/dmenu-distrotube.git)
cd dmenu-distrotube
sudo make clean install
sudo apt install kitty
echo 'export TERMINAL="/usr/bin/kitty"' >> ~/.bashrc && source ~/.bashrc

```
* → replace dmenu with rofi: [gist.github.com/panicwithme/60d371ed85378154bf990fd1092a72c1](https://gist.github.com/panicwithme/60d371ed85378154bf990fd1092a72c1)

## Mantis

* [sommaa/Mantis](https://github.com/sommaa/Mantis)
* [averagelinuxuser.com/ssh-into-virtualbox/#connect-to-virtualbox-from-the-guest-os](https://averagelinuxuser.com/ssh-into-virtualbox/#connect-to-virtualbox-from-the-guest-os) 

```bash
sudo apt install
sudo apt update && sudo apt upgrade

#sudo apt install spice-vdagent spice-webdavd

sudo apt install --no-install-recommends lightdm-gtk-greeter
sudo apt install --no-install-recommends lightdm
sudo apt install --no-install-recommends xorg xinit
sudo dpkg-reconfigure lightdm

/usr/lib/apt/apt-helper download-file [debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb](https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb) keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb
echo "deb [debian.sur5r.net/i3/](http://debian.sur5r.net/i3/) $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3
sudo apt install picom
echo "exec i3" >> ~/.xinitrc
sudo apt install build-essential

----------------------------------------------------------sudo apt-get install virtualbox-guest-additions-iso

#sudo add-apt-repository ppa:spvkgn/zathura-mupdf

sudo vim /etc/apt/sources.list

#deb [ppa.launchpadcontent.net/spvkgn/zathura-mupdf/ubuntu](https://ppa.launchpadcontent.net/spvkgn/zathura-mupdf/ubuntu) focal main

##deb-src [ppa.launchpadcontent.net/spvkgn/zathura-mupdf/ubuntu](https://ppa.launchpadcontent.net/spvkgn/zathura-mupdf/ubuntu) focal main

###sudo add-apt-repository ppa:spvkgn/zathura-mupdf

sudo apt update
sudo apt install zathura zathura-djvu zathura-pdf-mupdf
sudo apt install polybar rofi kitty zsh ranger nala nitrogen xsensors arandr python3 brightnessctl flameshot gzip curl git python3-pip dunst xclip
sudo apt install cmake unzip gettext
mkdir pkgs && cd pkgs
git clone [neovim/neovim.git](https://github.com/neovim/neovim.git)
cd neovim
git checkout v0.9.0
make CMAKE_BUILD_TYPE=Release
sudo make install

----------------------------------------------------------#=====>
#cd ~/pkgs/

#git clone --depth=1 [adi1090x/rofi.git](https://github.com/adi1090x/rofi.git)

#cd rofi

#chmod +x setup.sh

#./setup.sh

pip install pycairo requests i3ipc
git clone --depth 1 [AstroNvim/AstroNvim](https://github.com/AstroNvim/AstroNvim) ~/.config/nvim
nvim

# :q

sh -c "curl -fsSL raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh")
curl -sS [starship.rs/install.sh](https://starship.rs/install.sh) | sh
echo "" >> ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
sudo apt install pkg-config libgirepository1.0-dev libcairo2-dev
git clone [deter0/xborder](https://github.com/deter0/xborder)
cd xborder
chmod +x xborders
pip install -r requirements.txt

./xborders --help

--------------------------------------------------------------# HERE IS WHERE IT GETS TRICKY

#sudo apt-get install python3-pip git

#pip3 install i3ipc

#git clone [olemartinorg/i3-alternating-layout](https://github.com/olemartinorg/i3-alternating-layout)

# add to i3 config:

#exec --no-startup-id /path/to/alternating_layouts.py

#/usr/lib/apt/apt-helper download-file [debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb](https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb) keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4

sudo apt install ./keyring.deb
echo "deb [debian.sur5r.net/i3/](http://debian.sur5r.net/i3/) $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3

#
cd ~/pkgs
git clone [sommaa/Mantis.git](https://github.com/sommaa/Mantis.git)
cd Mantis/dots
cp -r i3 $HOME/.config
cd ~/pkgs/
git clone --depth=1 [adi1090x/rofi.git](https://github.com/adi1090x/rofi.git)
cd rofi
chmod +x setup.sh

./setup.sh

# comment out block around line 54 in rofi config

cp -r ~/pkgs/Mantis/dots/kitty ~/.config
cp -r ~/pkgs/Mantis/dots/ranger ~/.config
cp ~/pkgs/Mantis/dots/starship.toml ~/.config
pip install neovim
mkdir ~/.config/dunst
cp ~/pkgs/Mantis/dots/dunstrc ~/.config/dunst
cp -r ~/pkgs/Mantis/dots/picom ~/.config

```

```bash
cp -r polybar ~/.config
cp -r nitrogen ~/.config
cp -r chrome  ~/.config
cp -r ranger $HOME/.config
cp -r spicetify $HOME/.config
cp -r zathura $HOME/.config
cp dunstrc $HOME/.config
cp starship.toml $HOME/.config

# combine manually

cp zshrc $HOME/_zshrc
cp -r nvim $HOME/.config/_nvim
mv $HOME/.config/rofi $HOME/.config/_rofi
mv $HOME/.config/nvim $HOME/.config/_nvim
cp -r rofi $HOME/.config/rofi
cp -r nvim $HOME/.config/nvim
pip install neovim

#TODO: find .otf instead of .ttf

cd ~/pkgs
wget [ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip)
unzip Iosevka.zip -d Iosevka
cp ~/pkgs/Iosevka/Iosevka*.ttf ~/.local/share/fonts/
wget [ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip)
unzip JetBransMono.zip -d JetBrainsMono
cp ~/pkgs/JetBrainsMono/JetBrains*.ttf ~/.local/share/fonts/
wget [ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip)
unzip Meslo.zip -d Meslo
cp ~/pkgs/Meslo/Meslo*.ttf ~/.local/share/fonts/
git clone [sainnhe/icursive-nerd-font](https://github.com/sainnhe/icursive-nerd-font)
cp ~/pkgs/icursive-nerd-font/dist/Cascursive/Cascursive*.ttf ~/.local/share/fonts
git clone [displaay/Azeret](https://github.com/displaay/Azeret)
cp ~/pkgs/Azeret/fonts/ots/Azeret*.otf ~/.local/share/fonts
eval "$(starship init zsh)"
export PATH=$PATH:/home/isaac/.spicetify

```
