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
