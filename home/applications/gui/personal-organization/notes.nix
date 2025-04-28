{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages =
    (with pkgs; [
      # logseq # TODO::prio4: debug electron<>wayland errors -> works with `NIXOS_OZONE_WL=0 logseq`
      # obsidian # TODO::prio4: debug electron<>wayland errors and gtk.css errors
      trilium-desktop
      # joplin-desktop # TODO::prio4: debug electron<>wayland errors

      appflowy
      qownnotes
      mindforger

      affine # TODO::prio4: debug electron<>wayland errors
      /*
      https://discourse.nixos.org/t/nvidia-vkphysicaldevice-issues-on-newly-installed-nixos/40419
      https://discourse.nixos.org/t/nvk-error-when-using-prop-nvidia-drivers/43300
      https://www.reddit.com/r/NixOS/comments/1bn1yuj/found_out_how_to_get_nvidia_and_wayland_to_place/
      https://discourse.nixos.org/t/drm-kernel-driver-nvidia-drm-in-use-nvk-requires-nouveau/42222
      https://www.reddit.com/r/NixOS/comments/1curi05/wayland_not_working_on_kernel_690/

      https://nixos.org/manual/nixos/stable/#sec-x11-graphics-cards-nvidia
      https://nixos.wiki/wiki/Nvidia

      https://forum.endeavouros.com/t/error-with-lutris-drm-kernel-driver-nvidia-drm-in-use-nvk-requires-nouveau/53845
      */
      gitit
      nodePackages.tiddlywiki
    ])
    ++ (with mypkgs; []);
}
