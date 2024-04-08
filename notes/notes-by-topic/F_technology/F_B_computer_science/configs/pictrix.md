# Untitled

### pictrix: Tools for Color and Theme Management

make global-inputs with keybindings.nix and colors.nix, to be read into flake and fed into output in the let-in clause

- lawyp (juwal? ruwal?)
    
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
    
    * colorspace-mapper
        Simple Steps: 

        1. compute matrices (potentially via WLS) to map each RGB code to colortheme-specific 16-dimensional space
        2. approximate each unseen color as a weighted sum of the k closest colors in the colorscheme
        3. replace each base color with the equivalent 

        Use the k colors defined in a colorscheme as the k dimensions of an vector space in which each RGB color code is then embedded

        Then model mappings from one color space to another as a simple linear transformation

        use this: https://github.com/makuto/auto-base16-theme/blob/master/AutoBase16Theme.py 

        Use Weighted Least Squares to assign preferences to different colors within Base16 framework?

        Train FF neural network, input size 3, output size 3, hidden size (or 2 hidden layers?) 3, include biases (for affine transformation) → list of color mappings (for 16-100 colors? → define remappings for cardinal colors using weighted sum weighted by inverse (or inverse squared? → smoothing term of 0.0001 to avoid ) distance (or use perceptual space)

        → sigmoid good for output because it constrains values to between 0 and 1

        → how to get the distance-based interpolation right? → write function and test

        → optional weighting for certain colors (such as background color)

        First test linear and nonlinear regression

        write code to visualize effect of mapping on a large swatch board: https://stackoverflow.com/questions/43971138/python-plotting-colored-grid-based-on-values 
        * https://stackoverflow.com/questions/64075569/how-to-plot-a-grid-of-colors-and-text 
        * https://media.istockphoto.com/vectors/color-palette-popular-colors-color-chart-patterns-and-names-rgb-hex-vector-id1329565383 
        * https://www.visibone.com/color/chart_847.gif 
        * http://kkfscs.weebly.com/uploads/1/4/1/8/14186235/352372045_orig.png 
        * https://m2.material.io/design/color/the-color-system.html#tools-for-picking-colors 
        * https://i.pinimg.com/originals/b7/a5/9f/b7a59fad2f489054608a52122aef0da4.png

        and a color wheel: https://pythonfordesigners.com/tutorials/hsl-color-wheel/        * https://www.codeease.net/programming/python/color-wheel
        * https://stackoverflow.com/questions/39386272/creating-a-colorwheel-with-javascript 
        * https://i.pinimg.com/originals/8f/28/6d/8f286d8aeb62b7c75b7c365257da68a4.jpg → like this with white ring around the edge and black circle in the middle

        use color wheel to observe the effect of mappings such as [[1,0,0.5],[0,1,0],[0.5,0.5,1]]

        Look seriously into tensor  multiplications in NumPy and PyTorch
        * https://numpy.org/doc/stable/reference/generated/numpy.tensordot.html 

        
        Example: given:

        colorspace $C_1$

        $$
        w_1 = (r_{w_1}, g_{w_1}, b_{w_1})
        $$

        $$
        x_1 = (r_{x_1}, g_{x_1}, b_{x_1})
        $$

        $$
        y_1 = (r_{y_1}, g_{y_1}, b_{y_1})
        $$

        $$
        z_1 = (r_{z_1}, g_{z_1}, b_{z_1})
        $$

        colorspace $C_2$

        $$
        w_2 = (r_{w_2}, g_{w_2}, b_{w_2})
        $$

        $$
        x_2 = (r_{x_2}, g_{x_2}, b_{x_2})
        $$

        $$
        y_2 = (r_{y_2}, g_{y_2}, b_{y_2})
        $$

        arbitrary color representation:

        $$
        a_{[RGB]} = (a_r, a_g, a_b)
        $$

        $$
        a_{[C_1]} = (a_{w_1}, a_{x_1}, a_{y_1}, a_{z_1}): a_{w_1}w_1, a_{x_1}x_1, a_{y_1}y_1, a_{z_1}z_1 = a_{[RGB]}
        $$

        $$
        a_{[C_2]} = (a_{w_2}, a_{x_2}, a_{y_2}): a_{w_2}w_2, a_{x_2}x_2, a_{y_2}y_2 = a_{[RGB]}
        $$

        $$
        A_{[C_1][4 \times 4]} = [a_{w_1}, a_{x_1}, a_{y_1}, a_{z_1}]
        $$

        $$
        A_{[C_1][4 \times 3]} = [a_{w_2}, a_{x_2}, a_{y_2}]
        $$

        ![2023-12-13-15-19-19-358.jpg](https://prod-files-secure.s3.us-west-2.amazonaws.com/e74f0423-4454-4dd0-ae43-e45cbc541e73/f47ef078-f4d3-4601-90bb-cd397aa99a73/2023-12-13-15-19-19-358.jpg)

        # another possibility: https://stackoverflow.com/questions/58823918/how-to-parallelize-model-prediction-from-a-pytorch-model
        * https://stackoverflow.com/questions/26571199/vectorize-multiplying-rgb-array-by-color-transform-matrix-for-image-processing

        ```python

        X = np.arange(120).reshape(5,8,3)
        W = np.array(
            * [
                * [1. , 0. , 0.5],
                * [0. , 1. , 0. ],
                * [0.5, 0.5, 1. ]
            ]
        )

        transformed = np.tensordot(X, W, axes=([2], [1]))
        print(transformed.shape)
        ```

        * [ImageGoNord - RGB image to Nordtheme](https://ign.schrodinger-hat.it/)
    


## Roadmap

- compile list of applications (top, basic, extended, someday - according to priority)
- look carefully at existing projects and their respective approaches, before continuing iwht this roadmap: most notably nix-colors and stylix → possibly to integrate even more fully into Home Manager than a “Home Manager config file generation” step?
- write app-specific config parsers and writers
    - first parse structure, if not off-the shelf
    - find colors in config
- create config file for all supported apps, with sensible defaults: pictrix.toml
- extend config parsers to write changed colors (with backup, including optional support for commenting out old colors lines, but also backing up the config to e.g. ~/.cache/pictrix/<timestamp>)
- Add increasingly advanced color functionality, to allow for both linear and perceptual function (esp interpolation) and eventually even different mappings of color schemes to and from images (last part as dependency, rather than just as constituent module in pictrix)
- 


### Notes

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


- Nix, Home Manager→ create “pre-home-manager” that takes a master color file and populates the home manager settings (use Nix or some other language + templates? → Go, Zig, Rust, Haskell, OCaml, Cython, Lua?)
    * [https://github.com/Misterio77/nix-colors](https://github.com/Misterio77/nix-colors) *****
    * [https://github.com/SenchoPens/base16.nix](https://github.com/SenchoPens/base16.nix) *****[Stylix](https://danth.github.io/stylix/)
- CSS & related
    * [https://sass-lang.com/dart-sass/](https://sass-lang.com/dart-sass/) 
    * [https://github.com/sass/sassc](https://github.com/sass/sassc)
- → browser
- Vanilla Linux
    * [https://github.com/SingularisArt/Chameleon](https://github.com/SingularisArt/Chameleon) *****, → other projects by 
    * [https://github.com/GideonWolfe](https://github.com/GideonWolfe) 
    * [https://github.com/reorr/warnai](https://github.com/reorr/warnai)
    * [https://github.com/cherrynoize/dash-dotfiles](https://github.com/cherrynoize/dash-dotfiles) dark-light color switcher
    * [https://gradience.readthedocs.io/en/latest/](https://gradience.readthedocs.io/en/latest/)
- terminal
- (neo)vim
    * [https://github.com/ThemerCorp/themer.lua](https://github.com/ThemerCorp/themer.lua)
    * [https://github.com/chadcat7/prism](https://github.com/chadcat7/prism)
    * [https://github.com/zaldih/themery.nvim](https://github.com/zaldih/themery.nvim)
- other apps / operating systemsGuake (Gnome app) theming$ chmod +x set_colors.sh$ ./set_colors.shAlternatively copy lines below directly into your shell.gconftool-2 -s -t string /apps/guake/style/background/color '#01010e0e0505'gconftool-2 -s -t string /apps/guake/style/font/color '#9393a1a1a1a1'gconftool-2 -s -t string /apps/guake/style/font/palette '#000021210606:#2a2aa1a19898:#2e2e99990000:#bfbfa0a00000:#26268b8bd2d2:#6c6c7171c4c4:#4040a6a62f2f:#9393a1a1a1a1:#65657b7b8383:#dcdc32322f2f:#858599990000:#b5b589890000:#26268b8bd2d2:#6c6c7171c4c4:#2a2aa1a19898:#fdfdf6f6e3e3'** 
    * [https://github.com/JollyRogerTrader/Regowal](https://github.com/JollyRogerTrader/Regowal) 
    * [https://github.com/lra/mackup/](https://github.com/lra/mackup/) - Keep your application settings in sync (OS X/Linux) → get ideas for colorflip and kbgeneral
- inspirations / potential dependencies[pywal](https://github.com/dylanaraps/pywal) - pywal is a script that takes an image (or a directory of images), generates a colorscheme (using imagemagick) and then changes all of your open terminal’s colors to the new colorscheme on the fly, allowing you to have your terminal colors change with your wallpaper, or other criteria.
- tools to use
    * [http://mustache.github.io/](http://mustache.github.io/) - templatingRoadmap Create Github Organization: AestheticFreedom / Basmati → ended up going with Oryzotropheo→ Create analog for keyboard shortcutsDevelop feature that maps one picture with a given color scheme to the same picture with a different color scheme. → background, or other theme-specific art → use clustering to find color centers, then interpolation → what can pywal and other libraries already do? —> also, how to map all colors to colorscheme-compatible colors? esp. relevant for theming websites and changing images, svg, rendered TeX, etc.create tools for working with dconf, gconfconfigure startup files for Python -> colors for iPython, bpython, ptpython -> sync→ Make (partially) transparent backgrounds/borders that change the colors of the background: intensify, invert (especially for outline), mellow/dim, color shift, etc. → 
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