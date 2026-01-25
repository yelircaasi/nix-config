# nixos-config

My NixOS/Nix configuration files, highly modular with centrally-configured colors and keybindings.

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

- [ ] `{0.999}` `[nvim]` `vim.keymap.set("x", "p", [["_dP]])`

- [ ] `{0.9999}` `[nvim]` extract neovim config as a flake: see README in neovim directory of nix-config

- [ ] `{0.9999}` `[nvim]`  manage non-nix nvim config with GNU Stow & back up on Github -> first set up git SSH on Ahab

- [ ] `{0.9999}` `[other]`  :work,dm ___ collect and read all references to MCP on inovex confluence

- [ ] `{0.9999}` `[other]`  :work,inovex ___ collect key articles on MCP

- [ ] `{0.9999}` `[other]`  :work,inovex ___ write rough brain-dump draft of blog post

- [ ] `{0.9999}` `[other]`  set up mirroring on Gitlab

- [ ] `{0.9999}` `[other]` make colorcritic and keycritic idempotent wrt colors.json and keybinds.json; specify file schemata (perhaps using pydantic)

- [ ] `{0.9999}` `[other]` add ipython wezterm function to home manager config

- [ ] `{0.9999}` `[other]`   add "transpiled" to proglang plot (typescript, teal, purescript) -> is there evidence that TypeScript generally performs better, on average, than average human-written JavaScript?

- [ ] `{0.9999}` `[config]` add scripts to nix-config to back up nvim and other relevant dotfiles to separate nix directories (for already-instantiated dotfiles and config info)

- [ ] `{0.9999}` `[other]` Handle

        Discussion:

        > If we grant that oryzotropheo means in Ancient Greek "I make rice", what would be the related term for "rice maker" or "one who makes rice"? Give the Ancient Greek spelling as well.

        If we assume that "oryzotropheo" (ὀρυζοτροφέω) means "I make rice" in Ancient Greek, the related term for "rice maker" or "one who makes rice" would likely be formed as:
        
        ὀρυζοτροφεύς (oryzotropheús)This follows a common pattern in Ancient Greek where verbs ending in -έω can have a corresponding agent noun in -εύς to indicate someone who performs the action.

        > How would I render "key commander" or "keeper of the keys in Ancient Greek? A single word is preferable.

        For "key commander" or "keeper of the keys," a suitable Ancient Greek term could be:κλειδοῦχος (kleidoukhos)This term combines κλεῖς (kleis, "key") and the suffix -οῦχος (-oukhos, "holder" or "keeper"), commonly used to indicate someone in possession or in charge of something. "Kleidoukhos" would convey the meaning of "keeper of the keys" or "key bearer" in a single word.4o

        > How about in Latin?

        In Latin, a suitable term for "keeper of the keys" or "key commander" would be:
        
        claviger
        This combines clavis (meaning "key") and the suffix -ger (from gero, meaning "to bear" or "carry"), commonly used for individuals who bear or carry something specific. "Claviger" thus conveys "bearer of the keys" or "key keeper" succinctly in a single word.

        > Suggest cool Ancient Greek or Latin words related to creating, managing tuning, or harmonizing the keys of a keyboard or computer.

        ChatGPT said:Here are some intriguing Ancient Greek and Latin terms that can evoke the concept of creating, managing, tuning, or harmonizing keys, with a modern twist for applications like keyboards or computers:
        
        Ancient Greek
        
        ἁρμονία (harmonia) – Harmony
        Refers to harmony or fitting together, which could apply to aligning or tuning keys, or creating a balanced system.
        
        συμφωνία (symphonia) – Consonance, Agreement
        Originally meaning harmony of sounds, it could extend to imply coherence or unity in the arrangement or functioning of keys.
        
        κλειδοποιός (kleidopoios) – Key Maker
        This term uses κλεῖς (kleis, "key") + ποιός (poios, "maker") to suggest someone who creates or configures keys.
        
        κλειδοτέχνης (kleidotechnes) – Master of Keys
        This combines κλεῖς (kleis, "key") with τέχνη (techne, "craft" or "art") to mean someone skilled in the art or craft of keys, perhaps an expert at configuring or tuning keys.
        
        συγκατάθεσις (synkatathesis) – Synchronization, Agreement
        From συν- (syn, "together") and κατάθεσις (katathesis, "placing, arranging"), this suggests coordinating elements, which could apply to key mapping or harmonizing inputs.
        
        Latin
        
        Modulator – Tuner, Regulator
        Derived from modulor (to measure or regulate), this could be used for one who "tunes" or configures, ideal for someone managing key bindings or harmonizing functionality.
        
        Claviator – Key Creator
        A modern blend of clavis (key) + -ator (suffix for an agent), conveying the sense of a "key-maker" or one who creates keyboard shortcuts or key mappings.
        
        Harmonicus – Of Harmony
        While it directly means "harmonic," it implies alignment and can apply to the harmonious arrangement or tuning of a keyboard layout.
        
        Concordator – Unifier, Harmonizer
        From concordia (agreement, harmony), this could represent a unifier of keys, or someone responsible for arranging them harmoniously.
        
        Tonator – Tuner
        Derived from tonus (tone), this term can mean one who tunes or sets tones, adapted to suggest a "key tuner" or someone who adjusts settings for optimal keyboard functionality.
        
        Each of these terms can evoke a sense of artistry, precision, or mastery over keys, making them fitting for anyone engaged in fine-tuning or crafting digital input systems.4o

        > Is it a stretch to use kleis to refer to the keys of a computer?

        Not at all! Using κλεῖς (kleis) to refer to the "keys" of a computer would actually be quite fitting and has a solid linguistic precedent. In Ancient Greek, κλεῖς primarily meant "key" in the sense of a tool used to unlock or secure, but it also carried a more general sense of a mechanism or critical element that controls access or function. This concept translates well to the modern understanding of "keys" on a computer keyboard, as each key acts as an access point or activator for specific functions.Languages throughout history have often adapted existing terms for newer technologies based on similar functions or analogies. In fact, Greek has evolved in the modern era to use πλήκτρον (plēktron) for computer keys, but κλεῖς would still feel natural and classic, maintaining a sense of continuity with Ancient Greek.So, using κλεῖς for computer keys wouldn't be a stretch at all—it would actually give your usage a classical and philosophically resonant depth!4o

        Thanks for the great suggestions. Now do the same for "one who creates, tunes, or harmonizes colors and color palettes"

        Certainly! Here are some creative Ancient Greek and Latin terms that could capture the essence of a "creator, tuner, or harmonizer of colors and palettes." These terms combine ideas of artistry, harmony, and precision in managing or creating colors.

        Ancient Greek 
        
        χρωματουργός (chromatourgos) – Color Maker or Color Worker
        Derived from χρῶμα (chroma, "color") and -ουργός (-ourgos, "worker" or "creator"), this term could suggest someone skilled in creating or manipulating colors.

        χρωματοτέχνης (chromatotechnes) – Master of Colors
        Combining χρῶμα (chroma, "color") and τέχνη (techne, "art" or "craft"), this term implies someone with a high level of expertise in the craft of color, making it perfect for a color harmonizer or palette designer.
        
        ἁρμονιοχρωματικός (harmoniochromatikos) – One Who Harmonizes Colors
        From ἁρμονία (harmonia, "harmony") and χρῶμα (chroma, "color"), this could suggest a specialist in balancing or harmonizing color palettes.χρωματοσυνθέτης (chromatosynthetēs) – Color Composer
        Combining χρῶμα (chroma, "color") with σύνθεσις (synthesis, "composition" or "putting together"), this term would be fitting for someone who composes or arranges color schemes.
        
        ποικιλοπλόκος (poikiloplochos) – Weaver of Colors or Patterns
        From ποικίλος (poikilos, "varied" or "colorful") and πλόκος (plokos, "weaving" or "braiding"), this poetic term implies one who skillfully combines colors in intricate or pleasing arrangements.
        
        Latin
        Colorator – Colorist or Color Creator
        Derived from color (color) and the suffix -ator (one who does or creates), this term directly implies someone who makes or manages colors, suitable for a palette creator.
        
        Colorator Harmonicus – Harmonizer of Colors
        Adding harmonicus (harmonic) to colorator gives the sense of someone who not only creates but also harmonizes colors in balanced and appealing ways.
        
        Pigmentarius – Color Mixer or Pigment Specialist
        Based on pigmentum (pigment or color), pigmentarius could imply a skilled mixer or arranger of colors, evoking the role of a palette creator.
        
        Tincturator – One Who Blends or Tints
        Derived from tingo (to dye or color), this term suggests someone skilled in blending or adjusting colors, as in creating subtle shifts in palettes.
        
        Concolorator – Unifier of Colors
        From con- (together) + color, this term implies someone who brings colors together in harmony, ideal for a role focused on blending or balancing hues in a palette.
        
        Each of these terms would add an air of artistry and depth to the role of a color creator, with a touch of ancient sophistication—perfect for a modern designer working with color in a thoughtful and skillful way.

- [ ] `{0.93}` `[nvim]` Become intimately familiar with the structure of lua plugins in neovim
    - [ ] [`neovim.io/doc/user`](`https://neovim.io/doc/user`)
    - [ ] read [neovim.io/doc/user/develop.html](https://neovim.io/doc/user/develop.html)
    - [ ] skim [neovim wiki for developers](https://github.com/neovim/neovim/wiki#developers)
    - [ ] browse [sourcegraph.com/github.com/neovim/neovim](https://sourcegraph.com/github.com/neovim/neovim)
    - [ ] pick 6 interesting plugins and review their code

- [x] get colors and keybindings working just enough to successfully run nrs and hm

- [ ] `{0.9999}` `[other]` add Lua and Golang copies of colorcritic and keycritic (and move to rosetta-projects)

- [ ] `{0.9999}` `[other]` Need to make fun little color module to calculate shades with given (typically slight) contrast to another color

- [ ] `{0.9999}` `[other]`  create dev flake for julia

- [ ] `{0.9999}` `[other]`  figure out how to configure vscode using nixos

- [x] `{0.9999}` `[other]` define wezterm keybindings enough to have a comfortable workflow

- [ ] `{0.9999}` `[other]` make special extra keyboard layer, accessible via space bar, to include most frequent non-letter characters (numbers to his layer, special keys to numbers)

- [ ] `{0.9999}` `[other]` distinguish between physical and semantic keys in global-defs/keybindings and in kanata config

- [ ] `{0.9999}` `[other]` set up g.key

- [ ] `{0.9999}` `[other]` set up g.color
- [ ] move all hardware-configuration-XXX.nix files into one and select device with deviceConfig
- [ ] get nvim to build after refactoring
- [ ] fix colors in gtk css files
- [ ] add colors to global matplotlib config
- [ ] get wezterm fully set up with colors and keybindings
- [ ] clean up all code in global-defs keybindings
- [ ] clean up all code in global-defs colors
- [ ] add lazy loading to nvim
- [ ] get colors and keybindings working with proper formatting, libraries, and modularity (for apps already defined)
- [ ] get vieb fully set up with colors and keybindings
- [ ] get qutebrowser fully set up with colors and keybindings
- [ ] get nyxt fully set up with colors and keybindings
- [ ] get domain-specific CSS working on vieb
- [ ] get domain-specific CSS working on qutebrowser
- [ ] get domain-specific CSS working on nyxt
-
- [ ] add sops-nix (first try in test user or in container, with inconsequential secrets)
      - [x] first get working with dummy strings
      - [ ] add real secrets
- [N] get sddm working with chili theme
- [ ] Add user `nixtest` to be able to try out things without interfering with the main user, `isaac`
- [ ] learn how to set default file browser
- [ ] add gtk2 theme and ensure that kde/qt apps are working with it
- [ ] look into having different apps used in different environments (compositors / pop!OS when it arrives)
- [ ] learn about how icons work on NixOS
      - [ ] [wiki](https://nixos.wiki/wiki/Packaging/Icons)
      - [ ] look through /run/current-system/sw/share/icons 
      - [ ] 
- [ ] examine why I only have 2/3 of the hard drive
- [ ] select icon themes ([see here](https://itsfoss.com/best-icon-themes-ubuntu-16-04/))
- [ ] learn about fonts on NixOS
      - [ ] [wiki](https://nixos.wiki/wiki/Fonts)
      - [ ] [discourse](https://discourse.nixos.org/t/manually-install-icon-pack/9064)
      - [ ] figure out the deal with /run/current-system/sw/share/X11/fonts 


- [ ] package and build cosmic-files to see if it is worth using
- [ ] see how good I can get Thunar
      https://github.com/search?q=repo%3Axfce-mirror%2Fthunar%20css&type=code
      https://github.com/wochap/nix-config/blob/16381ebb2a781c0d8330027b7387d7026cc1d7cd/modules/nixos/programs/gui/thunar/default.nix#L4
      https://github.com/MatthiasBenaets/nixos-config/blob/117d3168c85198ee47b8d9152b7ee293d93f5849/modules/programs/thunar.nix#L9
      https://github.com/donovanglover/nix-config/blob/6d047a956776724fa234d04f3d761f8a914e8b52/modules/thunar.nix#L4
      https://github.com/RGBCube/NixOSConfiguration/blob/050c0bc884bcbb0d0aa75d6c8ac1448484473e81/modules/thunar.nix#L4
      https://github.com/elohmeier/ptsd/blob/49f2a1c2a3e2693f4af8dc6beaffc222c9d11927/modules/home/xfce95.nix#L43
      https://github.com/maxbrunet/dotfiles/blob/022082eb3cea788802d1b3ae3dd125330fe9be81/nix/nixos.nix#L124 -> good xdg mime example
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



https://ytmdesktop.app/
