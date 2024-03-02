{lib}: let
  b = builtins;
in rec {
  # https://github.com/Misterio77/nix-colors/blob/b92df8f5eb1fa20d8e09810c03c9dc0d94ef2820/lib/core/conversions.nix#L87
  # https://colordesigner.io/convert
  # https://www.hsluv.org/implementations/
  # https://en.wikipedia.org/wiki/CIELAB_color_space
  # https://www.hsluv.org/
  # https://blog.frame.io/2020/02/03/color-spaces-101/
  # https://de.wikipedia.org/wiki/Liste_der_Farbr%C3%A4ume
  # https://bottosson.github.io/posts/colorpicker/ -> new spaces
  # https://github.com/purenix-org/purenix

  /*
  HexCharToInt = hexChar:
    {
      "0" = 0;
      "1" = 1;
      "2" = 2;
      "3" = 3;
      "4" = 4;
      "5" = 5;
      "6" = 6;
      "7" = 7;
      "8" = 8;
      "9" = 9;
      "a" = 10;
      "b" = 11;
      "c" = 12;
      "d" = 13;
      "e" = 14;
      "f" = 15;
    }
    ."${lib.strings.toLower hexChar}";

  HexToDec = hexString: let
    digits = lib.split "" (b.substring 1 (-1) hexString);
  in
    b.foldl' (
      a: x:
        a
        * 16
        + HexCharToInt x
    )
    0
    digits;

  HexToRGB = hexString: let
    redHex = b.substring 1 2 hexString;
    greenHex = b.substring 3 2 hexString;
    blueHex = b.substring 5 2 hexString;
  in {
    red = HexToDec redHex;
    green = HexToDec greenHex;
    blue = HexToDec blueHex;
  };
  RGBToHex = rgbAttrSet: "#";

  RGBToHSL = rgbAttrSet: {
    hue = 0;
    saturation = 0;
    lightness = 0;
  };
  /*
  def rgb_to_hsl(r, g, b):
      r, g, b = r / 255.0, g / 255.0, b / 255.0

      cmax = max(r, g, b)
      cmin = min(r, g, b)
      delta = cmax - cmin

      # Calculate Hue
      if delta == 0:
          h = 0
      elif cmax == r:
          h = ((g - b) / delta) % 6
      elif cmax == g:
          h = ((b - r) / delta) + 2
      else:
          h = ((r - g) / delta) + 4

      h = round(h * 60)

      # Calculate Lightness
      l = (cmax + cmin) / 2

      # Calculate Saturation
      if delta == 0:
          s = 0
      else:
          s = delta / (1 - abs(2 * l - 1))

      s = round(s * 100)
      l = round(l * 100)

      return h, s, l

  # Example usage:
  r, g, b = 255, 0, 0  # Red
  h, s, l = rgb_to_hsl(r, g, b)
  print(f"RGB: ({r}, {g}, {b}) -> HSL: ({h}, {s}, {l})")

  */
  HSLToRGB = hsl: {};
  /*
    def hsl_to_rgb(h, s, l):
      h /= 360.0
      s /= 100.0
      l /= 100.0

      if s == 0:
          r = g = b = round(l * 255)
      else:
          def hue_to_rgb(p, q, t):
              if t < 0:
                  t += 1
              if t > 1:
                  t -= 1
              if t < 1 / 6:
                  return p + (q - p) * 6 * t
              if t < 1 / 2:
                  return q
              if t < 2 / 3:
                  return p + (q - p) * (2 / 3 - t) * 6
              return p

          q = l * (1 + s) if l < 0.5 else l + s - l * s
          p = 2 * l - q

          r = round(hue_to_rgb(p, q, h + 1 / 3) * 255)
          g = round(hue_to_rgb(p, q, h) * 255)
          b = round(hue_to_rgb(p, q, h - 1 / 3) * 255)

      return r, g, b

  # Example usage:
  h, s, l = 0, 100, 50  # Pure red
  r, g, b = hsl_to_rgb(h, s, l)
  print(f"HSL: ({h}, {s}, {l}) -> RGB: ({r}, {g}, {b})")
  
  HexToHSL = hexString: RGBToHSL (HexToRGB hexString);

  interpolateEuclideanRGB = rgb1: rgb2: {
    red = 0;
    green = 0;
    blue = 0;
  };
  interpolatePerceptualRGB = alpha: rgb1: rgb2: {
    red = 0;
    green = 0;
    blue = 0;
  };
  interpolateHueHSL = alpha: hsl1: hsl2: {
    hue = 0;
    saturation = 0;
    lightness = 0;
  };
  interpolateSaturationHSL = alpha: hsl1: hsl2: {
    hue = 0;
    saturation = 0;
    lightness = 0;
  };
  interpolateLightnessHSL = alpha: hsl1: hsl2: {
    hue = 0;
    saturation = 0;
    lightness = 0;
  };

  # take a list of HSL colors and adjust it with a function applied to the deviation from the supplied value
  shiftSaturationsF = averageFunc: alphaFunc: hslList: [];
  shiftLightnessesF = averageFunc: alphaFunc: hslList: [];

  # take a list of HSL colors and shift one of the attributes toward the supplied value by a factor of alpha
  # TODO: define in terms of ...F functions
  shiftSaturations = averageFunc: alpha: hslList: [];
  shiftLightnesses = avergeFunc: alpha: hslList: [];

  # make a list of colors more evenly spaced out; lower values of alpha keep the colors
  spaceOutHueF = alphaFunc: hslList: [];
  evenlySpaceHue = alpha: hslList: [];

  # take a list of HSL colors and compute the mean of one of the attributes
  meanHue = hslList: [];
  meanSaturation = hslList: [];
  meanLightness = hslList: [];

  # make an HSL color lighter or more saturated, scaled by alpha
  lightenHSL = alpha: hsl: {
    hue = 0;
    saturation = 0;
    lightness = 0;
  };
  saturateHSL = alpha: hsl: {
    hue = 0;
    saturation = 0;
    lightness = 0;
  };
  */
}
