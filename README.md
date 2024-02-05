# nixos-config

My NixOS configuration files. I'm new to NixOS, so take all of this with a grain of salt.


## Structure

Modules are organized in a hierarchical structure and imported into each device's custom file, e.g. betsy.nix, hank.nix.

The `default.nix` file is omitted, since it appears in every single module.

## Colors

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


