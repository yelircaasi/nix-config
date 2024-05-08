# Internet-Related

## Browsers

## Legend

(0) - already installed and configured in nix-config
(1) - already added to nix-config, but some work is needed
(2) - to be added next
(2.5 / 3.5) - to be added, but first decide between alternatives
(2.6) - Looks good, but still need to try it out
(2.9) - Could be better than the current choice, but a decision needed to be made
(3) - also to be added, but lower priority
(3.9) - For fun; no urgency, but try it soon :)
(4) - not decided yet / maybe later
(4.5) - Backpocket, maybe for a different device, etc.
(5) - some rewriting or packaging necessary (but to be added)
(5) - Like (5), but also for RosettaProjects
(6) - Decided against, but still looks good
(7) Decided against; looks bad
(N) - Ready to package for Nix
(R) - Read!

## Top

### Meta, Review

[llmilne.com/blog/browsers/](https://llmilne.com/blog/browsers/)

### GUI

#### Keyboard-Navigable Hackable GUI Browser

* (5) [Tin Browser](https://github.com/Wervice/Codelink/blob/main/tin/tin.md)
* (1) [nyxt](...)
* (1) [qutebrowser](https://github.com/qutebrowser/qutebrowser)
* (2) [luakit](...) + [duane-r/luakit-styles](https://github.com/duane-r/luakit-styles) * ( ) [luakit/commits/develop](https://github.com/luakit/luakit/commits/develop/)
      ( ) [Luakit Web Browser](https://luakit.github.io/#sec-download) [Luakit Web Browser](https://luakit.github.io/) [luakit/luakit: Fast, small, webkit based browser framework extensible by Lua.](https://github.com/luakit/luakit)
* (4,5) [Vimb - A Minimal Browser with Vim like Bindings - YouTube](https://www.youtube.com/watch?v=26xWK35pinA)
   | (5) [wyeb | a vim-like webkit2gtk web browser](https://wyeb.org/)
* (4) [vieb](...)

#### Mainstream-Style Browser

* (4) [librewolf](...)
   | (1) [firefox](...)
   | (2) [floorp](...)
   | (3) [firedragon $$$](https://github.com/dr460nf1r3/firedragon-browser) - custom branding for Garuda Linux, but looks amazing
   | (4) [waterfox](...)
* (1) [ungoogled-chromium](...)
   | (6) [chromium](...)
   | (6) [thorium](https://thorium.rocks/)
   | (4) [brave](...)
   | (6) [vivaldi](...)
   | (4) [iridium](https://github.com/iridium-browser/iridium-browser)

#### Mobile Browser

* ( ) [epicbrowser.com/privacy-policy](https://epicbrowser.com/privacy-policy)
* (1) Firefox Focus
* (1) Adblock Browser
* (2.5) [cromite](https://github.com/uazo/cromite)
   | (6) [bromite](https://www.bromite.org/)

-> [securityboulevard.com/2023/06/avoid-the-hack-3-best-privacy-browser-picks-for-android/](https://securityboulevard.com/2023/06/avoid-the-hack-3-best-privacy-browser-picks-for-android/)

#### Esoteric Browser

##### Vim

* (2.5) [Michasze/surf-wayland: Suckless surf browser that runs on Wayland compositors](https://github.com/Michasze/surf-wayland)
   |    (2.5) [netsurf](https://www.netsurf-browser.org/) + [visurf](https://sr.ht/~sircmpwn/visurf/)
   |    (2.5) [neosurf](https://github.com/CobaltBSD/neosurf?tab%3Dreadme-ov-file) + [visurf](https://sr.ht/~sircmpwn/visurf/)

##### Non-Vim

* (5) [textbrowser/dooble](https://github.com/textbrowser/dooble) $$$
* (5) [dillo-browser.github.io/](https://dillo-browser.github.io/) Extensible with plugins written in any language (see the list of plugins).
* (5) [ladybird](https://ladybird.dev/)
* (5) [min](https://github.com/minbrowser/min)
* (6) [midori](https://github.com/goastian/midori-desktop)
* (6) [falkon](https://www.falkon.org/)
* (6) [epiphany](https://gitlab.gnome.org/GNOME/epiphany)
* (5) [badwolf](https://hacktivis.me/projects/badwolf) - interesting and lightweight, but no vi mode
* (6) [lrrh](https://github.com/aarnt/lrrh)
* (6) [raphael](https://github.com/MidnightBSD/raphael)
* (5) [hskit](https://github.com/isovector/hskit)
* (5) [webkitten](https://github.com/kattrali/webkitten)

#### Old-School Browser

* (4) [Pale Moon](...)
* (4) [Basilisk](...)
* (4) [Otter](...)

#### Maximal-Privacy Browser

* (2) [tor](...)
* (5) [icecatbrowser.org/](https://icecatbrowser.org/)

### Browser Ricing

#### Startpage, Launcher

* ( ) [Heimdall](https://github.com/linuxserver/Heimdall)
* ( ) [Axenide/StartPage](https://github.com/Axenide/StartPage)
* ( ) [BachoSeven/startpage](https://github.com/BachoSeven/startpage)
* ( ) [prism](https://github.com/PROxZIMA/prism) A beautiful, minimalist, static startpage
* ( ) [excalith/excalith-start-page](https://github.com/excalith/excalith-start-page)
* ( ) [habu](https://github.com/kaloslazo/Habu)

#### Firefox Hardening

* (2) [yokoffing/Betterfox: Firefox speed, privacy, and security: a user.js template for configuration. Your favorite browser, but better.](https://github.com/yokoffing/Betterfox)
* (2) [arkenfox](https://github.com/arkenfox/user.js/) -> [gui](https://arkenfox.github.io/gui/)

#### Firefox Ricing

* (R) [colors - Change Firefox new tab background - Super User](https://superuser.com/questions/1235975/change-firefox-new-tab-background)
* (R) [How to Customize Firefox Reader View for Better Readability - Hongkiat](https://www.hongkiat.com/blog/customize-reader-view-theme-firefox/)
* (2.5) [perfection-firefox-css-theme](https://github.com/soulhotel/Perfection-Firefox-CSS-Theme)
* (2.5) [shina-fox](https://github.com/Shina-SG/Shina-Fox)
* (2.5) [addons.mozilla.org/en-US/firefox/addon/re-style/](https://addons.mozilla.org/en-US/firefox/addon/re-style/)
* (2.5) [wiki.archlinux.org/title/Firefox/Tweaks](https://wiki.archlinux.org/title/Firefox/Tweaks)
* (2.5) [p3nguin-kun/penguinFox](https://github.com/p3nguin-kun/penguinFox)
* (2.5) [p3nguin-kun/penguinFox-Librewolf](https://github.com/p3nguin-kun/penguinFox-Librewolf)
* (2.5) [ff-ultima](https://github.com/soulhotel/FF-ULTIMA)
* (2.5) [FirefoxBar/xStyle](https://github.com/FirefoxBar/xStyle)
* (2.5) [M4cs/foxify-cli](https://github.com/M4cs/foxify-cli)
* (2.5) [akshat46/FlyingFox](https://github.com/akshat46/FlyingFox) - work with old version of Firefox? fork old version? [flyingfox.netlify.app/](https://flyingfox.netlify.app/) [reddit](https://www.reddit.com/r/unixporn/comments/glbl4v/oc_its_not_normal_to_want_my_firefox_to_sit_on_my/)
* (2.5) [muckSponge/MaterialFox](https://github.com/muckSponge/MaterialFox) → great rreference
* (2.5) [soup-bowl/Modoki-Firefox](https://github.com/soup-bowl/Modoki-Firefox) [[XFCE4] Chicago95 + Vaporvave = Awesome : unixporn](https://www.reddit.com/r/unixporn/comments/112oexs/xfce4_chicago95_vaporvave_awesome/)
* (2.5) [cascade](https://github.com/andreasgrafen/cascade)
* (2.5) [Tile Tabs :: Add-ons for Firefox](https://web.archive.org/web/20170821155241/https://addons.mozilla.org/en-US/firefox/addon/tile-tabs/?src%3Duserprofile)
* (2.5) [userchrome.org/](https://www.userchrome.org/)

#### Chromium Ricing

* (2.5) [Arsemy/chromium-tokyonight](https://github.com/Arsemy/chromium-tokyonight)
* (2.5) [r/linuxquestions/comments/tfa8n6/chromium_dark_theme_on_flatpak/](https://www.reddit.com/r/linuxquestions/comments/tfa8n6/chromium_dark_theme_on_flatpak/)
* (2.5) [sekuji/mad-darkness](https://github.com/sekuji/mad-darkness)

##### Userscript Managers and Hosts

* ( ) [firemonkey](https://addons.mozilla.org/en-CA/firefox/addon/firemonkey/) [guide](https://www.ilovefreesoftware.com/11/windows/internet/plugins/how-to-use-userscripts-userstyles-firemonkey-firefox.html), [review](https://www.ghacks.net/2019/09/10/firemonkey-uses-firefoxs-official-api-for-userscripts-and-userstyles/)
* ( ) [violentmonkey](https://violentmonkey.github.io/), [code here](https://github.com/violentmonkey/violentmonkey)
* ( ) [greasemonkey CSS](https://superuser.com/questions/1337469/grasemonkey-change-design-css) - [documentation here](https://wiki.greasespot.net/Main_Page), [code here](https://github.com/greasemonkey/greasemonkey)
* ( ) [tampermonkey](https://www.freecodecamp.org/news/customize-website-experience-with-tampermonkey/)[How to Use Tampermonkey to Improve a Website's UI – Example Using freeCodeCamp](https://www.freecodecamp.org/news/customize-website-experience-with-tampermonkey/), [fcc article](https://www.freecodecamp.org/news/customize-website-experience-with-tampermonkey/#how-to-install-tampermonkey)
* ( ) [tampermonkey](https://www.tampermonkey.net/) - proprietary license
* ( ) [greasyfork](https://greasyfork.org/en)

#### Rice FF

* ( ) [reddit](https://www.reddit.com/r/unixporn/s/mvA6EhXF0t)
* ( ) [...](https://www.reddit.com/r/NixOS/s/bytkKR3Tvq)
* ( ) [Make Firefox great again](https://www.youtube.com/watch?v%3DdwZpjKH8nbo)

##### user.js

* ( ) [user.js/desktop at main - user.js - Codeberg.org](https://codeberg.org/Narsil/user.js/src/branch/main/desktop)
* ( ) [arkenfox/user.js: Firefox privacy, security and anti-tracking: a comprehensive user.js template for configuration and hardening](https://github.com/arkenfox/user.js)

##### Firefox Themes

-> [firefox-userchrome · GitHub Topics](https://github.com/topics/firefox-userchrome)

->  [firefoxcss-store.github.io/](https://firefoxcss-store.github.io/)

* (2.5) [arcWTF](https://github.com/KiKaraage/ArcWTF)
* (2.5) [blurfox-MacOS](https://github.com/safak45xx/Blurfox-MacOS)
* (2.5) [dolphinFox](https://github.com/ShmakovVladimir/DolphinFox)
* (2.5) [domfox](https://gitlab.com/domsch1988/domfox)
* (2.5) [edge-FFxArc](https://github.com/davidbecker808/Edge-FFxArc)
* (2.5) [edgyArc-fr](https://github.com/artsyfriedchicken/EdgyArc-fr)
* (2.5) [firefox-gx](https://github.com/Godiesc/firefox-gx)
* (2.5) [firefox-nordic-theme: :snowflake: A dark theme for firefox theme created using the awesome Nord color palette.](https://github.com/EliverLara/firefox-nordic-theme)
* (2.5) [firefox-one-pixelated](https://github.com/PENWINthePIRATE/firefox-one-pixelated)
* (2.5) [firefox-one](https://github.com/Godiesc/firefox-one)
* (2.5) [firefox-onebar](https://codeberg.org/Freeplay/Firefox-Onebar)
* (2.5) [firefox-vertical-tabs: Stylesheets for collapsible vertical tabs for Firefox.](https://github.com/lucaspar/firefox-vertical-tabs)
* (2.5) [flyingFox](https://github.com/akshat46/FlyingFox)
* (2.5) [fox11](https://github.com/Neikon/Fox11)
* (2.5) [full-text-tabs-forever](https://github.com/iansinnott/full-text-tabs-forever)
* (2.5) [greenyfox](https://github.com/alan-ar1/greenyfox)
* (2.5) [helgiMagic/FirefoxCSS](https://github.com/HelgiMagic/FirefoxCSS)
* (2.5) [minimalisticfox](https://github.com/Jamir-boop/minimalisticfox)
* (2.5) [perfection-Firefox-CSS-Theme](https://github.com/soulhotel/Perfection-Firefox-CSS-Theme)
* (2.5) [royalHeart/config/tree/main/chrome](https://github.com/RoyalHeart/config/tree/main/chrome)
* (2.5) [shina-Fox](https://github.com/Shina-SG/Shina-Fox)
* (2.5) [shyFox](https://github.com/Naezr/ShyFox)
* (2.5) [stealthFox](https://github.com/vipintom/stealthFox)
* (2.5) [sweet-Pop](https://github.com/PROxZIMA/Sweet-Pop) Sweet_Pop! Beautify, Customize Firefox. Minimalist animated oneliner theme for Firefox perfectly matching Sweet Dark.
* (2.5) [v2-Tabs](https://github.com/soulhotel/v2-Tabs-alpha-/tree/main)
* (2.5) [waveFox](https://github.com/QNetITQ/WaveFox)

##### Floorp Themes

* (2.5) [zDyanTB/ADHD-Floorp](https://github.com/zDyanTB/ADHD-Floorp)
* (2.5) [lewisHeart/Floorp-Configs](https://github.com/lewisHeart/Floorp-Configs)
* (2.5) [news.itsfoss.com/floorp-firefox/](https://news.itsfoss.com/floorp-firefox/)
* (2.5) [r/browsers/s/L0sHFRb1RU](https://www.reddit.com/r/browsers/s/L0sHFRb1RU) floorp

#### Other CSS

* ( ) [gingeh](https://github.com/Gingeh/lastfm)

### TUI Browser

* (2.5) [elinks](https://github.com/rkd77/elinks)
   | (2.5) [lynx](...) - [Code search results](https://github.com/search?q%3Dpkgs.lynx%2Blanguage%253Anix%26type%3Dcode)
   | (2.5) [w3m](...)
   | (2.5) [links2](...)
* (5) [w3m-mee](http://pub.ks-and-ks.ne.jp/prog/w3mmee/)
* (2) [edbrowse](...)
* (2) [chawan](https://sr.ht/~bptato/chawan/) (written in Nim! handles CSS and JS)

### CLI Browser (truly minimalist)

* (2) [reader](https://github.com/mrusme/reader)
* (5) [graphene](https://github.com/atsepkov/Graphene)
* (5) [hget](https://github.com/bevacqua/hget)

### Terminal-Based GUI Browsers

* (5) [carbonyl](https://github.com/fathyb/carbonyl)
* (2) [browsh](https://github.com/browsh-org/browsh)

### Gemini and Other Non-Web Protocols -> see [ths guide](https://geminiquickst.art/)

* ( ) [gemini-rust](https://github.com/redpenguinyt/gemini-rust)
* (4) [Bombadillo](https://tildegit.org/sloum/Bombadillo)- A non-web browser, designed for a growing list of protocols operating outside of the web. Currently supports Gemini, Finger and Gopher.
* (4) [min](https://github.com/a-h/min) - A Gemini browser with Vim style keyboard navigation, client certificate support and history and bookmarks saved in TSV files.
* (4) [asuka](https://git.sr.ht/~julienxx/asuka) - A Gemini Project client written in Rust with NCurses.
* (4) [gplaces](https://github.com/dimkr/gplaces) - Simple but powerful terminal Gemini client.
* (4) [Gremlin](https://github.com/actuday6418/gremlin) - Gemini browser for the terminal.
* (4) [Amfora](https://github.com/makeworld-the-better-one/amfora) - Amfora aims to be the best looking Gemini client with the most features. It does not support Gopher or other non-Web protocols.
* (4) [Romulus](https://github.com/LukeEmmet/Romulus) - A cross platform Gemini console client in C# with a simple user interface, interactive menus and mouse support.
* (4) [Telescope](https://github.com/omar-polo/telescope) - Gemini client with UI that is strongly inspired from Emacs and W3M.

### Browser-Related Tools

* ( ) [Browserling – Online cross-browser testing](https://www.browserling.com/)
* ( ) [quickstrom](https://github.com/quickstrom/quickstrom/tree/main)

#### Bookmarks

* ( ) [jonschoning/espial: Espial is an open-source, web-based bookmarking server.](https://github.com/jonschoning/espial)
* ( ) [buku](https://github.com/jarun/buku) - A powerful bookmark manager written in Python3 and SQLite3.
* (5) [foxy](https://github.com/s-p-k/foxy) - Plain text bookmarks for Firefox and surf browsers. → make for qb?

## Browser Extensions

* ( ) [gorhill/uBlock: uBlock Origin - An efficient blocker for Chromium and Firefox. Fast and lean.](https://github.com/gorhill/uBlock)
* ( ) [keyx](https://github.com/susumuota/nostr-keyx)
* ( ) [no-venv/modded-darkreader](https://github.com/no-venv/modded-darkreader)
* ( ) [mozzarella](https://gnuzilla.gnu.org/mozzarella/)
* ( ) [bug: chromium.extensions don't work for brave or ungoogled-chromium · Issue #2216 · nix-community/home-manager](https://github.com/nix-community/home-manager/issues/2216%23issuecomment-917507881)
* → GNU List: [gnuzilla.gnu.org/mozzarella/](https://gnuzilla.gnu.org/mozzarella/)
* ( ) [adnauseam.io/](https://adnauseam.io/)
* ( ) [kas-elvirov/gloc: :calendar: Browser extension: counts lines of code on GitHub](https://github.com/kas-elvirov/gloc)
* ( ) [Tile Tabs WE :: Add-ons for Firefox](https://web.archive.org/web/20170821233327/https://addons.mozilla.org/en-US/firefox/addon/tile-tabs-we/)
* ( ) [ff command line](https://addons.mozilla.org/en-US/firefox/addon/quick-commands/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)

### Extension Theory

* (R) [MDN Site](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions)

### Google Docs etc

-> [r/vim/comments/tfeyue/update_google_docs_integration_for_vim_using](https://www.reddit.com/r/vim/comments/tfeyue/update_google_docs_integration_for_vim_using) *

### webkit extensions

* ( ) [wyebadblock](https://github.com/jun7/wyebadblock)

### Vim-Style / Keyboard Navigation

* ( ) [brookhong/Surfingkeys](https://github.com/brookhong/Surfingkeys)
* ( ) [b0o/surfingkeys-conf](https://github.com/b0o/surfingkeys-conf)
* ( ) [neoevolutions.com/post/how-to-use-surfingkeys-less-mice-more-efficient-web-browsing-with-vi-style-shortcuts](https://www.neoevolutions.com/post/how-to-use-surfingkeys-less-mice-more-efficient-web-browsing-with-vi-style-shortcuts)
* ( ) Chrome/Chromium addons:
* ( ) [Vimium](https://vimium.github.io/)
* ( ) Firefox addons (based on WebExtensions):
* ( ) [Tridactyl](https://tridactyl.xyz/),
* ( ) [Vimium-FF](https://addons.mozilla.org/en-GB/firefox/addon/vimium-ff/)
* ( ) Addons for Firefox and Chrome:
* ( ) [Surfingkeys](https://github.com/brookhong/Surfingkeys),
* ( ) [Link Hints](https://lydell.github.io/LinkHints/) (hinting only),
* ( ) [Vimmatic](https://github.com/ueokande/vimmatic)
* ( ) [sheetkeys](https://github.com/philc/sheetkeys)
* ( ) best Vim extension? -> allow to still Ctrl + F
* ( ) [vimium](https://vimium.github.io/)
* ( ) [brookhong/Surfingkeys: Map your keys for web surfing, expand your browser with javascript and keyboard.](https://github.com/brookhong/Surfingkeys)
* ( ) [wasavi](https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe)
* ( ) [Reddit - How Use firefox without mouse?](https://www.reddit.com/r/firefox/comments/l1d69d/how_use_firefox_without_mouse/)
* ( ) [(2) What is the best browser + plugin for vim navigation while browsing sites? : vim](https://www.reddit.com/r/vim/comments/o5xsu2/what_is_the_best_browser_plugin_for_vim/)
* ( ) [vimium-c](https://addons.mozilla.org/en-US/firefox/addon/vimium-c/)
* ( ) [vimium-ff](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)
* ( ) [->](https://www.google.com/search?client=firefox-b-m&sxsrf=AJOqlzW96kwIy8oB7xeBTSBuV6u0Mm33Jw%3A1675729858394&q=navigate+google+chrome+without+a+mouse+vim&oq=navigate+google+chrome+without+a+mouse+vim&aqs=heirloom-srp)
* ( ) [tridactyl/tridactyl](https://github.com/tridactyl/tridactyl)

### Adblocking

* ( ) uBlock Origin
* ( ) Ghostery – Privacy Ad Blocker
* ( ) uBlock Origin → port to origin
* ( ) Enhancer for YouTube™ → port to indie browsers

### Privacy

* ( ) Decentraleyes

### Languages

* ( ) Zhongwen Chinese Popup Dictionary
* ( ) Inkah
* ( ) Simple Translate
* ( ) To Google Translate
* ( ) ImTranslator: Translator, Dictionary, TTS

### Bookmarks Extensions

* ( ) Default Bookmark Folder
* ( ) [Bookmark Search - Chrome Web Store](https://chrome.google.com/webstore/detail/bookmark-search/hhmokalkpaiacdofbcddkogifepbaijk)
* ( ) [Fannon/search-bookmarks-history-and-tabs: Browser extension to search and navigate browser tabs, local bookmarks and history.](https://github.com/Fannon/search-bookmarks-history-and-tabs#readme)
* ( ) [Better than Bookmarks](https://www.gettoby.com/)

### Reader

* ( ) [darkreader](https://github.com/darkreader/darkreader) -
* (2) [simplyread](https://njw.name/simplyread/)

### Appearance

* ( ) [treestyletab](https://github.com/piroor/treestyletab)
* ( ) [RaitaroH/YouTube-DeepDark: Videos should only be watched in the dark. May the dark be kinder on thine eyes. (YouTube dark theme)](https://github.com/RaitaroH/YouTube-DeepDark)
* ( ) [paxmod](https://github.com/numirias/paxmod)
* ( ) [sidebery/](https://github.com/mbnuqw/sidebery/) → [mgastonportillo/gale-for-ff](https://github.com/mgastonportillo/gale-for-ff)
* ( ) [web-extension-color-changer](https://github.com/rokit/web-extension-color-changer) [chromewebstore.google.com/detail/color-changer/nmdgidofjbajhphomaniiekgckpioifp](https://chromewebstore.google.com/detail/color-changer/nmdgidofjbajhphomaniiekgckpioifp)
* ( ) [Midnight-Lizard/Midnight-Lizard](https://github.com/Midnight-Lizard/Midnight-Lizard)
* ( ) [Change-Colors](https://github.com/srndpty/Change-Colors)

### Miscellaneous

* ( ) [gloc](https://github.com/kas-elvirov/gloc)

## Webapps and Websites

-> [InBrowser.App](https://inbrowser.app/)

* ( ) [Podcast Index](https://podcastindex.org/)
* ( ) [strangeloopcanon.com/](https://www.strangeloopcanon.com/)
* ( ) [directory.fsf.org/wiki/Main_Page](https://directory.fsf.org/wiki/Main_Page)
* ( ) [tweag.io/blog/](https://www.tweag.io/blog/)
* ( ) [git.wtf](https://git.wtf/)
* ( ) [Atlas: wikipedia-20231101-en](https://atlas.nomic.ai/map/475c26d7-b142-4795-9887-02b6eeb18dc0/0d312be6-a3bb-4586-b6b7-53dcd0cbefa5)
* ( ) [Collaboration costs less with Coda, we price differently - Coda](https://coda.io/product/collaboration-costs-less-with-coda)
* ( ) [For news junkies: The easiest ways to get through any article paywall (that I know of) : r/Piracy](https://www.reddit.com/r/Piracy/comments/stws33/for_news_junkies_the_easiest_ways_to_get_through/)
* ( ) [FrontPage](http://www.fitnesse.org/)
* ( ) [Raise and spend money with full transparency. - Open Collective](https://opencollective.com/)
* ( ) [Startseite - rheinneckar.social](https://rheinneckar.social/home)
* ( ) [Troubleshooters.Com](http://troubleshooters.com/troubleshooters.htm%23x10021)
* ( ) [bibli-open.heidelberg.de/Mein-Konto](https://bibli-open.heidelberg.de/Mein-Konto)
* ( ) [bibliotheken.komm.one/mannheim/de-de/Mein-Konto](https://bibliotheken.komm.one/mannheim/de-de/Mein-Konto)
* ( ) [blueskyweb.xyz/](https://blueskyweb.xyz/)
* ( ) [codestats.net/](https://codestats.net/)
* ( ) [mathix420/free-the-web-apps](https://github.com/mathix420/free-the-web-apps)
* ( ) [sdmg15/Best-websites-a-programmer-should-visit](https://github.com/sdmg15/Best-websites-a-programmer-should-visit)
* ( ) [imgupscaler.com/](https://imgupscaler.com/)
* ( ) [google.com/search?client=firefox-b-d&q=free+ai+upscale+image+resolution](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dfree%2Bai%2Bupscale%2Bimage%2Bresolution)
* ( ) [upscale.media/](https://www.upscale.media/) →* ( ) [mathix420/free-the-web-apps](https://github.com/mathix420/free-the-web-apps)
* ( ) [canva](https://www.canva.com/free/)
* ( ) [profanity.dev](https://www.profanity.dev/)
* ( ) [cobalt](https://github.com/wukko/cobalt)
* ( ) [figlet](http://www.figlet.org/)
* ( ) [githubwrapped](https://www.githubwrapped.io/)
* ( ) [overapi](https://overapi.com/)
* ( ) [Stirling-Tools/Stirling-PDF](https://github.com/Stirling-Tools/Stirling-PDF)
* ( ) [webshell](https://github.com/nasan016/webshell)
* ( ) [wbo](https://wbo.ophir.dev/) $$$
* (2) [Xatta-Trone/medium-parser-extension](https://github.com/Xatta-Trone/medium-parser-extension) [site](https://medium-parser-ext.vercel.app/) $$$
* ( ) [mathcha.io/](https://www.mathcha.io/)
* How does mirroring between git servers work?
* ( ) [puter.com/app/terminal](https://puter.com/app/terminal) [puter](https://github.com/HeyPuter)
* ( ) [yacy.de/](https://yacy.de/)
* ( ) [Openwords (Openwords)](https://github.com/Openwords)
* ( ) [browserling.com/](https://www.browserling.com/)
* ( ) [Open-Source Application Development :: add0n.com](https://add0n.com/index.html)
* ( ) [webextension.org/](https://webextension.org/)
* ( ) [farside](https://farside.link/)
* ( ) [strato.de](ghttp://strato.de) V-Server Linux
* ( ) [1337x.to/](https://1337x.to/) torrent search

### Coding Reference

* ( ) [Welcome to Dan’s Cheat Sheets’s documentation! — Dan's Cheat Sheets 1 documentation](https://cheat.readthedocs.io/en/latest/index.html)
* ( ) [devhints.io/](https://devhints.io/)

### Web Drive

* ( ) [Nextcloud](https://nextcloud.com/de/)
* Proton Drive
* Google Drive [api](https://developers.google.com/drive/api/guides/search-files%23java) → list all drive files

### Language Learning

* ( ) [openwords](https://github.com/Openwords)
* ( ) [otakar-smrz/elixir-fm: ElixirFM Functional Arabic Morphology](https://github.com/otakar-smrz/elixir-fm)

### Security

* ( ) [digital-defense](https://digital-defense.io/)

### Misc Web

* ( ) [kill-tabs](https://github.com/sindresorhus/kill-tabs) - Kill all Chrome tabs.
* (7) [Servo, the parallel browser engine](https://servo.org/)
* ( ) [bashblog](https://github.com/cfenollosa/bashblog) - A Bash script that handles blog posting
* ( ) [CloudClip](https://github.com/skywind3000/CloudClip) - Your own clipboard in the cloud, copy and paste text with gist between different systems
* ( ) [readability](https://github.com/mozilla/readability)
* ( ) [firenvim](https://github.com/glacambre/firenvim)
* ( ) [vim.js](https://wang-lu.com/vim.js/emterpreter/vim.html)
* ( ) [wasavi](https://github.com/akahuku/wasavi)
* ( ) [Surfingkeys vim editor](https://github.com/brookhong/Surfingkeys#vim-editor-and-emacs-editor) (apparently based on [ace](https://ace.c9.io/))
* ( ) [vim.wasm](https://github.com/rhysd/vim.wasm)
* ( ) [Codemirror vim bindings](https://codemirror.net/demo/vim.html)
* ( ) [lite-websites](https://github.com/p3nguin-kun/lite-websites)
* ( ) [Fail2ban](https://www.fail2ban.org/wiki/index.php/Main_Page) - Fail2ban scans log files (e.g. /var/log/apache/error_log) and bans IPs that show the malicious signs – too many password failures, seeking for exploits, etc.
* ( ) [feroxbuster](https://github.com/epi052/feroxbuster) - A fast, simple, recursive content discovery tool written in Rust.
* ( ) [OWASP ZAP](https://www.zaproxy.org/) - OWASP Zed Attack Proxy (ZAP) web security testing tool.
* ( ) [Update-IPsets](https://iplists.firehol.org/) - A manager for all cybercrime IP feeds that can download, convert and install netfilter `ipsets`.

### AI Tools and Information Resources

* ( ) [ChatG_](https://chat.openai.com/chat) ([read](https://martinfowler.com/articles/2023-chatgpt-xu-hao.html))
* ( ) [phind](...)
* ( ) [YouChat](https://youchat.com/)

### Monitoring / Hooks

* ( ) [webhook](https://github.com/adnanh/webhook)
* ( ) [shell2http](https://github.com/msoap/shell2http)
* ( ) [healthchecks.io](https://healthchecks.io/)

### Mobile Connection

* ( ) [kdeconnect](https://apps.kde.org/kdeconnect/) | ( ) [gsconnect](https://github.com/GSConnect/gnome-shell-extension-gsconnect)

### Maps

* ( ) [openstreetmap](https://www.openstreetmap.org/)

### Coding Instruction

* ( ) [exercism](...)
* ( ) [next.texh](https://next.tech/)
* ( ) [katacoda](https://www.katacoda.com/)
* ( ) [coderpad](https://coderpad.io/)
* ( ) [codecademy](https://codecademy.com/)
* ( ) [codeinterview](https://codeinterview.io/)
* ( ) [hack.courses](https://hack.courses/)
* ( ) [cratecode](https://cratecode.com/)
* ( ) [intervuew](https://www.intervue.io/)
* ( ) [flowgorithm](http://www.flowgorithm.org/)
* ( ) [teachcode](https://github.com/madlabsinc/teachcode)

### Media

* ( ) [Invidious](https://invidious.io/)
* ( ) [artemislena](https://yt.artemislena.eu/)
* ( ) [tube.cadence.mode](https://tube.cadence.moe/)
* ( ) [PeerTube](https://framagit.org/chocobozzz/PeerTube)
* ( ) [Mediagoblin](http://mediagoblin.org/)
* ( ) [tubo](https://migalmoreno.com/projects/tubo.html)
* ( ) [piped.video](https://piped.video/trending)
* ( ) [libre.fm](https://libre.fm/)
* ( ) [annas-archive](https://annas-archive.org/)
* ( ) [invidious](https://github.com/iv-org/invidious)
* ( ) [rumble.com](https://rumble.com/)
* ( ) [Odysee](https://odysee.com/)
* ( ) [redlib instances](https://github.com/redlib-org/redlib-instances/blob/main/instances.md)
* ( ) [status site](https://stats.uptimerobot.com/mpmqAs1G2Q)
* ( ) [nitter instances](https://github.com/zedeus/nitter/wiki/Instances)
* ( ) [imginn](https://imginn.com/)

### Search

* ( ) [MetaGer](https://metager.de/en) - Private search engine created by a non-profit that uses green electricity for its servers.
* ( ) [Qwant](https://www.qwant.com/?l=en)
* ( ) [Startpage](https://www.startpage.com/)
* ( ) [Swisscows](https://swisscows.com/en)
* ( ) [Mojeek](https://www.mojeek.com/)
* ( ) [searX](https://searx.info/)
* ( ) [Peekier](https://peekier.com/)
* ( ) [Ecosia](https://www.ecosia.org/)
* ( ) [Brave Search](https://search.brave.com/)
* → [Saying Goodbye to DuckDuckGo... Here's some Alternatives! - YouTube](https://www.youtube.com/watch?v=g--hr4F1S4w)
* → [opensource.com/article/20/2/open-source-search-engine](https://opensource.com/article/20/2/open-source-search-engine)
* → [comparitech.com/blog/vpn-privacy/best-private-search-engine/](https://www.comparitech.com/blog/vpn-privacy/best-private-search-engine/)
* (2) [searxng](https://dalf.github.io/searxng/)
* (2) [s](https://github.com/zquestz/s) - Web search from the terminal. Just opens in your browser.
* (2) [socli](https://github.com/gautamkrishnar/socli) - Stack overflow command line client written in Python. Search and browse stack overflow without leaving the terminal
* (4) [arch-wiki](https://github.com/deadhead420/arch-wiki) - Search the Arch Wiki anywhere from the command line.
* (2.5.5.5.5.5) [awesome-cli](https://github.com/umutphp/awesome-cli) - Awesome CLI is a simple command line tool to give you a fancy command line interface to dive into Awesome lists.
   | (2.5) [awesome-finder](https://github.com/mingrammer/awesome-finder) - Search the awesome lists from the command line.
* (2) [socialscan](https://github.com/iojw/socialscan) - Python library and CLI for accurately querying username and email usage on online platforms.
* (2) [cli-arxiv](https://github.com/knguyenanhoa/cli-arxiv) - CLI tool for exploring arXiv.
* (2) [ddgr](https://github.com/jarun/ddgr) - DuckDuckGo from the terminal
* (2) [tuxi](https://github.com/Bugswriter/tuxi) - A CLI tool that scrapes Google search results and SERPs that provides instant and concise answers.
* (6) [googlr](https://github.com/Astranno/googlr) - Command line tool that lets you search Google from your terminal.
* (2,5) [googler](https://github.com/jarun/googler) - Google Search, Google Site Search, Google News from the terminal
* (2) [surfraw](https://gitlab.com/surfraw/Surfraw) - browse specific site and search the web from your terminal without browser.

#### Mobile Search

* (2.5) [qwant mobile](https://play.google.com/store/apps/details?id=com.qwant.liberty&hl=de&pli=1)

### Misc

* ( ) [gdbgui](https://github.com/cs01/gdbgui): Browser-based frontend to gdb (gnu debugger)
* ( ) [Wallabag](https://wallabag.org/en) - Save and classify articles. Read them later. Freely.
* ( ) [Weblate](https://weblate.org/) - Translation management system with version control integration.
* ( ) [wordmark](https://wordmark.it/) - web tool (Chrome) for font recognition on device
* ( ) [gh-profile-readme-generator](https://rahuldkjain.github.io/gh-profile-readme-generator/)  (also works locally offline)
* ( ) [convertall.js](http://convertall-js.bellz.org/)
* ( ) [Dnote](https://www.getdnote.com/) - A simple command line notebook with multi-device sync and web interface.
* ( ) [cli](https://github.com/cloverleaf/cli)
* ( ) [favicon](https://favicon.io/)
* ( ) [Inventaire](https://inventaire.io/welcome) - Share books with friends and communities.
* ( ) [web3os](https://web3os.sh/): A decentralized operating system for the next web
* ( ) [mockitt](https://mockitt.wondershare.com/home.html)
* ( ) [archive](https://archive.is/) ([alt](https://archive.ph/)
* ( ) [alt](https://archive.ph/)
* ( ) [alt](https://archive.today/))
* ( ) [overtime-cli](https://github.com/diit/overtime-cli) - Time-overlap tables for remote teams.
* ( ) [typelit](https://www.typelit.io/)
* ( ) [LibreTranslate - Free and Open Source Machine Translation API](https://libretranslate.com/)
* ( ) [owasp](https://owasp.org/)
* ( ) [clcalc](https://github.com/ovk/clcalc)
* ( ) [site](https://clcalc.net/)
* ( ) [learn-anything](https://github.com/learn-anything/learn-anything.xyz)
* ( ) [site](https://learn-anything.xyz/)

### Document Editing, Wiki Software (Web)

* ( ) [Overleaf](https://www.overleaf.com/)
* ( ) [Etherpad](http://etherpad.org/) - Collaborative document editing in real-time. ([Apache License 2.0](https://github.com/ether/etherpad-lite/blob/develop/LICENSE))
* ( ) [typst](https://typst.app/)

## Web Development

* (2) [serverracket.com/](https://serverracket.com/)
* ( ) [kitten](https://codeberg.org/kitten/app)
* ( ) [raji](https://federicoterzi.com/raji/) [github](https://github.com/federico-terzi/raji)
* ( ) [loco](https://www.shuttle.rs/blog/2023/12/20/loco-rust-rails) the Rails of Rust
* ( ) [rawjs](https://www.squaresapp.org/rawjs/)
* ( ) [bootplus](http://aozora.github.io/bootplus/)
* ( ) [dBug](https://github.com/ospinto/dBug) - PHP tool
* ( ) [ebpf article](https://thenewstack.io/what-is-ebpf/)
* ( ) [ebpf](https://thenewstack.io/what-is-ebpf/)
* ( ) [http-party/http-server](https://github.com/http-party/http-server)
* ( ) [http-server](https://github.com/http-party/http-server)
* ( ) [inox](https://github.com/inoxlang/inox)
* ( ) [kitten/kittens.small-web.org: Kitten distribution management place. Handles uploads and downloads of Kitten distributions. - kittens.small-web.org - Codeberg.org](https://codeberg.org/kitten/kittens.small-web.org)
* ( ) [kuto](https://ithub.com/samthor/kuto) Faster updates for big JS projects
* ( ) [ludic](https://github.com/paveldedik/ludic) - Lightweight framework for building dynamic HTML pages in pure Python.
* ( ) [network_inventory](https://github.com/Nebucatnetzer/network_inventory) - solution for keeping an inventory over my various servers and other network equipment.
* ( ) [prismjs](https://prismjs.com/)
* ( ) [QuickJS Javascript Engine](https://bellard.org/quickjs/)
* ( ) [simple-http-server](https://github.com/TheWaWaR/simple-http-server)
* ( ) [Static Site Generator | Nikola](https://getnikola.com/)
* ( ) [toast](https://ui.toast.com/) web UI components
* ( ) [What it’s like to run HTMX in Production - Stories from Experienced Software Engineers](https://www.youtube.com/watch?v=Ec_ovkHHuZ8)
* ( ) [winterjs](https://www.heise.de/news/JavaScript-Server-in-Rust-WinterJS-is-Coming-9653110.html)
* ( ) [...](https://mastodon.social/@matthiasott/111447516296786143)
* ( ) [🦀 RUST y HTMX | Creamos una web con Rust | Parte 1](https://www.youtube.com/watch?v%3Dfcc5KRmHZgI)
* ( ) [slimerjs](https://slimerjs.org/)
* ( ) [html-first.com/](https://html-first.com/)
* ( ) [caniuse-cmd](https://github.com/sgentle/caniuse-cmd)- Search [caniuse.com](https://github.com/Correia-jpv/fucking-awesome-cli-apps/blob/main/caniuse.com) about browser support of features.

## Web and Networking Tools

### Web and Networking CLI Tools

### Web and Networking GUI/Miscellaneous Tools

#### Geneal/Miscellaneous Network Tech

* ssh
* ssl
* Lightweight Directory Access Protocol
* ( ) [curlie](https://github.com/rs/curlie)
* ( ) [xh](https://github.com/ducaale/xh)
* ( ) [gping](https://github.com/orf/gping) - ping, but with a graph
* ( ) [cli](https://github.com/httpie/cli) (httpie) - CLI HTTP client
* ( ) [http-prompt](https://github.com/httpie/http-prompt)
* ( ) [monolith](https://github.com/Y2Z/monolith) - save webpage as single file
* ( ) [dog](https://github.com/ogham/dog) - CLI DNS
* ( ) [trurl](https://github.com/curl/trurl)
* ( ) [wireshark](https://gitlab.com/wireshark/wireshark) - Wireshark is the world’s foremost network protocol analyzer. It lets you see what’s happening on your network at a microscopic level. It is the de facto (and often de jure) standard across many industries and educational institutions.
* ( ) [slugify](https://github.com/benlinton/slugify) - Command that converts filenames and directories to a web friendly format

#### SSH Web Interface / Admin Tools

* ( ) [WebSSH2](https://github.com/billchurch/WebSSH2): A web based SSH2 client using xterm.js, socket.io, and ssh2.
* ( ) [TermPair](https://github.com/cs01/termpair): View and control terminals from your browser with end-to-end encryption
* ( ) [webssh](https://github.com/huashengdun/webssh): Web based ssh client.
* ( ) [Go SSH Web Client](https://github.com/wuchihsu/go-ssh-web-client): A simple SSH web client using Go, WebSocket and Xterm.js.
* ( ) [SSH Web Client](https://github.com/roke22/PHP-SSH2-Web-Client): SSH Web Client with PHP.
* ( ) [Bastillion](https://www.bastillion.io/): Bastillion is an open-source web-based SSH console that centrally manages administrative access to systems.
* ( ) [Selenoid UI](https://github.com/aerokube/selenoid-ui): Simple UI for the scalable golang implementation of Selenium Hub named Selenoid. We use XTerm for streaming logs over websockets from docker containers.
* ( ) [SSHy](https://github.com/stuicey/SSHy): HTML5 Based SSHv2 Web Client with E2E encryption utilising xterm.js, SJCL & websockets. - old and unmaintained
* ( ) [Laravel Ssh Web Client](https://github.com/roke22/Laravel-ssh-client): Laravel server inventory with ssh web client to connect at server using xterm.js
* ( ) [Render](https://render.com/): Platform-as-a-service for your apps, websites, and databases using xterm.js to provide a command prompt for user containers and for streaming build and runtime logs. (Freemium)

#### Adblocking, Security, Privacy Tools

##### VPN

* (4) [CyberGhost](https://www.cyberghostvpn.com/en_US/) - CyberGhost VPN allows you to surf the Internet freely, as if in disguise, regardless of the type of application you use and from where you log in.
* (6) [ExpressVPN](https://www.expressvpn.com/) - ExpressVPN is the worlds fastest VPN service. It is both safe and reliable to watch and stream movies abroad, or simply access your favourite sites.
* (4) [IVPN](https://www.ivpn.net/) - IVPN offers a secure VPN service to privacy minded individuals including multi-hop technology and fast bandwidth.
* (4) [Mozilla VPN](https://www.mozilla.org/en-US/products/vpn/) - Protect your web history, feel safer on public Wi-Fi, and limit ad tracking by increasing the security of your network connection.
* (4) [Mullvad](https://mullvad.net/en/) - Mullvad is a VPN service that helps keep your online activity, identity, and location private.
* (6) [NordVPN](https://nordvpn.com/) - NordVPN gives you military-grade protection online, and you can access all your favorite sites without restriction.
* (4) [OpenVPN](https://openvpn.net/) - VPN system that implements techniques to create secure point-to-point or site-to-site connections in routed or bridged configurations and remote access facilities
* (4) [Private Internet Access](https://www.privateinternetaccess.com/) - Private Internet Access provides state of the art, multi-layered security with advanced privacy protection using VPN tunneling.
* (2) [ProtonVPN](https://protonvpn.com/) - High-speed Swiss VPN that safeguards your privacy.
* (4) [PureVPN](https://www.purevpn.com/) - PureVPN is much more than your usual VPN services provider. It offers unparalleled security and anonymity, making it your only choice for a secure online browsing experience.
* (4) [Surfshark](https://surfshark.com/) - All you need in a VPN and more in one easy-to-use app.
* (4) [Tailscale](https://tailscale.com/) - Tailscale is a WireGuard-based app that makes secure, private networks easy for teams of any scale.
* (4) [Windscribe](https://windscribe.net/) - Browse the web privately as it was meant to be.
* (4) [WireGuard](https://www.wireguard.com/) - WireGuard is an extremely simple yet fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec, while avoiding the massive headache.
* (2) [xiringuito](https://github.com/ivanilves/xiringuito) - SSH-based VPN.

##### Proxy

* (4) [dnscrypt-proxy](https://github.com/DNSCrypt/dnscrypt-proxy) - DNS proxy with support for encrypted DNS protocols,cross platform.
* (4) [ngrok](https://ngrok.com/) - Reverse proxy for sharing localhost
* (4) [Privoxy](https://www.privoxy.org/) - Privoxy is a non-caching web proxy with advanced filtering capabilities for enhancing privacy, modifying web page data and HTTP headers, controlling access, and removing ads and other obnoxious Internet junk.
* (4) [ProxyChains](https://proxychains.sourceforge.net/) - A tool that forces any TCP connection made by any given application to follow through proxy like TOR or any other SOCKS4, SOCKS5 or HTTP(S) proxy.
* (4) [hflow](https://github.com/comradequinn/hflow) - A command-line, debugging http/s proxy server.
* (4) [Shadowsocks](https://shadowsocks.org/) - A secure socks5 proxy, designed to protect your Internet traffic.
* (4) [mitmproxy](https://github.com/mitmproxy/mitmproxy) - An interactive HTTPS proxy.

##### Adblocking2

* (2) [hblock](https://github.com/hectorm/hblock) - Hosts-file based adblocker
* (2) [maza-ad-blocking](https://github.com/tanrax/maza-ad-blocking) - Local ad blocker. Like Pi-hole but local and using your operating system.
* (2) [Pi-Hole](https://pi-hole.net/) - Network-wide ad blocking via your own Linux hardware, using DNS filtering and re-direction Pi-Hole can block ads on a whole network, so Smartphones and Game Consoles can benefit from it in addition to computers.

##### Miscellaneous Adblocking, Security, Privacy Tools

* (2) [user.js/](https://github.com/arkenfox/user.js/)
* (3) [i2pd](https://github.com/PurpleI2P/i2pd) - I2P daemon written in C++.
* (2) [noiszy](https://noiszy.com/#how-it-works)

##### Security etc

* (->)
* ( ) [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) - [A list of useful payloads and bypass for Web Application Security and Pentest/CTF](https://github.com/swisskyrepo/PayloadsAllTheThings)
* (4) [TRASA](https://trasa.io/): Zero trust access to Web, SSH, RDP, and Database services
* (2) [Tor](https://www.torproject.org/) - Tor is free software and an open network that helps you defend against traffic analysis, a form of network surveillance that threatens personal freedom and privacy.

##### Firewalls

* (PG)
* ( ) [FireHOL](https://firehol.org/) - Linux firewall (`iptables`) manager for humans.
* (PG)[firewalld](https://github.com/firewalld/firewalld) - Firewalld provides a dynamically managed firewall with support for network or firewall zones to define the trust level of network connections or interfaces.
* (PG)
* ( ) [GuFW](https://gufw.org/) - One of the easiest firewalls in the world of Linux.
* (PG)[opensnitch](https://github.com/evilsocket/opensnitch) - OpenSnitch is a GNU/Linux interactive application firewall inspired by Little Snitch.
* (PG)
* ( ) [Portmaster](https://safing.io/) - Portmaster is a free and open-source application firewall that does the heavy lifting for you. Restore privacy and take back control over all your computer’s network activity.

#### Networking, SSH

* (2) [OpenSSH](https://www.openssh.com/) - OpenSSH Secure Shell Server and Client.
* (4) [iprange](https://github.com/firehol/iprange) - A very fast command line utility for processing IP lists (merge, compare, exclude, etc).
* (4) [FireQoS](https://docs.netdata.cloud/collectors/tc.plugin/#tcplugin) - Linux QoS (`tc`) manager for humans.
* (4) [hss](https://github.com/six-ddc/hss) - An interactive parallel ssh client featuring autocomplete and asynchronous execution. Never type the annoying ssh commands again.
* (4) [mosh](https://github.com/mobile-shell/mosh) - Remote SSH client that achieve good responsiveness in presence of intermittent connectivity and roaming.
* (4) [pssh](https://github.com/lilydjwg/pssh) - PSSH provides parallel versions of OpenSSH and related tools. Included are pssh, pscp, prsync, pnuke, and pslurp. The project includes psshlib which can be used within custom applications.
* (2) [sshto](https://github.com/vaniacer/sshto) - Small bash script to manage your ssh connections. It builds menu (via dialog) from your ~/.ssh/config. It can not only connect but also to run commands, copy files, tunnel ports.
* (2) [wishlist](https://github.com/charmbracelet/wishlist) - With Wishlist you can have a single entrypoint for multiple SSH endpoints.
* (2) [xxh](https://github.com/xxh/xxh) - Bring your favorite shell wherever you go through the ssh.
* (4) [tunnelmole-client](https://github.com/robbie-cahill/tunnelmole-client) - Connect to local servers from anywhere.
* (4) [bore](https://github.com/ekzhang/bore) - A simple CLI tool for making tunnels to localhost.

##### Internet Connectivity Manager

* (6) [wicd-curses](https://wiki.archlinux.org/index.php/wicd#Running_Wicd_in_Text_Mode) - Command line WiFi connection manager.
* (4) [network-manager-applet](https://gitlab.gnome.org/GNOME/network-manager-applet/)
* (2) [NetworkManager](https://github.com/NetworkManager/NetworkManager) - [networkmanager.dev/](https://networkmanager.dev/)
* (2) [nmtui](https://github.com/heftig/NetworkManager/blob/master/tui/nmtui.c) - Text User Interface for controlling NetworkManager

##### Internet Testing - Speed, Bandwidth, Connectivity / Monitoring / Scanning

* (2.5) [Angry IP Scanner](https://angryip.org/) - Fast and friendly network scanner.
* (2) [bandwhich](https://github.com/imsnif/bandwhich) - Track bandwidth utilization by process.
* (4) [bitly-client](https://github.com/specious/bitly-client) - Bitly client.
* (2) [bmon](https://github.com/tgraf/bmon) - Real-time network bandwidth monitor and rate estimator with human-friendly visual output
* (2.5) [brok](https://github.com/smallhadroncollider/brok) - Find broken links in text documents.
* (4) [httpie cli](https://github.com/httpie/cli)
* (2) [deadlink](https://github.com/nschloe/deadlink) - Parses text files for HTTP URLs and checks if they are still valid. Good to use on markdown documentation files.
* (4) [fast-cli](https://github.com/sindresorhus/fast-cli) - Test your download and upload speed using fast.com.
* (2.5) [gping](https://github.com/orf/gping) - ping but with graph, cross platform.
* (2.5) [is-reachable-cli](https://github.com/beatfreaker/is-reachable-cli) - Check if hostnames are reachable or not.
* (4) [is-up-cli](https://github.com/sindresorhus/is-up-cli) - Check if a domain is up.
* (2.5) [isitup](https://github.com/lord63/isitup) - Check whether a website is up or down
* (4) [mtr](https://github.com/traviscross/mtr) - The functionality of the 'traceroute' and 'ping' programs in a single network diagnostic tool.
* (4) [NetData](https://my-netdata.io/) - Next-gen web based real-time performance and health monitoring for physical and virtual servers, containers and IoT devices. It is also a distributed `statsd` server with automatic visualization for APM (applications performance monitoring).
* (2) [prettyping](https://github.com/denilsonsa/prettyping) - Making the output of `ping` prettier, more colorful, more compact, and easier to read.
* (4) [reachable](https://github.com/italolelis/reachable) - Check if a domain is up.
* (4) [speed-test](https://github.com/sindresorhus/speed-test) - `speedtest-net` wrapper with different UI.
* (4) [speedtest-cli](https://github.com/sivel/speedtest-cli) - Test internet bandwidth using speedtest.net.
* (4) [speedtest.net](https://github.com/ddsol/speedtest.net) - Test internet connection speed and ping using speedtest.net.
* (4) [web-check](https://github.com/Lissy93/web-check)
* (4) [vl](https://github.com/ellisonleao/vl) - URL link checker on text documents
* (4) [vnStat](https://humdi.net/vnstat/) - vnStat is a console-based network traffic monitor that uses the network interface statistics provided by the kernel as information source. This means that vnStat won’t actually be sniffing any traffic and also ensures light use of system resources regardless of network traffic rate.
* (4) [speedtest.net](https://github.com/ddsol/speedtest.net) - Test internet connection speed and ping using speedtest.net.
* (4) [http-tanker](https://github.com/PierreKieffer/http-tanker) - Terminal application used for API testing; easily create, manage and execute http requests from the terminal.
* (4) [linkchecker](https://github.com/linkchecker/linkchecker) - Check links in web documents or full websites.
* (2) [lychee](https://github.com/lycheeverse/lychee) - Fast, async, resource-friendly link checker written in Rust.
* (4) [siege](https://github.com/JoeDog/siege) - An http load testing and benchmarking utility designed to let web developers stress their code.

##### Bluetooth

* (2) [bluetuith](https://github.com/darkhz/bluetuith) - A TUI-based Bluetooth connection manager, which can interact with Bluetooth adapters and devices. It aims to be a replacement to most Bluetooth managers, like blueman.

##### Miscellaneous Networking, SSH

* ( ) [acmetool](https://github.com/hlandau/acmetool) - Automatic certificate acquisition for ACME (Let's Encrypt).
* ( ) [certificate-ripper](https://github.com/Hakky54/certificate-ripper) - Extract server certificates.
* ( ) [desktop](https://github.com/httpie/desktop) (httpie)
* ( ) [geoip-api-c](https://github.com/maxmind/geoip-api-c) - A little application to find geographical and network information of an IP address based no the geoip C API.
* (5) [get-port-cli](https://github.com/sindresorhus/get-port-cli) - Get an available port.
* (3) [goaccess](https://github.com/allinurl/goaccess) - GoAccess is a real-time web log analyzer and interactive viewer that runs in a terminal in -nix systems.
* (5) [histstat](https://github.com/vesche/histstat) - History for netstat
* ( ) [ipcalc](https://github.com/kjokjo/ipcalc) - Takes an IP address and netmask and calculates the resulting broadcast, network, Cisco wildcard mask, and host range.
* ( ) [ngrep/](https://github.com/jpr5/ngrep/) - (Network grep) applies the `grep` logic to the network layer, allowing to match regular expressions against data payloads of packets; it recognizes IPv4/6, TCP, UDP, ICMPv4/6, IGMP and Raw across Ethernet, PPP, SLIP, FDDI, Token Ring and null interfaces.
* ( ) [Nmap](https://nmap.org/) - Nmap is a free, open-source tool for network exploration, management, and security auditing.
* ( ) [optic](https://github.com/opticdev/optic) - Optic's Open Source tools make OpenAPI and API-first practices easy for any team to adopt.
* ( ) [redive](https://github.com/neelkarma/redive) - Trace URL redirections in the terminal.
* ( ) [rustcat](https://github.com/robiot/rustcat) - Netcat Alternative in Rust.
* ( ) [Tcpdump](https://www.tcpdump.org/) - TCP Debugging/Capture Tool.
* ( ) [USB network gate](https://www.eltima.com/products/usb-over-ip-linux/) - Allows you to share USB ports over a Network on Linux.
* ( ) [Wireshark](https://www.wireshark.org/) - Packet analyzer for network troubleshooting and analysis. ([GNU GPLv2](https://code.wireshark.org/review/gitweb?p=wireshark.git;a=blob_plain;f=COPYING;hb=HEAD))
* ( ) [http Toolkit](https://httptoolkit.tech/) - an HTTP inspection & debugging desktop application
* ( ) [sslh](https://github.com/yrutschle/sslh)

##### Crawling, Scraping, Downloading

-> see youtube

* (2) [suckit](https://github.com/skallwar/suckit)
* ( ) [Coursaros](https://github.com/SpyridonLaz/Coursaros) -  [Download videos and subtitles from edx to your computer easily.](https://github.com/SpyridonLaz/Coursaros)
* ( ) [aria2](https://aria2.github.io/)
* ( ) [scrapeghost/](https://github.com/jamesturk/scrapeghost/) - extend with other LLMs
* ( ) [aria2](https://github.com/aria2/aria2) - Lightweight and easy-to-use download utility; it supports HTTP/HTTPS, FTP, SFTP, BitTorrent, Metalink and multiple sources; cross-platform.
* ( ) [httrack.com/](https://www.httrack.com/)
* ( ) [clauneck](https://github.com/serpapi/clauneck)
* ( ) [cli](https://github.com/httpie/cli) - [httpie](http://httpie.org/) A command line HTTP client, a user-friendly cURL replacement.
* ( ) [gallery-dl](https://github.com/mikf/gallery-dl) - Command-line program to download image galleries and collections from pixiv, exhentai, danbooru and more.
* ( ) [nasa-cli](https://github.com/xxczaki/nasa-cli) - Download NASA Picture of the Day.
* ( ) [ImageScraper](https://github.com/sananth12/ImageScraper) - A cool command line image scraper with a lot of features.
* ( ) [crawley](https://github.com/s0rg/crawley) - Unix-way web crawler: crawls web pages and prints any link it can find.

## Communication and Social Applications

-> [nlnet](https://nlnet.nl/project/Kazarma/)

* (2) [Home — Bluesky](https://staging.bsky.app/)
* (4.5) [Dimillian/IceCubesApp: A SwiftUI Mastodon client](https://github.com/Dimillian/IceCubesApp)
* (2) [Castopod](https://castopod.org/)
* (2) [ForgeFed](https://forgefed.org/)
* (3) [Kazarma](https://kazar.ma/) - bridge between Matrix and ActivityPub
* (2) [Owncast](https://owncast.online/)
* (2) [PixelFed (PixelDroid)](https://pixelfed.org/)
* (4) [Xwiki](https://www.xwiki.org/xwiki/bin/view/Main/WebHome)
* (2) [Keyoxide](https://keyoxide.org/)
* (2.5) [GoToSocial](https://gotosocial.org/)
* (4) [Flarum](https://flarum.org/)
* (2) [Bonfire](https://bonfirenetworks.org/)
* (2.5) [Libervia](https://libervia.org/)
* (2) [Mobilizon](https://joinmobilizon.org/en/)
* (2) [GNU Social](https://gnusocial.rocks/)
* (2) [KBin](https://kbin.social/)
* (2) [ActivityPods](https://activitypods.org/)
* (2) [Lobsters](https://lobste.rs/)
* (2) [feddit](https://browse.feddit.de/)
* (2) [threadreaderapp](https://threadreaderapp.com/)
* (2) [weechat](https://weechat.org/) [scripts](https://weechat.org/scripts/) [example: weechatbot](https://github.com/sndrsmnk/weechatbot)
* (2) [irssi](https://irssi.org/ )
* (2) [msmtp](https://marlam.de/msmtp/)
* (6) [offlineimap](https://www.offlineimap.org/)
* (2) [mailinabox](https://mailinabox.email/)

### RSS (GUI)

* (2.5) [tt-rss](https://tt-rss.org/)
   | (2.5) [rssguard](https://github.com/martinrotter/rssguard)
   | (2.5) [FeedTheMonkey](https://github.com/jeena/FeedTheMonkey)
   | (2.5) [NewsFlash](https://apps.gnome.org/app/com.gitlab.newsflash/)
   | (2.5) [fluent-reader](https://hyliu.me/fluent-reader/)
   | (2.5) [Akregator](https://apps.kde.org/akregator/)

### Email

* ( ) [isync](https://github.com/gburd/isync)
* ( ) [msmtp](https://wiki.archlinux.org/title/Msmtp)
* (R) [mutt setup](https://jonathanh.co.uk/blog/mutt-setup/)
* ( ) [claws-mail](https://www.claws-mail.org/)
* ( ) [pop](https://github.com/charmbracelet/pop)
* → [20 most secure email providers to use in 2023 - PrivacySavvy](https://privacysavvy.com/email/best/secure-email-providers/#h-1-protonmail)
* → [seniormars.github.io/posts/neomutt/](https://seniormars.github.io/posts/neomutt/)
* (2) [proton](https://proton.me/pricing)
* (2) [ProtonMail](https://protonmail.com/) - Secure web-based email service. ([MIT](https://github.com/ProtonMail/WebClient/blob/public/license.md))
* (4) [ElectronMail](https://github.com/vladimiry/ElectronMail) - ElectronMail is an Electron-based unofficial desktop client for ProtonMail and Tutanota end-to-end encrypted email providers.
* (6) [Geary](https://wiki.gnome.org/Apps/Geary) - Geary is an email application built for GNOME 3. It allows you to read and send email with a simple, modern interface.
* (2) [Himalaya](https://github.com/soywod/himalaya) - Command-line interface for email management.
* (2) [mbsync](https://github.com/toolleeo/cli-apps/blob/master) - Mailboxes synchronization tool; allows to download email locally; MailDir format supported.
* (4) [Claws](https://www.claws-mail.org/) - Claws is an email client and news reader, featuring sophisticated interface, easy configuration, intuitive operation, abundant features and plugins, robustness and stability.
* (2) [tmpmail](https://github.com/sdushantha/tmpmail) - A temporary email right from your terminal written in POSIX sh.
* (6) [Mutt](http://www.mutt.org/) - A terminal based mail client with vim keybindings and great flexibility and customizability.
* (2) [neomutt](https://github.com/neomutt/neomutt)- [neomutt.org/](https://neomutt.org/)
* (2.5) [betterbird](https://www.betterbird.eu/)
* (2.5) [Thunderbird](https://www.thunderbird.net/en-US/)
* ( ) [notmuchmail](https://notmuchmail.org/ )
* ( ) [notmuch-mutt](https://notmuchmail.org/notmuch-mutt/ )
* ( ) [Mailcow Email Server](https://mailcow.email/) - Fully feature email server (for avarage use cases @lmtr0 recommends this one)
* ( ) [Mailnag](https://launchpad.net/~pulb/+archive/ubuntu/mailnag) - Mailnag is a daemon program that checks POP3 and IMAP servers for new mail.
* ( ) [Mailspring](https://getmailspring.com/) - A beautiful, fast and maintained fork of Nylas Mail ([dead](https://github.com/nylas/nylas-mail)) by one of the original authors.
* ( ) [Sylpheed](https://sylpheed.sraoss.jp/en/) - Lightweight and user-friendly e-mail client.
* ( ) [Trojita](https://apps.kde.org/trojita/) - A super fast desktop email client for Linux.
* ( ) [Tutanota](https://tutanota.com/) - Encrypted email at no cost with support for business accounts. ([GNU GPLv3](https://github.com/tutao/tutanota/blob/master/LICENSE.txt))
* ( ) [Vmail](http://danielchoi.com/software/vmail.html) - Vim-like Gmail client.
* ( ) [aerc](https://aerc-mail.org/) - aerc is an efficient, extensible email client that runs in the terminal. It features special support for git email workflows, reviewing patches, and processing HTML emails in a terminal-based browser.
* ( ) [alot](https://github.com/pazz/alot) - MUA written in Python using the [NotMuch](https://notmuchmail.org/) backend; MailDir format support.
* ( ) [alpine](https://github.com/toolleeo/cli-apps/blob/master) - Mail client which aims at being "fast, easy to use email client that is suitable for both the inexperienced email user as well as for the most demanding of power users".
* ( ) [meli](https://git.meli.delivery/meli/meli) - BSD/Linux terminal email client with support for multiple accounts and Maildir / mbox / notmuch / IMAP / JMAP.
* ( ) [nmail](https://github.com/d99kris/nmail) - nmail is a console-based email client for Linux and macOS with a user interface similar to alpine / pine.
* ( ) [pymailgen](https://github.com/toolleeo/pymailgen) - Starting from the content of a CSV file and a template text file, pymailgen generates a list of emails to be sent out using a command-line SMTP client.
* ( ) [skiff](https://skiff.com/) -  discussed [here](<find video>) (along with Proton)
* ( ) [sup](https://github.com/sup-heliotrope/sup) - MUA written in Ruby; specifically developed for accounts with "a lot of emails"; nice thread-based presentation.
* ( ) [tmpmail](https://github.com/sdushantha/tmpmail) - A command line utility written in POSIX sh that allows you to create a temporary email address and receive emails to the temporary email address.

### Signal

* ( ) [signal](https://signal.org/)
* ( ) [signal-cli (https://www.dinotools.de/2020/02/13/nachrichten-per-signal-von-der-kommandozeile-versenden/)

### Matrix

* → [matrix.org/ecosystem/integrations/](https://matrix.org/ecosystem/integrations/)
* ( ) [matrix clients](https://matrix.org/clients/)
* ( ) [Matrix](https://matrix.org/) - Decentrialized End-to-End Encrypted Chat platform (you may want to use [Element](https://element.io/)
* ( ) [Element](https://element.io/) - A glossy Matrix collaboration client for the web.
* ( ) [Fractal](https://wiki.gnome.org/Apps/Fractal) - Fractal is a Matrix messaging app for GNOME written in Rust. Its interface is optimized for collaboration in large groups, such as free software projects.
* ( ) [NeoChat](https://apps.kde.org/neochat/) - NeoChat is a Matrix client. It allows you to send text messages, videos and audio files to your family, colleagues and friends using the Matrix protocol.
* ( ) [8go/matrix-commander: simple but convenient CLI-based Matrix client app for sending and receiving](https://github.com/8go/matrix-commander)

### WhatsApp

* (5) [WhatsGo](https://github.com/WinterSunset95/WhatsGo)- whatsapp CLI
* (6) [WBOT](https://github.com/vasani-arpit/WBOT) - A simple CLI based BOT for WhatsApp™ in NodeJS. reply to your friends quickly and have fun along the way.
* (2) [nchat](https://github.com/d99kris/nchat)- whatsapp
* (4) [mudslide](https://github.com/robvanderleek/mudslide)- whatsapp CLI
* (4) [Baileys](https://github.com/WhiskeySockets/Baileys)- [whiskeysockets.github.io/Baileys/](https://whiskeysockets.github.io/Baileys/)  * WhatsApp API
* ( ) [whatsie](https://github.com/keshavbhatt/whatsie)- whatsapp client

### Messaging, Unfree

* (3) [Telegram](https://desktop.telegram.org/) - A messaging app with a focus on speed and security, it’s super fast, simple and free.
* (6) [Skype](https://www.skype.com/en/) - Skype keeps the world talking, for free.
* (5) [messenger-cli](https://github.com/AstroCB/Messenger-CLI)
* (5) [fb-messenger-cli](https://github.com/Alex-Rose/fb-messenger-cli)
* (3) [caprine](https://github.com/sindresorhus/caprine)- Messenger client

### Lemmy.rs

Jerboa for Android
lemmur
Fedilab

### Discord

* (2.5) [Discord](https://discordapp.com/) - All-in-one voice and text chat for gamers that’s free, secure, and works on both your desktop and phone.
   | (2.5) [BetterDiscord](https://betterdiscord.app/) - BetterDiscord extends the functionality of DiscordApp by enhancing it with new features.
   | (2.5) [Discover](https://trigg.github.io/Discover/) - Yet another Discord overlay for Linux written in Python using GTK3.
   | (2.5) [WebCord](https://github.com/SpacingBat3/WebCord) - A Discord and Fosscord web-based client made with the electron.
   | (2.5) [vencord](https://github.com/Vendicated/Vencord) [Vencord/Vesktop: Vesktop gives you the performance of web Discord and the comfort of Discord Desktop](https://github.com/Vencord/Vesktop)
   | (2.5) [purple-discord](https://github.com/EionRobb/purple-discord)
   | (2.5) [discordo](https://github.com/ayn2op/discordo)
   | (2.5) [ripcord](https://cancel.fm/ripcord/)
   | (2.5) [replugged](https://github.com/replugged-org/replugged)
   | (2.5) [abaddon](https://github.com/uowuo/abaddon)
* (3) [JMusicBot](https://jmusicbot.com/) - A Discord music bot that’s easy to set up and run yourself.
* (3) [Red Discord Bot](https://index.discord.red/) - Red Discord Bot is a self-hosted music/chat/trivia bot that can run on a Raspberry Pi and a variety of OS’s. It’s extensible through a system of “Cogs” that allow it to do more.

### Slack

* → [freecodecamp.org/news/how-to-build-a-basic-slackbot-a-beginners-guide-6b40507db5c5/](https://www.freecodecamp.org/news/how-to-build-a-basic-slackbot-a-beginners-guide-6b40507db5c5/)
* (6) [slack](https://slack.com/)
* (6) [slack-cli](https://github.com/candrholdings/slack-cli)
* (6) [slackcat](https://github.com/rlister/slackcat)
* (6) [slacktee](https://github.com/coursehero/slacktee)
* (6) [ripcord](https://cancel.fm/ripcord/)

### Mastodon & Fediverse

* (4) [Tokodon](https://apps.kde.org/tokodon/) - Tokodon is a Mastodon client for Plasma and Plasma Mobile.
* (2) [mastodon](https://joinmastodon.org/apps)
* (6) [Rainbow Stream](https://github.com/orakaro/rainbowstream) - A smart and nice Twitter client on terminal written in Python.
* (4) [Husky](https://f-droid.org/packages/su.xash.husky/)
* (4) [Tusky](https://tusky.app/)

### Multiple

* (2.5) [Choqok](https://apps.kde.org/choqok/) - Choqok is a Qt5 client for Twitter, GNU Social, Friendica and Pump.IO.
* (4) [Franz](https://meetfranz.com/) - Franz is a free messaging app that combines many chat & messaging services into one application. - freemium
* (2) [PingMe](https://github.com/kha7iq/pingme) - Sends messages or alerts to multiple messaging platforms & email, including Slack, Telegram, Mattermost, WeChat and others.
* (6) [Shift](https://shift.com/apps/messenger/)
* (2.5) [electronim](https://github.com/manusa/electronim)-  all-in-one messging $
* (2) [ferdium](https://ferdium.org/) $$$
* (2) [finch](https://www.pidgin.im/) - IM program supporting many protocols, including Yahoo!, AIM, IRC, or WLM; comes with the `Pidgin` project.
* (5) [hamsket](https://github.com/TheGoddessInari/hamsket)
* (2) [pidgin](https://pidgin.im/)
* (4) [rambox](https://rambox.app/) -proprietary and closed-source
* (2) [tangram](https://github.com/sonnyp/Tangram)
* (2) [station](https://getstation.com/)
* (5) [yfiton](https://github.com/yfiton/yfiton)

### Other

* -> pigeon, finch, libpurple
* (2) [ssh chat](https://github.com/shazow/ssh-chat) - Chat over SSH
* (5) [lets chat](https://github.com/sdelements/lets-chat) - Self-hosted chat app for small teams
* (2) [Gitter](https://gitter.im/) - Gitter — Where developers come to talk. Gitter is designed to make community messaging, collaboration and discovery as smooth and simple as possible.
* (2) [Zulip](https://zulip.com/) - Zulip is a powerful, open source group chat application that combines the immediacy of real-time chat with the productivity benefits of threaded conversations.
* (2) [Revolt](https://revolt.chat/) - Revolt is an open source user-first chat platform.
* (3) [tweets](https://github.com/diracdeltas/tweets) - Decentralized alternative to twitter that uses git as support tool to manage the tweets.
* (3) [Tox](https://tox.chat/) - Encrypted and distributed messaging platform with voice, video, and screen sharing. ([GNU GPLv3](https://github.com/TokTok/c-toxcore/blob/master/COPYING))
* (3) [Ring](https://ring.cx/) - Telephone, teleconferencing, and media sharing through a distributed service. ([GNU GPLv3](https://ring.cx/en/about/practical))
* (2) [nostr](https://nostr.com/) - nice site
* (2) [mumble](https://github.com/mumble-voip/mumble)- voice chat
* (3) [botamusique](https://github.com/azlux/botamusique) - music bot for mumble
* (3) [utopia](https://u.is/en)
* (3) [Gajim](https://gajim.org/) - XMPP/Jabber client for desktop. ([GNU GPLv3](https://dev.gajim.org/gajim/gajim/blob/master/COPYING))
* (4) [Conversations](https://conversations.im/) - XMPP/Jabber client for Android. ([GNU GPLv3](https://github.com/siacs/Conversations/blob/master/LICENSE))
* (4) [finch](https://linux.die.net/man/1/finch)
* (4) [Jami](https://jami.net/) - Chat. Talk. Share. Jami is a free and universal communication platform which preserves the users’ privacy and freedoms. Formerly Ring.
* (2) [Coccinella: Reviews, Features, Pricing & Download | AlternativeTo](https://alternativeto.net/software/coccinella/about/)
* (2) [jitsi meet](https://meet.jit.si/)
* (2) [kbin](https://kbin.social/)
* (2) [matrix-org/matrix-hookshot: A bridge between Matrix and multiple project management services, such as GitHub, GitLab and JIRA.](https://github.com/matrix-org/matrix-hookshot)
* (2) [openchatroulette](https://github.com/andchir/openchatroulette)
* (2) [syphon-org/syphon](https://github.com/syphon-org/syphon) a privacy centric matrix client
* (2) [toot](https://github.com/ihabunek/toot) - Mastodon CLI & TUI
