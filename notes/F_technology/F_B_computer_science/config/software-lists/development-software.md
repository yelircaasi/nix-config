# Development Software

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

* -> [](https://blog.logrocket.com/exploring-best-syntax-highlighting-libraries/)

## Development Tools

### Project Info

* (2) [tech stack file](https://stackshare.io/tech-stack-file)
* -> [list](https://www.wiz.io/academy/top-open-source-sbom-tools)

### Workflow, Pipeline

* (R) [Reproducible Data Pipelines Using Controlled Effects](https://tweag.github.io/kernmantle/scale-by-the-bay-slides.html)

### Package Management

* (4) [libsolv](https://github.com/openSUSE/libsolv)

### Educational Projects

* (3.9) [lust](https://github.com/Gingeh/lust) A parser, compiler, and virtual machine evaluator for a minimal subset of Lua; written from scratch in Rust.

### Cross-Environment, Different Setups, Innovative

* (3.9) [cheerpj-3](https://labs.leaningtech.com/blog/cheerpj-3.0) A WebAssembly JVM to run real-world applications in the browser
* (3.9) [wasmtime](https://docs.wasmtime.dev/cli.html)

### Specific Programming Languages

#### Haskell

* (R) [SoccerFun](https://hackage.haskell.org/package/SoccerFun) $$$$$$$$$
* (R) [parsing - Writing a parser from scratch in Haskell - Stack Overflow](https://stackoverflow.com/questions/20660782/writing-a-parser-from-scratch-in-haskell)
* (2) [slim: Functional reactive user interface programming](https://hackage.haskell.org/package/slim)
* (2) [Dhall/Parser.hs](https://hackage.haskell.org/package/dhall-1.6.0/docs/src/Dhall-Parser.html)

#### Julia

* (R) [Kyjor/JulGame.jl: JulGame is a game engine based on the Julia programming language with the help of SDL2.](https://github.com/Kyjor/JulGame.jl)
* (2) [ndortega/Oxygen.jl: A breath of fresh air for programming web apps in Julia](https://github.com/ndortega/Oxygen.jl)

#### Kotlin / Android

* (2) [pprint-kotlin](https://github.com/deusaquilus/pprint-kotlin)
* (2) [android-studio](https://search.nixos.org/packages?channel=unstable&show=android-studio&from=0&size=50&sort=relevance&type=packages&query=android+studio)

#### LaTeX, TeX

* (2) [KaTeX – The fastest math typesetting library for the web](https://katex.org/)

#### Visual Languages

* (2) [flowgorithm](http://www.flowgorithm.org/)
* [flyde.dev/](https://www.flyde.dev/) - visual programming language for developers

### Typing

* (2) [quicktype](https://github.com/glideapps/quicktype) $$$$$$$$$ [site](https://app.quicktype.io/)

### Config and Serialization Languages

* (2) [vstakhov/libucl: Universal configuration library parser](https://github.com/vstakhov/libucl) for [ucl](https://rspamd.com/doc/configuration/ucl.html)
* (2) [dhall-lang/dhall-haskell: Maintainable configuration files](https://github.com/dhall-lang/dhall-haskell) - [The Dhall configuration language](https://dhall-lang.org/)
* (2) [gura.netlify](https://gura.netlify.app/)
* (2) [hashicorp/hcl: HCL is the HashiCorp configuration language.](https://github.com/hashicorp/hcl)
* (2) [tweag/nickel: Better configuration for less](https://github.com/tweag/nickel)
* (R) [Data Serialization Comparison: JSON, YAML, BSON, MessagePack — SitePoint](https://www.sitepoint.com/data-serialization-comparison-json-yaml-bson-messagepack/)
* (2) [ron](https://github.com/ron-rs/ron)
* (2) [kdl](https://kdl.dev/) + [hustle: Haskell implementation of the KDL Document Language](https://github.com/fuzzypixelz/Hustle) -> has KDLQL, schema language, official specification
* (2) Protocol Buffers (protobuf) - binary serialization format developed by Google. They are designed for efficiency, compactness, and speed. Protobuf’s binary nature makes it significantly faster than JSON for serialization and deserialization.
* (2) MessagePack - another binary serialization format known for its speed and compactness. It’s designed to be more efficient than JSON while maintaining compatibility with various programming languages.
* (2) BSON (Binary JSON) - BSON, or Binary JSON, is a binary-encoded format derived from JSON. It retains JSON’s flexibility while improving performance through binary encoding. BSON is commonly used in databases like MongoDB.
* (2) Apache Avro - data serialization framework that focuses on providing a compact binary format. It’s schema-based, allowing for efficient data encoding and decoding

### Snap

* (R) [How I delete snap and all traces of it - Solus Forum](https://discuss.getsol.us/d/9323-how-i-delete-snap-and-all-traces-of-it/3)
* (R) [Installing a snap package - Help - NixOS Discourse](https://discourse.nixos.org/t/installing-a-snap-package/11468/4)
* (6) [io12/nix-snapd • FlakeHub](https://flakehub.com/flake/io12/nix-snapd)
* (R) [linux - I can't delete files 'rm: cannot remove X Read-only file system' - Server Fault](https://serverfault.com/questions/304416/i-cant-delete-files-rm-cannot-remove-x-read-only-file-system)
* (R) [Snap.d error: cannot communicate with server connection refused - snapd - snapcraft.io](https://forum.snapcraft.io/t/snap-d-error-cannot-communicate-with-server-connection-refused/6093/55)

### Containers, Orchestration, CI

* (N) [lxroot](try out and potentially package for NixOS)
* (2) [gnome boxes](https://apps.gnome.org/Boxes/)
* (2.5) [Dagger.io](https://dagger.io/) - CI/CD tool
* (T) [warptools/warpforge: a build tool -- based on "hashes go in, hashes come out" and hermetic, containerized environments for every step.](https://github.com/warptools/warpforge)
   | (T) [serversideup/spin: 🚀 Replicate your production environment locally using Docker. Just run "spin up". It's really that easy.](https://github.com/serversideup/spin)
* (2) [ctop](https://github.com/bcicen/ctop)
* (1) [docker](https://www.docker.com/)
* (2) [slimtoolkit](https://slimtoolkit.org/)
* (2) [dive](https://github.com/wagoodman/dive)
* (2.5) [lazydocker](https://github.com/jesseduffield/lazydocker)
   | (2.5) [dry](https://github.com/moncho/dry)
   | (2.5) [dockly](https://github.com/lirantal/dockly)
* (2) [buildx](https://github.com/docker/buildx)
* (5) [docker-pushrm](https://github.com/christian-korneck/docker-pushrm)
* (2) [watchtower](https://github.com/containrrr/watchtower)
* (2) [kubernetes](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=kubernetes) (provides kubectl, among others)
* (2.5) [kubebox](https://github.com/astefanutti/kubebox)
   | (2.5) [k9s](https://github.com/derailed/k9s)
   | (2.5) [kdash](https://github.com/kdash-rs/kdash)
* (2) [kool](https://github.com/kool-dev/kool)
* (3) [cloudtty](https://github.com/cloudtty/cloudtty)
* (2) [updatecli](https://github.com/updatecli/updatecli)
* (2) [renovate](https://docs.renovatebot.com/)
* (2) [Hercules CI](https://hercules-ci.com/)
* (1) [podman](https://github.com/containers/podman) - read [this](https://blog.while-true-do.io/podman-graphical-interfaces/)
* (2) [chroot](https://github.com/coreutils/coreutils/blob/master/src/chroot.c)
   | (R) [lxc, lxcfc, etc.](https://linuxcontainers.org/)
   | (N) [conty](https://github.com/Kron4ek/Conty)
* (2) [ContainerSSH](https://github.com/ContainerSSH/ContainerSSH)
* (2) [ops](https://ops.city)
* (R) [docker vs podman at DuckDuckGo](https://duckduckgo.com/?q%3Ddocker%2Bvs%2Bpodman%26ia%3Dweb)
* (R) [Podman vs Docker: In-Depth Comparison](https://phoenixnap.com/kb/podman-vs-docker)
* (2) [AtomsDevs/Atoms: Easily manage Linux Chroot(s) and Containers with Atoms.](https://github.com/AtomsDevs/Atoms)

## Build Tools

* (4) [cmake](https://github.com/Kitware/CMake)
* (4) [maven](...)
* (4) [gradle](...)
* (4) [ninja](...)
* (4) [bazel](https://github.com/bazelbuild/bazel)
* (4) [scons](https://github.com/SCons/scons) (even supports LaTeX)
* (4) [xmake](https://github.com/xmake-io/xmake)
* (4) [pants](https://www.pantsbuild.org/)
* (4) [gradle](https://gradle.org/)
* (4) [pantsbuild](https://www.pantsbuild.org/)
* (4) [tbox](https://github.com/tboox/tbox)

## Documentation

* (2) [freeCodeCamp/devdocs](https://github.com/freeCodeCamp/devdocs)
* (2) [mdBook](https://github.com/rust-lang/mdBook) - Create book from markdown files.
      + (2) [mdbook-linkcheck](https://github.com/Michael-F-Bryan/mdbook-linkcheck) a backend for [mdbook](https://github.com/rust-lang/mdBook) which will check your links for you. [fork](https://github.com/volhovm/mdbook-linkcheck)
* (1) [Sphinx](https://www.sphinx-doc.org/en/master/)
* (2) [Shibuya](https://shibuya.lepture.com/) (theme)
* (2.5) [zealdocs.org/](https://zealdocs.org/) - Zeal is an offline documentation browser for software developers. - GUI
* (2) [Read the Docs](https://readthedocs.org/)
* (2) [Doxygen](https://www.doxygen.nl/index.html)
* (2) [MkDocs](https://www.mkdocs.org/) + (2.5) [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
* (2) [sunaku/dasht](https://github.com/sunaku/dasht)
* (2) [slatedocs/slate](https://github.com/slatedocs/slate) $$$ looks really good
* (2) [Docusaurus](https://docusaurus.io/)
* (6) [Daux.io](https://dauxio.github.io/) - uses PHP and Composer
* (T) [GitBook](https://www.gitbook.com/)
* (T) [docsify/](https://github.com/docsifyjs/docsify/) - [Docsify](https://docsify.js.org/)
* (5) [zest](https://github.com/zestdocs/zest) - unmaintained, but fork and update?

## Regex

* (T) [TRE — The free and portable approximate regex matching library.](https://laurikari.net/tre/)

## RPC

* (2) [gRPC - Wikipedia](https://en.wikipedia.org/wiki/GRPC) [gRPC vs. REST: Key Similarities and Differences - DreamFactory Software- Blog](https://blog.dreamfactory.com/grpc-vs-rest-how-does-grpc-compare-with-traditional-rest-apis/) [gRPC](https://grpc.io/) [Introduction to gRPC | gRPC](https://grpc.io/docs/what-is-grpc/introduction/)

## Maps

* (2.5) [OpenMapTiles](https://openmaptiles.org/) - Set of open-source tools for self-hosting of OpenStreetMap maps in more than 50 languages. It provides both raster as well as vector tiles, WMS and WMTS services for GIS programs, support for JavaScript viewers and mobile SDK. ([BSD](https://github.com/openmaptiles/openmaptiles/blob/master/LICENSE.md)
   | (2.5) [mapnik](https://mapnik.org/)

## Formatting

* (2) [topiary](https://topiary.tweag.io/) [blog post](https://www.tweag.io/blog/2023-10-05-cli-ux-in-topiary/) - univeral code formatting
* (R) [prettier blog post](https://mrmr.io/til/prettier)
* (2) [prettier](https://prettier.io/)

### APIs

* → [public-apis/public-apis](https://github.com/public-apis/public-apis)
* (2.5) [Postman](https://www.getpostman.com/) - Postman, allows a user to develop and test APIs quickly.
   | (2.5) [hoppscotch](https://github.com/hoppscotch/hoppscotch)

### Hosting, Connectivity, Net App Programming

* Azure
* (4.5) [untitledgoosetool](https://github.com/cisagov/untitledgoosetool)
* (2) [Disroot](https://disroot.org/) - Hosted versions of many of the services on this list. (Multiple licenses) $$$$$$$$$
* (2) [Apache HTTP Server](https://httpd.apache.org/) - Secure, efficient, and extensible web server. ([Apache License 2.0](http://www.apache.org/licenses/))
* (2) [uberspace.de/en/](https://uberspace.de/en/) (hosting) [⚛️ Uberlab — UberLab 7 documentation](https://lab.uberspace.de/) $$$$$$$$$
* (2) [linode](https://www.linode.com/), [linode/linode-cli](https://github.com/linode/linode-cli)
* → nextcloud
* (2) [adnanh/webhook](https://github.com/adnanh/webhook)
* (2) [proton drive](https://proton.me/drive/download)
* (2.5) [lighttpd](http://www.lighttpd.net/) - Optimized for speed-critical environments while remaining standards-compliant, secure and flexible. ([Revised BSD license](http://www.lighttpd.net/assets/COPYING)) → try on Inspiron with Alpine
* (2.5) [nginx](https://nginx.org/) - HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server. ([2-clause BSD-like license](https://nginx.org/LICENSE))
   | (2.5)[freenginx](https://freenginx.org/)
* (2) [BlueZ](http://www.bluez.org/) - Official Linux Bluetooth protocol stack.
* (R) [Zerotier](https://my.zerotier.com/) - Zerotier is a program that creates a Virtual Network for only your devices with end to end encryption over the internet. By default Zerotier will manage your virtual network but you can switch to a self-managed network if you prefer.
* (2) [hocus.dev/](https://hocus.dev/) - cloud dev environments, pre-built, free for individual use
* (2) [SparkleShare](https://github.com/hbons/SparkleShare) - An Open Source collaboration and sharing tool [sparkleshare.org/](https://www.sparkleshare.org/) [Nix](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=sparkleshare)
* (2.5) [heroku](https://www.heroku.com/)
* (4) [pushbullet.com/](https://www.pushbullet.com/)   [pushbullet-bash](https://github.com/Red5d/pushbullet-bash) - Bash interface to the PushBullet API - requires Facebook or Google -> see [alternatives](https://alternativeto.net/software/pushbullet/?license=opensource) + (4) [pushblast](https://github.com/alebcay/pushblast) - Get PushBullet notifications when a shell program exits
* (2.5) [Neocities](https://neocities.org/) - GeoCities for the modern world. ([BSD 2-clause](https://github.com/neocities/neocities/blob/master/LICENSE.txt))
* (2.5) [vercel.com/pricing](https://vercel.com/pricing)

### Static Site

* (2) [jaspervdj.be/hakyll/](https://jaspervdj.be/hakyll/) - Haskell static site generator
* (2.5) [Hugo](https://github.com/gohugoio/hugo) - The world’s fastest framework for building websites. [gohugo.io](https://gohugo.io/)
* (2.5) [nanoc](https://github.com/nanoc/nanoc) - Static site generator written in Ruby; extremely powerful and customizable; support many formats to generate HTML content.
* (5) [surge](https://github.com/sintaxi/surge) - Static web publishing on surge.sh CDN.
* (2.5) [metalsmith](https://github.com/metalsmith/metalsmith) - An extremely simple static site generator; all functionalities are provided by plugins that can be combined and chained; written and extendable in Javascript.
* (2) [vitepress.dev/](https://vitepress.dev/) (from  [wiki.nikiv.dev/,](https://wiki.nikiv.dev/,) [wiki.nikiv.dev/free[knowledge](https://github.com/nikitavoloboev/knowledge))

### Wiki

* (R) [x]  [Mycorrhiza Wiki](https://github.com/bouncepaw/mycorrhiza) - A lightweight file-system wiki engine that uses Git for keeping history.

### HTTP Client / REST Client

* (2) [httpie](https://github.com/httpie/httpie) - HTTPie is a command line HTTP client, a user-friendly cURL replacement
* (2) [http-prompt](https://github.com/eliangcs/http-prompt) - Interactive HTTP client featuring autocomplete and syntax highlighting.
* (2) [ain](https://github.com/jonaslu/ain) - HTTP client with a simple format to organize API endpoints.

### HTTP Server

* (2) [serve](https://github.com/vercel/serve) - Serve static files (https, CORS, GZIP compression, etc).
* (2.5) [simplehttp](https://github.com/snwfdhmp/simplehttp) - Easily serve a local directory over HTTP. - try with planager
   | (2.5) [shell2http](https://github.com/msoap/shell2http) - Shell script based HTTP server. - try with planager
* (3) [httplab](https://github.com/gchaincl/httplab) - The interactive web server, let you inspect HTTP requests and forge responses.
* (3) [hflow](https://github.com/comradequinn/hflow) - A command-line, debugging http/s proxy server.
* (5) [balls](https://github.com/jneen/balls) - Bash on Balls

### Socket

* (2) [neoss](https://github.com/PabloLec/neoss) - User-friendly and detailed socket statistics.
* (2) [iola](https://github.com/pvarentsov/iola) - Socket client with REST API.

### Server, Deployment

* (2.5) [dog](https://github.com/ogham/dog) - DNS lookup client; [better `dig`](https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6#do)
   | (2.5) [dog](https://github.com/vschwaberow/dog) - looks good
   | (2.5) [cowyo](https://github.com/schollz/cowyo) - Feature rich wiki webserver for minimalists. - planager?
   | (2.5) [openresty/lua-nginx-module](https://github.com/openresty/lua-nginx-module)
   | (2.5) [xh](https://github.com/ducaale/xh) - Friendly and fast tool for sending HTTP requests - like Httpie, but faster
   | (2.5) [fenix](https://github.com/coreybutler/fenix)[Fenix Web Server](https://fenixwebserver.com/) - A multi-host local static web server with push-button sharing (desktop app).
   | (2.5) [vesper - Vesper](https://github.com/chris-rock/vesper) a HTTP framework for Bash/Unix Shell
   | (2.5) [simplehttp Fastest](https://github.com/snwfdhmp/simplehttp)  Fastest and simplest way to start serving a local directory over http.
* (2) [serve](https://github.com/zeit/serve) - Serves a static site, single page application, or just a static file, and provides a neat interface for listing the directory's contents.
* (2) [shipit](https://github.com/sapegin/shipit) - Minimalistic SSH deployment
* (2) [ipfs-deploy](https://github.com/agentofuser/ipfs-deploy) - Zero-Config CLI to Deploy Static Websites to IPFS [IPFS](https://en.wikipedia.org/wiki/InterPlanetary_File_System).

### Frameworks

* (2) [hypermedia.systems/](https://hypermedia.systems/)
* (2) [cordova.apache.org/](https://cordova.apache.org/)
* (2) [taipy](https://github.com/Avaiga/taipy) - Turns Data and AI algorithms into full web applications in no time.
* (2) [trunkrs.dev/](https://trunkrs.dev/)
* (2) [falconry/falcon](https://github.com/falconry/falcon)
* (6) [Devilbox](https://github.com/cytopia/devilbox) - The devilbox is a modern and highly customisable dockerized PHP stack supporting full LAMP and MEAN and running on all major platforms. The main goal is to easily switch and combine any version required for local development.
* (2) [PonyORM - Python ORM with beautiful query syntax](https://ponyorm.org/)
* (2.5) [nuxt.com/blog/introducing-nuxt-devtools](https://nuxt.com/blog/introducing-nuxt-devtools)
* (3) [typo3](https://github.com/TYPO3/typo3) - [The TYPO3 Project and Community – Open Source CMS](https://typo3.org/)

### Testing / Mocking

* (3) [tsung](https://github.com/processone/tsung) - A multi-protocol distributed load testing tool that can be used to stress HTTP, WebDAV, SOAP, PostgreSQL, MySQL, LDAP and Jabber/XMPP servers.
* (3) [loadtest](https://github.com/alexfernandez/loadtest) - Run load tests.
* (3) [Mockoon](https://mockoon.com/) - an API / HTTP REST mocking desktop application

### Server Benchmarking

* (2.5) [apachebench](https://httpd.apache.org/docs/2.4/programs/ab.html) (ab)
* (4) [siege](http://www.joedog.org/siege-home/)
* (4) [phantomas](https://github.com/macbre/phantomas) - website perf evaluation tool
* (4) [rakyll/hey](https://github.com/rakyll/hey)
* (5) [httperf/httperf](https://github.com/httperf/httperf)
* (4) [vegeta](https://github.com/tsenart/vegeta)
* (2.5) [wrk](https://github.com/wg/wrk) - Lua-scripted

### Misc

* (2) [active fork](https://github.com/acidburn0zzz/nativefier) [nativefier](https://github.com/jiahaog/nativefier) - Make any web page a desktop application.
* (2) [sass-lang.com/](https://sass-lang.com/)
* (5) [xpe](https://github.com/charmparticle/xpe) - A commandline xpath tool that is easy to use.
* (2) [snallygaster](https://github.com/hannob/snallygaster) - Tool to scan for secret files on HTTP servers.
* (5) [strip-css-comments-cli](https://github.com/sindresorhus/strip-css-comments-cli) - Strip comments from CSS.
* (2) [fractarchy-cms](https://github.com/fractarchy/fractarchy-cms)
* (2) [urlhunter](https://github.com/utkusen/urlhunter) - Recon tool that allows searching on URLs that are exposed via shortener services.
* (2) [todomvc.com/](https://todomvc.com/) - use in RosettaProjects $$$$$$$$$ [repo](https://github.com/tastejs/todomvc)
* (2) [localtunnel](https://github.com/localtunnel/localtunnel) - Expose your localhost to the world for easy testing and sharing.
* (2) [ergo](https://github.com/cristianoliveira/ergo) - The management of multiple local services running over different ports made easy.
* (6) [ngrok.com/](https://ngrok.com/) [ngrok](https://github.com/ngrok) - Secure introspectable tunnels to localhost.
* (2) [Insomnia](https://insomnia.rest/) - A simple, beautiful, and free REST API client. (paid service)

## Language-Specific Libraries

* (2) [kiwix-desktop](https://github.com/kiwix/kiwix-desktop) [kiwix apps](https://kiwix.org/en/applications/) [kiwix](https://kiwix.org/en/) - offline wikipedia, maybe most relevant to Elsie
* (4) [timeago](https://pub.dev/packages/timeago) - dart library for converting time to human-readable format ->
* (3) [egui_graphs](https://github.com/blitzarx1/egui_graphs)

## Other Programming Utilities

* (3) [upx](https://upx.github.io/)

## ML/AI

* → [The Ultimate Coding Setup for Data Science](https://youtu.be/TdbeymTcYYE) use conda for environments and pip(/poetry) for installation
* → [ml-tooling](https://github.com/ml-tooling)
* → [Datalust](https://github.com/datalust) (mostly logging-related)
* (2) [llm](https://github.com/simonw/llm)
* (2.5) [PrefectHQ/marvin](https://github.com/PrefectHQ/marvin)
* (2) [katib](https://github.com/kubeflow/katib)(hyperparameter tuning)
* (2) [IllDepence/unarXive](https://github.com/IllDepence/unarXive)
* (2.5) [einops](https://github.com/arogozhnikov/einops) [thoughts on einops](https://arogozhnikov.github.io/2023/07/13/retrospective-thoughts-on-einops.html)
* (2) [dmlc/xgboost](https://github.com/dmlc/xgboost)
* (2) [lmql](https://github.com/eth-sri/lmql) language for constraint-guided and efficient LLM programming
* (2) [gptscript](https://github.com/gptscript-ai/gptscript)
* (2) [nlp-service](https://github.com/recap-utr/nlp-service) $$$$$$$$$
* (2) [quivr](https://github.com/StanGirard/quivr)  - Your GenAI Second Brain 🧠 A personal productivity assistant (RAG) ⚡️🤖 Chat with your docs (PDF, CSV, ...) & apps using Langchain, GPT 3.5 / 4 turbo, Private, Anthropic,  VertexAI, Ollama, LLMs, Groq that you can share with users ! Local & Private alternative to OpenAI GPTs & ChatGPT powered by retrieval-augmented generation. $$$$$$$$$
* (2) [speechify](https://www.speechify.com/mobile/)
* (2) [surya](https://github.com/VikParuchuri/surya) - OCR
* (5) [Stevenic/codepilot: Codepilot is a programming buddy that is an expert on your codebase.](https://github.com/Stevenic/codepilot)
* (2) [micr0-dev/lexido](https://github.com/micr0-dev/lexido) - A terminal assistant, powered by Generative AI $$$$$$$$$
8 (5) [alphawave](https://github.com/Stevenic/alphawave-py) and [promptrix](https://github.com/Stevenic/promptrix-py) -> see also ts versions

## CLI / TUi Development

* (2) [notcurses](https://github.com/dankamongmen/notcurses) - blingful character graphics/TUI library. definitely not curses
* (5) [chalk-animation](https://github.com/bokub/chalk-animation)
* (2) [charm](https://charm.sh/)
* (2) [huh](https://github.com/charmbracelet/huh)
* (2) [jesseduffield/lazycli: Turn static CLI commands into TUIs with ease](https://github.com/jesseduffield/lazycli) -> also update, possibly extend -> make similar
* (2) [pxmenu](https://github.com/iruzo/pxmenu) POSIX sh simple menu
* (2) [scala-CLI](https://xebia.com/blog/better-shell-scripting-with-scala-cli/)
