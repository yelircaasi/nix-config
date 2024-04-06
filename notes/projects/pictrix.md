# Untitled

### **pictrix: Tools for Color and Theme Management**

make global-inputs with keybindings.nix and colors.nix, to be read into flake and fed into output in the let-in clause

- **lawyp (juwal? ruwal?)**
    
    Pywal in reverse
    
    Juwal is a nice wordplay
    
    - separate or sub-) project: lawyp: remake wallpaper to match a given colorscheme
    - → use triplet loss (in sklearn?) to train a new custom colorspace
    - use cluster coherence methods to compute dispersion for each color cluster
    - make intelligent guess at foreground vs background colors
    - support both automatic and guided repainting → guided means user says which colors should be mapped to which colors, and everything is interpolated around that
    
    parameters:
    
    - smoothing
    - contrast
    - darkness alpha (how much to adapt darkness to new colorscheme)
    - saturation alpha (how much to adapt saturation to new colorscheme)
    - visualize 3d map of color clusters
    
    Option to set color theme from image and pre-existing colorscheme:
    
    1. assign each pixel to nearest color in image
    2. for colors in colorscheme without any (or too few) assigned pixels: allow to steal closest colors from other clusters if those colors are far enough away → steal 1/a of closest pixels, where a = 3 or so→ better yet: steal p/(p+q) pixels, where p is p and q are some function of the distances of the points in the cluster from each color
    3. shift each color c → c’: to the centroid of the cluster
    4. optional: perform some interpolation between color and centroid, according to parameter epsilon controlling whether original color or new centroid is favored and by how much
    5. if a color in the colorscheme is simply too far from any pixels in the image, find the closest color that is a convex combination of two other colors in the image
    
    **[colorspace-mapper](https://www.notion.so/colorspace-mapper-252b92af25874d7e9510ef774c36497c?pvs=21)**
    

---

## **Roadmap**

- compile list of applications (top, basic, extended, someday - according to priority)
- look carefully at existing projects and their respective approaches, before continuing iwht this roadmap: most notably nix-colors and stylix → possibly to integrate even more fully into Home Manager than a “Home Manager config file generation” step?
- write app-specific config parsers and writers
    - first parse structure, if not off-the shelf
    - find colors in config
- create config file for all supported apps, with sensible defaults: pictrix.toml
- extend config parsers to write changed colors (with backup, including optional support for commenting out old colors lines, but also backing up the config to e.g. ~/.cache/pictrix/<timestamp>)
- Add increasingly advanced color functionality, to allow for both linear and perceptual function (esp interpolation) and eventually even different mappings of color schemes to and from images (last part as dependency, rather than just as constituent module in pictrix)
- 

---

### **Notes**

- Alternative names: colorflip, pavo (Latin for peacock), iridesco, splendor, vanitas, vainglory, ostentatio, vanus (vanix? → good wordplay; pictrix? ostentatix?)
- Goal: One tool for non-Nix Linux, one tool like Home Manager for colors (or make the latter nix-compatible?)
- Add color combination markup sublanguage to config TOML, using infixes and templating:

```toml
“$background00|perceptual<0.3,>|$foreground”
“$background00 | gradient <0.5, dark_factor=0.1> | $foreground”
“$syntax:python:method|gradient<0.5,light_factor=0.1>|$vscode:background”
“$alacritty:background00|isoline<contrast_target=0.2>|$foreground”
```

- add support for interpolating between (or other functions of) more than two colors?
- Add pseudo-screenshot tool to replace colors according to the template in a pre-made set of standard screenshots for each app (each distinct element with a distinct color), save these to a folder for easy visualization
- Comfortable CLI with various subcommands, support dry runs, rollbacks
- add syntax categories such as `thing` , `type`, `action`, `punctuation/delimiter` , `keyword`, etc. that can be used as defaults to apply to all languages
- also: categories for element types in CLI, TUI, GUI, and webpages: statistical and NLP-based inference for CSS → good logging so that process is transparent and easily improved or manually corrected
- include comment in config template to show which options are possible

---

- Nix, Home Manager→ create “pre-home-manager” that takes a master color file and populates the home manager settings (use Nix or some other language + templates? → Go, Zig, Rust, Haskell, OCaml, Cython, Lua?)
    * [https://github.com/Misterio77/nix-colors](https://github.com/Misterio77/nix-colors) *********
    * [https://github.com/SenchoPens/base16.nix](https://github.com/SenchoPens/base16.nix) *********[Stylix](https://danth.github.io/stylix/)
- CSS & related
    * [https://sass-lang.com/dart-sass/](https://sass-lang.com/dart-sass/) 
    * [https://github.com/sass/sassc](https://github.com/sass/sassc)
- → browser
- Vanilla Linux
    * [https://github.com/SingularisArt/Chameleon](https://github.com/SingularisArt/Chameleon) *********, → other projects by 
    * [https://github.com/GideonWolfe](https://github.com/GideonWolfe) 
    * [https://github.com/reorr/warnai](https://github.com/reorr/warnai)
    * [https://github.com/cherrynoize/dash-dotfiles](https://github.com/cherrynoize/dash-dotfiles) dark-light color switcher
    * [https://gradience.readthedocs.io/en/latest/](https://gradience.readthedocs.io/en/latest/)
- terminal
- (neo)vim
    * [https://github.com/ThemerCorp/themer.lua](https://github.com/ThemerCorp/themer.lua)
    * [https://github.com/chadcat7/prism](https://github.com/chadcat7/prism)
    * [https://github.com/zaldih/themery.nvim](https://github.com/zaldih/themery.nvim)
- other apps / operating systemsGuake (Gnome app) theming$ chmod +x set_colors.sh$ ./set_colors.sh**Alternatively copy lines below directly into your shell.**gconftool-2 -s -t string /apps/guake/style/background/color '#01010e0e0505'gconftool-2 -s -t string /apps/guake/style/font/color '#9393a1a1a1a1'gconftool-2 -s -t string /apps/guake/style/font/palette '#000021210606:#2a2aa1a19898:#2e2e99990000:#bfbfa0a00000:#26268b8bd2d2:#6c6c7171c4c4:#4040a6a62f2f:#9393a1a1a1a1:#65657b7b8383:#dcdc32322f2f:#858599990000:#b5b589890000:#26268b8bd2d2:#6c6c7171c4c4:#2a2aa1a19898:#fdfdf6f6e3e3'** 
    * [https://github.com/JollyRogerTrader/Regowal](https://github.com/JollyRogerTrader/Regowal) 
    * [https://github.com/lra/mackup/](https://github.com/lra/mackup/) - Keep your application settings in sync (OS X/Linux) → get ideas for colorflip and kbgeneral
- inspirations / potential dependencies[pywal](https://github.com/dylanaraps/pywal) - pywal is a script that takes an image (or a directory of images), generates a colorscheme (using imagemagick) and then changes all of your open terminal’s colors to the new colorscheme on the fly, allowing you to have your terminal colors change with your wallpaper, or other criteria.
- tools to use
    * [http://mustache.github.io/](http://mustache.github.io/) - templating**Roadmap** Create Github Organization: AestheticFreedom / Basmati → ended up going with Oryzotropheo→ Create analog for keyboard shortcutsDevelop feature that maps one picture with a given color scheme to the same picture with a different color scheme. → background, or other theme-specific art → use clustering to find color centers, then interpolation → what can pywal and other libraries already do? —> also, how to map all colors to colorscheme-compatible colors? esp. relevant for theming websites and changing images, svg, rendered TeX, etc.create tools for working with dconf, gconfconfigure startup files for Python -> colors for iPython, bpython, ptpython -> sync→ Make (partially) transparent backgrounds/borders that change the colors of the background: intensify, invert (especially for outline), mellow/dim, color shift, etc. → 
    * [https://www.reddit.com/r/unixporn/comments/12t1958/questions_on_advanced_window_transparency_settings/](https://www.reddit.com/r/unixporn/comments/12t1958/questions_on_advanced_window_transparency_settings/)rewrite in Rust (portability) or CL (for easiest extensibility? → look at how qtile handles config; learn more about plugins best practices in general)→ make Nix- and homewarrior-compatible!Look at how github, vscode, nvim, pygment, etc. handle color themes across languages → generalized token classesname polychrome?just make extensions for firefox and chromium? → support Nix/Home Manager installation better (?), less hacky
    * [https://github.com/yelircaasi/swytchswatch](https://github.com/yelircaasi/swytchswatch)Someday: for phone, with whichever OS, desktop environment, and apps are best suitedIs it possible to map colors to others in the browser? Should be categorical, independent of site details. Like red #FF0000 always being shifted to green #00FF00
    * [https://codeberg.org/anhsirk0/theme-builder](https://codeberg.org/anhsirk0/theme-builder)
    * [https://ign.schrodinger-hat.it/](https://ign.schrodinger-hat.it/) → browser 
    * [https://stylebot.dev/](https://stylebot.dev/) 
    * [https://nyxt.atlas.engineer/article/theming-nyxt-3.org](https://nyxt.atlas.engineer/article/theming-nyxt-3.org) 
    * [https://nyxt.atlas.engineer/article/dark-theme.org](https://nyxt.atlas.engineer/article/dark-theme.org) 
    * [https://github.com/dracula/nyxt/blob/master/stylesheet.lisp](https://github.com/dracula/nyxt/blob/master/stylesheet.lisp) 
    * [https://nyxt.atlas.engineer/documentation#appearance](https://nyxt.atlas.engineer/documentation#appearance) → 
    * [https://nyxt.atlas.engineer/documentation](https://nyxt.atlas.engineer/documentation) for firefox: got to about:config and view modified only, search color (first use color option in preferences menu)============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
    * [https://qutebrowser.org/doc/help/settings.html](https://qutebrowser.org/doc/help/settings.html) 
    * [https://www.reddit.com/r/qutebrowser/comments/glo28l/how_do_you_use_a_css_stylesheet/](https://www.reddit.com/r/qutebrowser/comments/glo28l/how_do_you_use_a_css_stylesheet/) 
    * [https://github.com/search?q=home-manager+firefox+colors&type=code](https://github.com/search?q=home-manager+firefox+colors&type=code)