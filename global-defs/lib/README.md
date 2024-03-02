# Nix Functions

## Color Lib

Should be re-written in PureScript and later compiled to Nix, using [purenix](https://github.com/purenix-org/purenix).

Main priorities for color libraries:

- balance relative lightness (to a specified degree)
- balance contrast (to a specified degree)
- balance saturation (to a specified degree)
- compute colors relative to colors that are already given - examples:
  - given main background color, main secondary background color one with the same hue, but `a` percentage points lighter / having contrast `b`
  - given colors a and b, interpolate a color that is 0.3 along the perceptual continuum from a to b
  - given a list of colors, shift saturation and lightness up to `a` percent of the distance to the mean, subject to the constraint that contrast must remain above `c`
  - keep the colorscheme the same, but increase contrast by `a` percent / according to a specified function
