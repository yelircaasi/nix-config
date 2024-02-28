# nixos-config

My NixOS configuration files. I'm new to NixOS, so take all of this with a grain of salt.

## Introduction

### Pinned Inputs

Everything is pinned to a specific commit hash. I like this because while `flake.lock` also keeps track of everything,
it is made more explicit this way. When all inputs are pinned, there is no indeterminacy when I run `nix flake update`; 
I know exactly what I am getting and can choose which inputs I want to update. It also makes things easy for my scripts 
that check which inputs have changed and summarize what has changed. 

### Global Definition of Colors, Keybinds, and Theming Options

The most important thing to understand before diving into the code is that I use Nix to define colors, keybindings, and
theming options globally, so as to ensure consistency and coherency. This means that they are defined in `global-defs` 
and injected into Nix strings and configuration files wherever needed. I do this with some simple templating functions 
I wrote, using the path to the value under `g` (the import name of the global-defs attribute set) enclosed within 
`<| ` and ` |>`. While this could, theoretically, result in false positives in some (higly idiosynchratic) Haskell or OCaml code,
in practice it seems to work well. However, if you decide to use this approach and do something similar, it is easy to 
define a different template marker in the regular expression in global-defs/lib/default.nix:splitFileString.

I keep my utility functions in a flake at [nix-config-lib]() and

This approach has the advantage of saving the config options I care about in a single place and allowing me to easily tweak them.
It also makes it easier to inspect them for conflicts and inconsistencies. The other nice thing is that I encapsulate the primitives
in one file and inject them from there into the specific options. At the same time, this allows me to specify overrides in a separate 
third location. For example, say I want all functions and methods to be highlighted a certain shade of green by default. I define this in 
the `primitives.nix` file. Then, in the `applications.nix` file, these color primitives are used to instantiate the app-specific options.
But if, for whatever reason, I want functions and methods in Python to be highlighted with slightly different shades of green, I can 
specify this in the `overrides.nix` file. I find this trichotomy of explicitly-defined primitives, implicitly-resulting specifics, and 
explicitly-definied overrides to be clean and pleasant to work with.

(still in development) I also have a fairly advanced library for working with colors contained in a flake at [TBA](). This allows me do do things like "make the secondary
background color X amount lighter (along some metric) than the primary background color. Then, if I switch the background color from dark green 
(FSM forbid) to dark blue, the secondary background will be changed automatically. Of course, I can also do things much more complex, like 
make the secondary background a certain amount darker if it is a light color, etc. There is support for interpolating between colors in diffrent 
color spaces, automatically tuning contrast, saturation, brightness, etc., and so on. And of course, I can pull a color scheme from the selected wallpaper
according to the selected algorithm and rules and parameters and rules I define. See the documentation for more details.

I use a special format for keybinds that makes it easier to check automatically for conflicts and to discover ergonomic keybindings that are not yet defined.
See [TBA]() for more information.

### Device-Specific Options

Another approach I have taken is to make device management easier by passing an attribute set named `deviceConfig` to the configuration 
builder functions (for both NixOS and home-manager). This way, I can write NixOS modules ad infinitum and as long as I include conditional 
switches for device config options, I can use my single config for all devices and can add new devices with minimal effort. This also 
makes including different apps or groups of apps trivially easy. This, combined with the utility functions encapsulating much of the boilerplate, 
make my flake (in my opinion) relatively readable.

### Neovim Flake

(still in development) I keep my Neovim config in its own flake, and import it here. I have also taken care to make it cleanly configurable from
the outside, so that it is possible to define which programming languages and which features it should support. This has the trade-off of making the 
Nix code (and the Lua code it contains) a bit more involved to read, but it is nice to be able to configure it declaratively and include different languages and features
at will. It is admittedly opinionated, but for anyone willing to learn Nix, it will be infinitely modifiable and extensible, just like everything else here. It also 
has a variety of desirable features and optimizations, such as automatic documentation, lazy loading, and good integration with external applications.
I also plan to do the same for Emacs, but it may (hopefully) be more limited in scope: org-mode, auctex, and maybe magit and a few other killer emacs apps.

### Structure

Coming soon...

### Color Design

### Syntax Highlighting

I try to put as much information into syntax highighting as I can, so that the colors are immediately meaningful and accessible.
While it is easy to swap out the colors (and this may happen from time to time), my current highlighting scheme is as follow:
* dark green background
* blue tones for 'things' - variable names, parameters, identifiers, etc. (also headlines in markup languages)
* green tones for actions - functions, methods
* brown tones for infrastructure  - keywords, delimiters, operators
* gray tones for comments and strings (also the default foreground color)
* purple and pink shades for error messages, todo comments, anything that needs urgent attention

Having things organized this way means that it is easier to get a sense, at a glance, of which code does what. I also find that I like the waythese colors look together, which is also important for someone who spends a large portion of his waking hours reading and writing code.

## Keybindings

Coming soon...

## Roadmap

- [ ] Add user `nixtest` to be able to try out things without interfering with the main user, `isaac`
- [ ] examine why I only have 2/3 of the hard drive
- [ ] add sops-nix (first try in test user or in container, with inconsequential secrets)
- [ ] package and build cosmic-files to see if it is worth using
- [ ] look into having different apps used in different environments (compositors / pop!OS when it arrives)
- [ ] see how good I can get Thunar
      https://github.com/search?q=repo%3Axfce-mirror%2Fthunar%20css&type=code
      https://github.com/wochap/nix-config/blob/16381ebb2a781c0d8330027b7387d7026cc1d7cd/modules/nixos/programs/gui/thunar/default.nix#L4
      https://github.com/MatthiasBenaets/nixos-config/blob/117d3168c85198ee47b8d9152b7ee293d93f5849/modules/programs/thunar.nix#L9
      https://github.com/donovanglover/nix-config/blob/6d047a956776724fa234d04f3d761f8a914e8b52/modules/thunar.nix#L4
      https://github.com/RGBCube/NixOSConfiguration/blob/050c0bc884bcbb0d0aa75d6c8ac1448484473e81/modules/thunar.nix#L4
      https://github.com/elohmeier/ptsd/blob/49f2a1c2a3e2693f4af8dc6beaffc222c9d11927/modules/home/xfce95.nix#L43
      https://github.com/maxbrunet/dotfiles/blob/022082eb3cea788802d1b3ae3dd125330fe9be81/nix/nixos.nix#L124
      https://github.com/Sigmanificient/dotfiles/blob/48f645ed8971275f9aab280005eb361dcf755ee0/home/thunar/default.nix#L4
      https://github.com/chiivo/nixos-dotfiles/blob/42e490aae6ef998b0bdde01fb3f8fa7163f1b122/configuration.nix#L88 
      https://github.com/bnjmnt4n/system/blob/c9d5406a55b96fe562c9f4149091fa027ee24a8a/lib/commands.nix#L12
      https://github.com/cor/nixos-config/blob/64973034f428bd1a3b4682725e0f9e961dfd3985/modules/thunar.nix
      https://github.com/bnjmnt4n/system/blob/c9d5406a55b96fe562c9f4149091fa027ee24a8a/hosts/raspy/bnjmnt4n.nix#L30 
      https://github.com/matejc/helper_scripts/blob/57aa247cfec9ce0fd3b5d00af0709926fc0def7b/dotfiles/settings-wsl.nix#L23
      https://github.com/mahmoudk1000/nix-config/blob/07ef6705f384c767094cf84fb1a6166185d4f0bc/modules/services/sxhkd.nix#L22
- [ ] spacefm
      https://github.com/ksevelyar/idempotent-desktop/blob/c7251ecf774c451bf8d092d6bcff0346f8227bbb/users/shared/spacefm/spacefm.conf
      use this: https://github.com/thermitegod/spacefm, with this as template: https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/applications/file-managers/spacefm/default.nix#L57
      figure out how to add plugins via Nix: https://github.com/IgnorantGuru/spacefm/wiki/Plugins, https://github.com/db-inf/spacefm-plugins, https://github.com/KeithDHedger/SpaceFM-Plugins (maybe best to just build it, import a plugin, and observe where the plugin goes)
- [ ] pcmanfm
      https://github.com/kyleraykbs/Kyle-NixOS-Config/blob/98918cdddc6094ea52b89310b8e5436857775a97/modules/home/pcmanfm.nix#L9
      https://github.com/kmjayadeep/nixdots/blob/675a7aecfe3fe5f15d5d074977eaf6042a17018c/home/xdg.nix#L13
      https://github.com/matejc/helper_scripts/blob/57aa247cfec9ce0fd3b5d00af0709926fc0def7b/nixes/homemanager/contexts/wsl.nix#L53
      https://github.com/hervyqa/swayhome/blob/7db3f2de6a6ef8c3f524c2711a1f2bab73bdfa4f/home/xdg/mimeapps.nix#L20
- [ ] pcmanfm-qt - pcmanfm is good for theming with gtk; use this to get qt options working
      https://github.com/mogria/nixos-config/blob/33482ac91bbb502802160c47d2bf013841d6d222/apps/pcmanfm.nix#L4
      https://github.com/corytertel/nix-configuration/blob/841d1ea8738d935bb79b56237d223b739ec16e11/overlays/pcmanfm-qt.nix#L4
      https://github.com/makefu/nixos-config/blob/8576c64f5f4c3dce870c626664183c5b3d3196a7/2configs/tools/pcmanfm-extra.nix#L4
- [ ] look at ghostty
      [example](https://github.com/cor/nixos-config/commit/64973034f428bd1a3b4682725e0f9e961dfd3985)
- [ ] get riverwm working
      https://github.com/devins2518/dotfiles/blob/f114c55f40d96965c83a03251e239969e02249ff/HM/river.nix#L24

