# Nix

## Notes

* Project idea: add .drv syntax highlighting to bat, or create a bat-based tool to format and display .drv all-in-one

Talk about pure functional programming, esp in terms of input → out and no side effects, no state
* Talk about package hashing as a means of unique identification of a package and its dependencies and the guarantees that brings with it
* Talk about links, soft and hard, and how they are used in Nix
* Talk about what exactly Nix expressions are, as well as flakes
* Then about how Nix code is organized, such as imports
* Go over each point in the desiderata (still a fee to add) and talk about how each relates to pure functional programming
* Do an informal proof of how each desideratum follows from and is required by the definition of pure functional programming
* Then finally go over what Nix does with different commands
* contrast old and new syntax
* Emphasize commonalities among commands, common theme and design goals, etc
* Ideas
* Create tool to populate pyproject.toml with exact versiions supplied by Nix packages, with option for stable or unstable (reference: [github.com](https://github.com/peterldowns/nix-search-cli)
* [peterldowns/nix-search-cli](https://github.com/peterldowns/nix-search-cli)
* Create language server / parser / highlighter for .drv files, add .drv support to bat
* Look at Poetry2Nix and modify it to use pre-built: [github.com](https://github.com/lazamar/nix-package-versions)
* [lazamar/nix-package-versions](https://github.com/lazamar/nix-package-versions) →https://github.com/nix-community/pip2nix?
* Set up git inside nix container
* Next rebuild switch: firefox, ublock origin for firefox and chrome, userscript for all browsers for domain-specific css using pilit stylesheets for wikimedia, github, mdbook, sops-nix secrets, kvantum qt styling, zathura, wezterm keybinds for pane and tab navigation, neovim window and tab navigation <leader>hjkl; neotree open and close keybinds, terminal navigation shortcuts, floating terminal shortcuts, "open file in split" shortcut
* Yet Another Nix Playlist - multilingual audio & subtitles, short, single-topic videos, quality visuals

challenge: synchronize languages and features with init.lua
* buildNvimHM { lib, pkgs, g, features, languages , ...}
* home.packages = [];
* include each (language x feature) file in its own self-contained file; combine in default.nix and call lua formatter
* include lua-ls config file in each directory to ignore missing (vim) imports
* nixmacs - like nixide for emacs -> precompile elisp?
* nix-utils - make as flake
* nixide - flake, also app and shell outputs
* clinix - returns HM and other outputs for CLI dev environment
* move nvim out into its own flake, with languages and features declared externally
* Makes sense to have the config complete and stable first, then to move it into its own flake and add nix-powered modularized configuration
* nixfetch - neofetch for nixos
* Why does chromium via nix have a different hover icon?
* [nix-community/nixos-generators](https://github.com/nix-community/nixos-generators)
* [r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/?rdt=61989](https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/?rdt=61989)
* Look into Nix as a build tool -> Nix vs Just
* Try out Nix container -> how much lighter? how minimal can it be?
* Write garbage collection scripts for Nix & home-manager
* Read source code:
* poetry2nix
* system-manager
* home-manager
* stylix
* nix-colors
* nixpkgs.lib (esp relevant)
* Nix
* Read docs:
* nix manual
* nixpkgs manual
* nixos manual
* home-manager docs
* How to use Nix to modify and act on other Nix file? (wrap, override, etc)
* good discussion: [r/NixOS/comments/1bzvaof/nixos_alternatives](https://www.reddit.com/r/NixOS/comments/1bzvaof/nixos_alternatives)
* write nixfetch: special fetch for NixOS, write in Haskell, use SVG image
* just use Greetd as greeter
* Write script to view entire nix config as one big nix/dhall/json file -> nix eval --expr, etc.
* nix: write insertIf function in Nix to interpolate string if some option is set, otherwise empty stringkeep in separate files and then bring together in Nix. Call files that are incorrect as standalone .luaPiece (for exampke) and in nvim turn on highlighting with false positive errors turned off
* NixOS and Ubuntu are two different Linux distributions with distinct design philosophies and approaches to system management. While both have security features, NixOS incorporates certain design principles that contribute to its security posture. Here are some aspects in which NixOS might be considered more secure than Ubuntu:
* Immutable System Configuration:
* NixOS: NixOS follows an immutable infrastructure model, meaning that the system configuration is treated as a whole, and changes are applied by creating new configurations rather than modifying existing ones. This can reduce the risk of configuration drift and unintended changes that might introduce security vulnerabilities.
* Ubuntu: In traditional Linux distributions like Ubuntu, system configurations are often modified directly, and changes can accumulate over time. This can potentially lead to a less predictable and more complex system state.
* Declarative System Configuration:
* NixOS: NixOS configurations are declarative and specify the desired state of the system. This approach can enhance system predictability and make it easier to audit and understand the system's configuration.
* Ubuntu: While modern Ubuntu versions have introduced tools like Ansible and systemd for system configuration management, they may not enforce the same level of declarative and immutable principles as NixOS.
* Atomic Upgrades and Rollbacks:
* NixOS: NixOS supports atomic upgrades and rollbacks, allowing users to easily switch between different system configurations. This feature can be valuable for system recovery and provides a safety net in case an upgrade introduces unexpected issues.
* Ubuntu: While Ubuntu provides package management tools for upgrading and downgrading individual packages, NixOS's approach extends this to the entire system configuration, including the kernel.
* Package Management and Isolation:
* NixOS: Nix, the package manager used by NixOS, provides a functional and isolated approach to package management. Each package is isolated from others, reducing the potential for conflicts and dependency issues.
* Ubuntu: Ubuntu's package management system, based on APT (Advanced Package Tool), also isolates packages, but it may not enforce the same level of functional package management principles as Nix.
* Enhanced Reproducibility:
* NixOS: The declarative and functional nature of NixOS configurations contributes to enhanced reproducibility. Given the same configuration, a NixOS system can be replicated reliably across different environments.
* Ubuntu: While Ubuntu strives for package consistency, NixOS's functional approach can offer more explicit control over the entire system's state.
* It's important to note that security is a multifaceted aspect, and the effectiveness of security measures depends on various factors, including the specific use case, the user's expertise, and the threat landscape. Both NixOS and Ubuntu have security features, and the choice between them should consider factors beyond security alone, such as community support, package availability, and ease of use.
* Are there, conversely, ways in which Ubuntu is more secure than NixOS?
* ChatGPT
* While NixOS and Ubuntu both prioritize security, they have different design philosophies and approaches to system management. Ubuntu, being one of the most widely used Linux distributions, has its own set of security features and advantages. Here are some aspects where Ubuntu might be considered more secure than NixOS:
* AppArmor and Security Profiles:
* Ubuntu: Ubuntu incorporates AppArmor, a mandatory access control (MAC) framework that restricts the capabilities of individual programs. AppArmor uses security profiles to define what actions specific programs are allowed to perform, enhancing the overall security of the system.
* NixOS: While NixOS supports various security features, including SELinux integration, it might not have the same level of integration and community support for AppArmor as Ubuntu.
* Wide Adoption and Community Support:
* Ubuntu: Being one of the most popular Linux distributions, Ubuntu benefits from a large and active user and developer community. This means that security issues are often discovered and addressed promptly, and there is a wealth of community knowledge and support available.
* NixOS: While NixOS has a dedicated and growing community, it may not be as large or mature as Ubuntu's community. The wider adoption of Ubuntu can contribute to a more extensive security-focused ecosystem.
* Security Patching and Updates:
* Ubuntu: Ubuntu has a well-established system for providing security updates and patches promptly. The Ubuntu Security Team actively monitors vulnerabilities and releases updates to address them in a timely manner.
* NixOS: NixOS also emphasizes security updates, but the update process and release cycle may differ. Ubuntu's regular release schedule and Long-Term Support (LTS) versions provide predictable maintenance and support.
* Ease of Use and User Base:
* Ubuntu: Ubuntu is known for its user-friendly approach, making it accessible to a wide range of users, including those who may not have extensive Linux experience. A user-friendly environment can contribute to better security practices as users are more likely to follow best practices when the system is easy to use.
* NixOS: NixOS has a unique configuration model that may have a steeper learning curve for users unfamiliar with functional programming and declarative configuration. While this design contributes to security, ease of use is also a security consideration.
* Security Documentation and Resources:
* Ubuntu: Ubuntu has extensive documentation, security guides, and community forums that provide resources for users to enhance the security of their systems. The availability of well-documented security practices contributes to overall system security.
* NixOS: NixOS documentation is comprehensive, but the community resources and documentation may not be as extensive or user-friendly for security-related topics as those for Ubuntu.
* It's essential to consider the specific security requirements, user expertise, and the overall ecosystem when choosing between Ubuntu and NixOS. Both distributions have their strengths, and the choice often depends on factors beyond security, including the intended use case, user preferences, and community support.
* The security of software repositories, including Nixpkgs for NixOS and the repositories for Ubuntu and Debian, involves multiple factors, and it's not straightforward to declare one as universally more secure than the others. Each package management system has its own set of security features and practices. Here are some considerations for each:
* Nixpkgs (NixOS):
* Functional Package Management: Nixpkgs uses a functional approach to package management. Each package is built in isolation, and dependencies are explicitly defined. This can help reduce dependency issues and conflicts.
* Reproducibility: Nixpkgs emphasizes reproducibility, meaning that given the same configuration, the build process for packages should produce identical results. This can enhance the trustworthiness of packages.
* Immutable Infrastructure: NixOS follows an immutable infrastructure model, where the entire system configuration is treated as a whole. This can reduce the risk of configuration drift and unintended changes.
* Ubuntu and Debian Repositories:
* Wide Adoption and Community Scrutiny: Ubuntu and Debian have large user communities, and their repositories undergo significant scrutiny. Security vulnerabilities are actively monitored, and updates are provided promptly. The Debian Security Team and the Ubuntu Security Team play key roles in managing security updates.
* Package Signing: Packages in Debian and Ubuntu repositories are signed with cryptographic keys, providing a mechanism to verify the authenticity and integrity of the packages. This helps prevent tampering during the download process.
* Stable Release Process: Debian's stable release process is known for its focus on stability and security. Ubuntu, which is based on Debian, inherits many of these security practices, particularly in Long-Term Support (LTS) releases.
* Ultimately, the security of a software repository depends on various factors, including the development and maintenance practices, community involvement, and the responsiveness to security vulnerabilities. It's crucial to note that security is a holistic concern, and no system is entirely immune to security issues. Regularly applying security updates, using package signing mechanisms, and following security best practices are critical regardless of the chosen distribution.
* When evaluating the security of a system, users should consider their specific security requirements, the threat landscape, and their own expertise in maintaining and securing the system. Additionally, using additional security measures, such as intrusion detection systems and firewalls, can further enhance the security of any Linux distribution.
* Between Nixpkgs and Ubuntu, which confirms more closely to ISO27001?
* ChatGPT
* ISO/IEC 27001 is a widely recognized international standard for information security management systems (ISMS). It provides a systematic approach to managing sensitive company information, ensuring its confidentiality, integrity, and availability. ISO 27001 doesn't prescribe specific technical measures but focuses on establishing a framework for information security governance.
* Comparing Nixpkgs (NixOS) and Ubuntu in the context of ISO 27001 compliance involves considering how each aligns with the standard's principles and practices. Here are some considerations:
* ISO 27001 Framework:
* Nixpkgs (NixOS): NixOS and Nixpkgs provide a unique approach to system configuration and package management with a focus on immutability and declarative specifications. While the ISO 27001 standard doesn't prescribe specific technical solutions, the principles of transparency, traceability, and accountability can align well with Nixpkgs's functional and reproducible system configuration.
* Ubuntu: Ubuntu, as a widely used Linux distribution, has a broad user base and established security practices. It offers tools and features that can be integrated into an ISO 27001 compliant environment. Additionally, Ubuntu's Long-Term Support (LTS) releases may align well with the stability and reliability requirements of ISO 27001.
* Security Updates and Patch Management:
* Nixpkgs (NixOS): Nixpkgs has a strong emphasis on reproducibility and the ability to roll back changes. Security updates can be systematically applied, and the functional package management model allows for clear tracking of changes.
* Ubuntu: Ubuntu has well-defined processes for security updates and patch management. The Ubuntu Security Team actively monitors vulnerabilities and releases timely updates. The Ubuntu ecosystem benefits from widespread adoption and community scrutiny.
* Auditability and Compliance:
* Nixpkgs (NixOS): The functional and declarative nature of Nixpkgs allows for clear specification of system configurations. This can contribute to auditability and compliance efforts, aligning with ISO 27001 principles.
* Ubuntu: Ubuntu's popularity and wide usage contribute to the availability of tools, documentation, and community knowledge, which can facilitate auditability and compliance checks.
* Documentation and Reporting:
* Nixpkgs (NixOS): Nixpkgs and NixOS documentation provide insights into the system's configuration and package management. Clear documentation is essential for ISO 27001 compliance.
* Ubuntu: Ubuntu has extensive documentation and resources that can aid in understanding and implementing security best practices. This can be valuable for documentation and reporting requirements.
* Ultimately, both Nixpkgs (NixOS) and Ubuntu can be used in environments seeking ISO 27001 compliance. The choice depends on factors beyond security alone, such as the specific needs of the organization, the expertise of the team, and the desired system configuration and management model. Organizations should conduct their own risk assessments and carefully consider their unique security and compliance requirements when choosing an operating system and configuration management approach.
* How could one convince his or her supervisors that NixOS is suitable for use in a business context with sensitive data? Currently only Ubuntu and Devian are allowed.
* ChatGPT
* Convincing supervisors to consider NixOS in a business context, especially when Ubuntu and Debian are already established, may require a thoughtful approach that addresses specific concerns related to security, manageability, and business needs. Here are some points and strategies you might consider:
* Security and Reproducibility:
* Emphasize the functional and declarative nature of NixOS, which allows for reproducible system configurations. This can enhance security and traceability, aligning with best practices for managing sensitive data.
* Immutable Infrastructure:
* Highlight the benefits of an immutable infrastructure model, where system configurations are treated as a whole and changes are made by creating new configurations. This can reduce the risk of configuration drift and unauthorized changes.
* Rollback and Recovery:
* Showcase NixOS's ability to perform atomic upgrades and rollbacks, providing a safety net for system changes. This feature can be crucial in ensuring system stability and recovery from unexpected issues.
* Documentation and Auditability:
* Point out the clear documentation provided by NixOS and Nixpkgs. The functional and declarative configuration model makes it easier to document and understand the system state, contributing to auditability.
* Community Support:
* Discuss the growing and active community around NixOS. While Ubuntu and Debian have established communities, NixOS's community is enthusiastic and supportive, and it actively contributes to the development and improvement of the system.
* Integration with Existing Infrastructure:
* Demonstrate how NixOS can integrate with existing infrastructure and tools. Showcase compatibility with standard Linux software and services to reassure that the migration would not disrupt current workflows.
* Pilot Project:
* Propose a pilot project or proof-of-concept to evaluate NixOS in a controlled environment. This can help mitigate concerns, demonstrate the benefits, and provide tangible evidence of NixOS's suitability.
* Educational Resources:
* Provide educational resources and training opportunities for team members to learn about NixOS. Familiarity with the system can alleviate concerns and build confidence in its use.
* Risk Mitigation and Contingency Planning:
* Address concerns about potential risks by discussing mitigation strategies and contingency plans. Explain how NixOS's features contribute to a more resilient and manageable infrastructure.
* Cost and Resource Considerations:
* Highlight any potential cost savings or resource efficiency gained by using NixOS. This might include reduced maintenance efforts, faster system recovery, or improved development workflows.
* Remember to tailor your communication to your supervisors' priorities and concerns. Providing concrete examples, case studies, or success stories of organizations using NixOS for sensitive data can further strengthen your case. Additionally, being open to feedback and collaborating with relevant stakeholders can foster a more inclusive decision-making process.
* Are there any known security risks in NixOS and its packaging system?
* ChatGPT
* As of my last knowledge update in January 2022, NixOS has generally been considered a secure and well-designed Linux distribution, and the Nix package manager is known for its unique and functional approach to package management. However, it's important to note that no software system is entirely immune to security risks, and vulnerabilities can be discovered or addressed over time.
* Here are some considerations regarding security in NixOS and its packaging system:
* Security Practices:
* NixOS follows certain security practices, such as isolating packages and providing a functional and declarative approach to system configuration. This can contribute to a more secure and auditable system.
* Reproducibility:
* NixOS emphasizes reproducibility in package builds. The ability to reproduce builds ensures that the same source code and dependencies result in identical binaries, reducing the risk of tampering and providing transparency in the build process.
* Community Scrutiny:
* NixOS benefits from an active and growing community. Community scrutiny is an essential factor in discovering and addressing security issues. The larger the community, the more eyes are on the codebase, which can contribute to early detection of vulnerabilities.
* Security Updates:
* Like any Linux distribution, NixOS provides security updates for its packages. Regularly applying these updates is crucial for addressing known vulnerabilities. Users should stay informed about security advisories and apply updates promptly.
* Limited Attack Surface:
* Nix's functional approach to package management can potentially limit the attack surface by isolating packages and dependencies. Each package is built in its own environment, reducing the risk of conflicts and shared library vulnerabilities.
* Centralized Configuration:
* NixOS's centralized and declarative system configuration can contribute to better security by providing a clear overview of the system state. This can facilitate auditing and compliance efforts.
* While NixOS has its security strengths, it's essential to stay informed about the latest developments, security advisories, and updates in the NixOS community. Regularly checking the official NixOS Security page, participating in community discussions, and monitoring security mailing lists are good practices for staying informed about security-related matters.
* Additionally, the security landscape can evolve, and new information may have emerged since my last update in January 2022. Therefore, it's advisable to check the latest sources and security advisories for the most up-to-date information regarding NixOS security.
* → make script to pull relevant system-specific infor from output of nixos-generate-config command
* sudo nixos-rebuild switch —extra-experimental-features “nix-command flakes” —flake .#hank
* figure out audio config
* remove all traces of snaps; raise issue on nix-snap
* → solve the mystery of $PATH
* package landscape-client with nix → how to look inside .deb and .snap packages?
* try landscape-client in distrobox?
* → build iridium browser for Nix
* → build waveterm for Nix
* Goal: To create a Python develop environment where everything just works
* → make script to pull relevant system-specific infor from output of nixos-generate-config command
* sudo nixos-rebuild switch —extra-experimental-features “nix-command flakes” —flake .#hank
* figure out audio config
* remove all traces of snaps; raise issue on nix-snap
* → solve the mystery of $PATH
* package landscape-client with nix → how to look inside .deb and .snap packages?
* try landscape-client in distrobox?
* → build iridium browser for Nix
* → build waveterm for Nix
* create script: nixos-report: like ls for all relevant directories, following all links to real file; also other important information
* go through all xdg options on mynixos
* Create nand2tetris for NixOS → add to nixpkgs

Roadmap

* [x] install Nix
* [x] try out Nix package manager
* [x] install NixOS
* [x] configure NixOS with flakes and install basic packages
* [x] install Hyprland and get it working
* [x] use Home Manager to create the first config
* [x] try out home manager in a docker container on Hank to get a feel for it
* [x] write poetry2nixpkgs → found a way to use overrides instead
* [ ] create poetry2nix-playground repo to demo problem with editable installation
* [ ] create post on Nix discourse asking for help with poetry2nix editable installs
* [ ] back up current configs on Hank
* [ ] add configs to home-manager config:

Notes

* Talk about pure functional programming, esp in terms of input → out and no side effects, no state
* Talk about package hashing as a means of unique identification of a package and its dependencies and the guarantees that brings with it
* Talk about links, soft and hard, and how they are used in Nix
* Talk about what exactly Nix expressions are, as well as flakes
* Then about how Nix code is organized, such as imports
* Go over each point in the desiderata (still a fee to add) and talk about how each relates to pure functional programming
* Do an informal proof of how each desideratum follows from and is required by the definition of pure functional programming
* Then finally go over what Nix does with different commands
* contrast old and new syntax
* Emphasize commonalities among commands, common theme and design goals, etc
* Ideas
* Create tool to populate pyproject.toml with exact versiions supplied by Nix packages, with option for stable or unstable (reference: [github.com](https://github.com/peterldowns/nix-search-cli)
* [peterldowns/nix-search-cli](https://github.com/peterldowns/nix-search-cli)
* Create language server / parser / highlighter for .drv files, add .drv support to bat
* Look at Poetry2Nix and modify it to use pre-built: [github.com](https://github.com/lazamar/nix-package-versions)
* [lazamar/nix-package-versions](https://github.com/lazamar/nix-package-versions) → [nix package versions](https://github.com/nix-community/pip2nix)

```nix
* buildPythonPackage {
* pname = "TODO";
* version = "TODO";
* src = fetchPypi {
* inherit pname version;
* sha256 = ""; # TODO

};
```

* note: add reasonably-minimal container CL environment to Nix flake
* notes: create different configuration expressions to wrap and manage window managers and widgets and login managers etc: hyprland-ags.nix  hyprland-basic.nix  sway.nix  swayfx.nix riverwm.nix popos.nix

## Code

snippet * deploy = homeManager.makeModule { modules = [ config.nixos ]; };

```nix

{ lib, pkgs, neovimUtils, wrapNeovimUnstable, neovim-nightly-src, ... }:
* let
  binpath = lib.makeBinPath (with pkgs; [
    lua-language-server
    stylua

    nodePackages.prettier
    nodePackages.pyright

    # I can't install this with the rest of the python packages b/c this needs to be in path
    python3Packages.jupytext
    lua
  ]);
  neovimConfig = pkgs.neovimUtils.makeNeovimConfig {
    extraLuaPackages = p: [ p.magick ];
    extraPython3Packages = p: with p; [
      pynvim
      jupyter-client
      cairosvg
      ipython
      nbformat
    ];
    extraPackages = p: with p; [
      imageMagick
    ];
    withNodeJs = true;
    withRuby = true;
    withPython3 = true;
    # [NixOS/nixpkgs/issues/211998](https://github.com/NixOS/nixpkgs/issues/211998)
    customRC = "luafile ~/.config/nvim/init.lua";
  };
* in

{
  nixpkgs.overlays = [
    (_: super: {
      neovim-custom = pkgs.wrapNeovimUnstable
        # (neovim-nightly.overrideAttrs (oldAttrs: {
        (super.neovim-unwrapped.overrideAttrs (oldAttrs: {
          buildInputs = oldAttrs.buildInputs ++ [ super.tree-sitter ];
          src = neovim-nightly-src;
        }))
        (neovimConfig // {
          wrapperArgs = lib.escapeShellArgs neovimConfig.wrapperArgs
            + " --prefix PATH : ${binpath}";
        });
    })
  ];

  environment.systemPackages = with pkgs; [
    neovim-custom
  ];

}

```

### Haskell CLI in Flake

```sh
my-haskell-flake/
├── src/
│   └── Main.hs        # Haskell source file containing your CLI program
├── flake.nix          # Nix flake definition
└── default.nix        # Optional, used if you prefer to use default.nix for overrides
```

```hs
-- src/Main.hs
module Main where
* import Options.Applicative
* data Options = Options
  { name :: String
  } deriving (Show)
* parseOptions :: Parser Options
parseOptions = Options
  <$> strOption
    ( long "name"
    <> short 'n'
    <> metavar "NAME"
    <> help "Your name" )
* main :: IO ()
main = do
  options <- execParser opts
  putStrLn $ "Hello, " ++ name options ++ "!"
  where
    opts = info (parseOptions <**> helper)
      ( fullDesc
     <> progDesc "Print a greeting for NAME"
     <> header "hello - a simple greeting program" )
```

```nix

# flake.nix

{
  description = "My Haskell Flake with CLI functionality";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    # Define an executable output that builds and runs the Haskell CLI program
    executable = {
      # Specify the path to your Haskell source file
      command = "src/Main.hs";

      # Optionally specify additional dependencies
      # dependencies = [ pkgs.haskellPackages.somePackage ];

      # Optionally specify environment variables or other settings
    };
  };
}
```

```nix

# tree.nix

{ lib, nixpkgs ? import <nixpkgs> {} }:
* let

# Function to print a tree structure

printTree = prefix: node: tree:
* if lib.isAttrs node
* then
* let
* attrs = lib.attrValues node;
* attrNames = lib.attrNames node;
* lines = lib.mapAttrsToList (name: value: "${name}: ${value}") node;
* subtree = lib.mapAttrsToList (name: value: printTree (prefix + "  ") value tree) node;
* in
* if lib.length attrs > 0
* then "${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${name}: ${value}") node)}"
* else

"${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${value}") node)}"

+ (lib.concatStringsSep "\\n" subtree)
* else "${prefix}${node}";

# Function to build the import tree

* buildImportTree = derivation:
* let
* buildTree = drv:
* let
* inputs = lib.foldl' (acc: input: acc + [input])
* [] drv.buildInputs;
* in

{ ${lib.foldl' (acc: input: acc + [input]) "" inputs} } // (lib.foldl' (acc: input: acc + buildTree input) {} inputs);
* importTree = buildTree derivation;
* in
* printTree "" importTree importTree;
* in

{ buildImportTree, printTree }
* This script defines two functions: printTree for printing the tree structure and buildImportTree for building the import tree. The example assumes you have the nixpkgs attribute set available.To use this script, you can import it into another Nix expression and call the buildImportTree function, passing the derivation for the desired output. For example:nixCopy code
```

```nix

# example.nix

{ lib, nixpkgs ? import <nixpkgs> {}, tree ? import ./tree.nix { nixpkgs = nixpkgs; } }:
* let
* myOutput = nixpkgs.myPackage.outputs.defaultPackage.x86_64-linux;
* importTree = tree.buildImportTree myOutput;
* in
* tree.printTree "" importTree importTree
```

```nix
buildPythonPackage {
  pname = "TODO";
  version = "TODO";
  src = fetchPypi {
  inherit pname version;
  sha256 = ""; # TODO
};
```

 You How could I print out a tree representation of the imports of a given output?ChatGPTChatGPT To print out a tree representation of the imports of a given output in a Nix flake, you can leverage the nixpkgs attribute set and the buildInputs attribute of the derivation for the specified output. You can create a recursive function to traverse the import tree and print it in a tree-like structure.Here's an example script in Nix that demonstrates how you can achieve this

```nix

# tree.nix

{ lib, nixpkgs ? import <nixpkgs> {} }:
let
  # Function to print a tree structure
  printTree = prefix: node: tree:
    if lib.isAttrs node
  then let
    attrs = lib.attrValues node;
    attrNames = lib.attrNames node;
    lines = lib.mapAttrsToList (name: value: "${name}: ${value}") node;
    subtree = lib.mapAttrsToList (name: value: printTree (prefix + "  ") value tree) node;
  in
    if lib.length attrs > 0
    then "${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${name}: ${value}") node)}"
    else "${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${value}") node)}" + (lib.concatStringsSep "\\n" subtree)
* else "${prefix}${node}";

# Function to build the import tree

* buildImportTree = derivation:
* let
* buildTree = drv:
* let
* inputs = lib.foldl' (acc: input: acc + [input])
* [] drv.buildInputs;
* in

{ ${lib.foldl' (acc: input: acc + [input]) "" inputs} } // (lib.foldl' (acc: input: acc + buildTree input) {} inputs);
* importTree = buildTree derivation;
* in
* printTree "" importTree importTree;
* in

{ buildImportTree, printTree }
* This script defines two functions: printTree for printing the tree structure and buildImportTree for building the import tree. The example assumes you have the nixpkgs attribute set available.To use this script, you can import it into another Nix expression and call the buildImportTree function, passing the derivation for the desired output. For example:nixCopy code

# example.nix

{ lib, nixpkgs ? import <nixpkgs> {}, tree ? import ./tree.nix { nixpkgs = nixpkgs; } }:
* let
* myOutput = nixpkgs.myPackage.outputs.defaultPackage.x86_64-linux;
* importTree = tree.buildImportTree myOutput;
* in
* tree.printTree "" importTree importTree
```

* Replace myPackage with the actual package name or output you want to inspect. Running the example.nix script should print the import tree structure for the specified output.

* Flake CLI QuestionHow can I add a CLI functionality to a Nix flake?ChatGPTChatGPT To add command-line interface (CLI) functionality to a Nix flake, you can use the programs attribute in the flake's outputs section. Here's a step-by-step guide:
* Create a directory structure: In your flake's directory, create a directory for your CLI program. For example:plaintextCopy code
* my-flake/

```txt
├── flake.nix

└── src/

└── my-cli/

└── Main.hs
* 1.
* Write your CLI program: Write your CLI program in the Main.hs file. For example:haskellCopy code
* - src/my-cli/Main.hs
* module Main where
* import System.Environment
* main :: IO ()
* main = do
* args <- getArgs
* putStrLn $ "Hello, CLI! Args: " ++ show args
* 1.
* Update your flake.nix file: Update your flake.nix file to include the programs attribute. Here's an example:nixCopy code

{
* description = "My Flake with CLI";
* inputs = {
* nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";

};
* outputs = { self, nixpkgs }: {
* defaultPackage.x86_64-linux = self.packages.haskellPackages.callPackage ./src/my-cli {};
* programs.hello-cli = {
* enable = true;
* package = self.defaultPackage.x86_64-linux;

};

};

}
```

* 1. In this example, hello-cli is the name of your CLI program. The package attribute points to the Haskell package generated from your source code.
* Build and run your CLI program: Run the following commands to build and run your CLI program:bashCopy code
* nix build
* ./result/bin/hello-cli
* 1. Replace hello-cli with the name you specified in your programs attribute.
* Now, your Nix flake includes a CLI program that can be easily built and run. You can customize the programs attribute further based on your specific requirements. [...](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
* [...](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You What are the possible values for the atributes of the output of a flake?ChatGPTChatGPT In a Nix flake, the outputs attribute is used to specify the outputs that will be produced by the flake. Each output can have its own set of attributes. Here are some common attributes that can be used in the outputs section of a flake:
* defaultPackage: This attribute specifies the default output for the flake. It usually points to the main result produced by the flake. For example:nixCopy code


```txt
* outputs = { self, nixpkgs }: {
* defaultPackage.x86_64-linux = self.packages.x86_64-linux.myPackage;

};
* 1.
* packages: This attribute is used to define one or more packages produced by the flake. Each package can have its own set of attributes like packagePrefix, meta, etc.nixCopy code
* outputs = { self, nixpkgs }: {
* packages.x86_64-linux.myPackage = self.packages.haskellPackages.myHaskellPackage;

};
* 1.
* programs: This attribute is used to define executable programs produced by the flake. It allows you to specify which packages to use and whether the program should be enabled or not.nixCopy code
* outputs = { self, nixpkgs }: {
* programs.myProgram = {
* enable = true;
* package = self.packages.x86_64-linux.myPackage;

};

};
* 1.
* documentation: This attribute is used to specify documentation generated by the flake. It can include attributes like html, man, etc.nixCopy code
* outputs = { self, nixpkgs }: {
* documentation.html = self.defaultPackage.x86_64-linux + "/share/doc/myPackage/html";

};
* 1.
* dev: This attribute is used to specify development files produced by the flake.nixCopy code
* outputs = { self, nixpkgs }: {
* dev = self.defaultPackage.x86_64-linux + "/lib/myPackage-dev";

};
* 1.
* These are just examples, and the actual attributes you use will depend on the nature of your flake and the kind of outputs you want to produce. The key is to define the outputs you need and customize their attributes accordingly. Always refer to the Nixpkgs manual or Nix documentation for the most up-to-date and detailed information on available attributes. [...](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
* [...](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You How could I print out a tree representation of the imports of a given output?ChatGPTChatGPT To print out a tree representation of the imports of a given output in a Nix flake, you can leverage the nixpkgs attribute set and the buildInputs attribute of the derivation for the specified output. You can create a recursive function to traverse the import tree and print it in a tree-like structure.Here's an example script in Nix that demonstrates how you can achieve this:nixCopy code
* Replace myPackage with the actual package name or output you want to inspect. Running the example.nix script should print the import tree structure for the specified output.
```

* code * [t.me](https://t.me/nixos_en/114808?single)

## Resources

* {resource} [snowfallorg/lib](https://github.com/snowfallorg/lib)
* {resource} [...](https://github.com/nix-community/NUR)
* {resource} [...](https://www.nixhub.io/)
* {resource} [corps/nix-kernel](https://github.com/corps/nix-kernel) - need to create
* {resource} [CuBeRJAN/nix-problems](https://github.com/CuBeRJAN/nix-problems) 
* {resource} [DavHau/nix-portable: Nix - Static, Permissionless, Installation-free, Pre-configured](https://github.com/DavHau/nix-portable)
* {resource} [DavidEGrayson/nixcrpkgs](https://github.com/DavidEGrayson/nixcrpkgs) - expressions for cross-compiling
* {resource} [determinate systems](https://determinate.systems/)
* {resource} [devos $$$](https://devos.divnix.com/index.html)
* {resource} [discourse.nixos.org](https://discourse.nixos.org/search?q=learning) journey working group meeting notes [/r/NixOS/comments/r8bj9l/aoc_2021_using_nix/](https://www.reddit.com/r/NixOS/comments/r8bj9l/aoc_2021_using_nix/)
* {resource} [divnix book intro](https://book.divnix.com/ch02-00-introduction.html)
* {resource} [divnix](https://github.com/divnix)
* {resource} [divnix/digga?](https://github.com/divnix/digga?))
* {resource} [divnix/std](https://github.com/divnix/std)
* {resource} [flakehub](https://flakehub.com/)
* {resource} [GitHub - mikeroyal/NixOS-Guide: NixOS Guide. Learn all about the immutable Nix Operating System and the declarative Nix Expression Language.](https://github.com/mikeroyal/NixOS-Guide)
* {resource} [GitHub - numtide/system-manager: Manage system config using nix on any distro - Links - NixOS Discourse](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064)
* {resource} [github-numtide-system-manager-manage-system-config-using-nix-on-any-distro](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/13)
* {resource} [Latest Help topics - NixOS Discourse](https://discourse.nixos.org/c/learn/9)
* {resource} [mynixos.com](https://mynixos.com/pricing)
* {resource} [Nix & NixOS CheatSheet](https://nixcademy.com/cheatsheet.html)
* {resource} [Nix By Example · Nix Cookbook](https://ops.functionalalgebra.com/nix-by-example/)
* {resource} [Nix language — Dan's Cheat Sheets 1 documentation](https://cheat.readthedocs.io/en/latest/nixos/nix_lang.html)
* {resource} [Nix language basics — nix.dev documentation](https://nix.dev/tutorials/nix-language)
* {resource} [Nix Reference Manual](https://nix.dev/manual/nix/2.19/)
* {resource} [nix-community/haumea](https://github.com/nix-community/haumea)
* {resource} [nix-community/nixpkgs-wayland: Automated, pre-built packages for Wayland (sway/wlroots) tools for NixOS. [maintainers=@colemickens, @Artturin]](https://github.com/nix-community/nixpkgs-wayland)
* {resource} [nix-community/nixpkgs.lib: nixpkgs lib for cheap instantiation [maintainer=@github-action] (with initial help from @blaggacao)](https://github.com/nix-community/nixpkgs.lib)
* {resource} [nix-community/NUR](https://github.com/nix-community/NUR)
* {resource} [nix.dev concepts](https://nix.dev/concepts/%23concepts)
* {resource} [nix4noobs](https://nix4noobs.com/)
* {resource} [nixhub](https://www.nixhub.io/)
* {resource} [NixOS Discourse - NixOS community forum](https://discourse.nixos.org/)
* {resource} [nixos.asia](https://nixos.asia/en/)
* {resource} [practical nixos - the book](https://drakerossman.com/blog/practical-nixos-the-book)
* {resource} [system-manager/examples/example.nix at main · numtide/system-manager](https://github.com/numtide/system-manager/blob/main/examples/example.nix)
* {resource} [target/nix-fetchers](https://github.com/target/nix-fetchers)
* {resource} [thiagokokada/nix-alien: Run unpatched binaries on Nix/NixOS](https://github.com/thiagokokada/nix-alien)
* {resource} [tinkering.xyz](https://tinkering.xyz/)
* {resource} [tweag.github.io](https://tweag.github.io/nixpkgs/file-sets/manual.html%23preface)
* {resource} [Wil Taylor's NixOS series](https://www.youtube.com/watch?v%3DQKoQ1gKJY5A%26list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* {resource} [zero to nix - concepts](https://zero-to-nix.com/concepts)
* {resource} [zero to nix](https://zero-to-nix.com/start)
* {resource video} [Nix Hour Playlist](https://www.youtube.com/playlist?list%3DPLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in)
* {resources} [nixos.org](https://nixos.org/manual/nixos/stable/)
* {resources} [nixos.org](https://nixos.org/manual/nixpkgs/stable/)
* {resources} [ryantm.github.io](https://ryantm.github.io/nixpkgs/)

### Blogs

* [cola-gang industries](https://cola-gang.industries/)
* [tweag-nix-dev-update-16](https://discourse.nixos.org/t/tweag-nix-dev-update-16/14379)
* [tweag-nix-dev-update-17](https://discourse.nixos.org/t/tweag-nix-dev-update-17/15037)

### People

* [/user/matthew-croughan/](https://www.reddit.com/user/matthew-croughan/)
* {person} [ahoneybun blog](https://ahoneybun.net/blog/)
* {person} [video](https://www.youtube.com/@Emergent_Mind)
* {person} [chetanbhasin.com](https://chetanbhasin.com/articles)
* {person} [emergent mind (yt channel)](https://www.youtube.com/@Emergent_Mind)
* {person} [Geoffrey Huntley](https://ghuntley.com/)
* {person} [Julia Evans](https://jvns.ca/) (Nix)
* {person} [NyCodeGHG (Marie)](https://github.com/nycodeghg)
* {person} [srid.ca](https://srid.ca/rust-nix)

## Learning Nix

### Nix Reading Roadmap

* [ ]  stylix
* [ ]  poetry2nix source code
* [ ]  poetry2nix docs
* [ ]  nixCats source code
* [ ]  nix-colors
* [ ]  nix language source code implementation
* [ ]  my own lib
* [ ]  home-manager docs
* [ ]  home-manager code

### Nix Internals

* {internal} [nix-release-schedule-and-roadmap](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
internal * $$$ [jonathanlorimer.dev](https://jonathanlorimer.dev/posts/nix-thesis.html)
* {internals } [Derivations (Nix From First Principles: Flake Edition #5) - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-5-derivation-intro/)
* {internals} [/r/Nix/comments/12yg5tj/eli5_how_can_i_upgrade_a_package/](https://www.reddit.com/r/Nix/comments/12yg5tj/eli5_how_can_i_upgrade_a_package/)
* {internals} [a-proposal-for-replacing-the-nix-worker-protocol](https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5)
* {internals} [Building a Nix Package | Karim's Blog](https://elatov.github.io/2022/01/building-a-nix-package/)
* {internals} [Development Roadmap, with Mention of 3.0 and 4.0](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
* {internals} [Gabriella Gonzalez, "How to Write a Nix Derivation" - YouTube](https://www.youtube.com/watch?v%3DbbW6kgB5F2M)
* {internals} [How do i install a package from source? : NixOS](https://www.reddit.com/r/NixOS/comments/4enwa2/how_do_i_install_a_package_from_source/)
* {internals} [How do Nix builds work?](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)
* {internals} [How to install package from github? - Help - NixOS Discourse](https://github.com/how-to-install-package-from-github/444)
* {internals} [nixos.org](https://nixos.org/manual/nix/stable/package-management/profiles)
* {internals} [nixos.wiki](https://nixos.wiki/wiki/Ca-derivations)
* {internals} [packaging - How to package my software in nix or write my own package derivation for nixpkgs - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs)
* ( ) [(Towards) stable C bindings for libutil, libexpr by yorickvP · Pull Request #8699 · NixOS/nix](https://github.com/NixOS/nix/pull/8699)

## ## Nix Tools

* {tool} [argoproj/argo-workflows](https://github.com/argoproj/argo-workflows)
* {tool} [crane](https://crane.dev/)
* {tool} [Deterministic systems with Nix](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
* {tool} [erikarvstedt/extra-container](https://github.com/erikarvstedt/extra-container)
* {tool} [Is anyone working on a GUI tool to manage packages? - NixOS Discourse](https://discourse.nixos.org/t/is-anyone-working-on-a-gui-tool-to-manage-packages/5540)
* {tool} [Mic92/nix-update](https://github.com/Mic92/nix-update)
* {tool} [Nix-lite, or Nix without the store, for templating - NixOS Discourse](https://discourse.nixos.org/t/nix-lite-or-nix-without-the-store-for-templating/38577)
* {tool} [Nix's very own graphical UI - Matej Cotman's Blog](https://blog.matejc.com/blogs/myblog/nixs-very-own-graphical-ui)
* {tool} [pkgs.nix-tree](...)
* {tool} [primamateria.github.io](https://primamateria.github.io/blog/haumea-cheatsheet/)
* {tool} [prmadev/willow](https://github.com/prmadev/willow)
* {tool} [purenix post](https://functor.tokyo/blog/2022-01-10-why-purenix)
* {tool} [PureNix: Write PureScript and transpile it to Nix : r/NixOS](https://www.reddit.com/r/NixOS/comments/sw3zpp/purenix_write_purescript_and_transpile_it_to_nix/)
* {tool} [Quickstart](https://snowfall.org/guides/lib/quickstart/)
* {tool} [RaitoBezarius/buildxyz](https://github.com/RaitoBezarius/buildxyz)
* {tool} [search?q%3Drepo%253Anumtide%252Fsystem-manager](https://github.com/search?q%3Drepo%253Anumtide%252Fsystem-manager)
* {tool} [summer.nixos.org](https://summer.nixos.org/blog/callpackage-a-tool-for-the-lazy/)
* {tool} [symphorien/nix-du: Visualise which gc-roots to delete to free some space in your nix store](https://github.com/symphorien/nix-du)
* {tooling} [nix-community/rnix-parser: A Nix parser written in Rust [maintainer=@oberblastmeister]](https://github.com/nix-community/rnix-parser)
* {tooling} [nixos-infect/nixos-infect at master · elitak/nixos-infect](https://github.com/elitak/nixos-infect/blob/master/nixos-infect)
* {tooling} [nuenv](https://determinate.systems/posts/nuenv)
* {tooling} [overview of nix formatters](https://drakerossman.com/blog/overview-of-nix-formatters-ecosystem)
* {tools} [[RFC 0166] Nix formatting, take two #166](https://github.com/NixOS/rfcs/pull/166)
use! [github.com](https://github.com/zhaofengli/colmena)
* ai [Nixified AI](https://nixified.ai/)
* → [github.com](https://github.com/nix-community/awesome-nix)
* [peterldowns/nix-search-cli](https://github.com/peterldowns/nix-search-cli)
* [nmattia/niv](https://github.com/nmattia/niv)
* [lazamar.co.uk](https://lazamar.co.uk/nix-versions/)
* [app.cachix.org](https://app.cachix.org/)
* [NixOS/nix/pull/4577](https://github.com/NixOS/nix/pull/4577)
* [docs.cachix.org](https://docs.cachix.org/)
* [blog.cachix.org](https://blog.cachix.org/posts/2022-07-29-cachix-deploy-public-beta/)
* {cachix} [nix-community cachix](https://app.cachix.org/cache/nix-community) 
* [mobile.nixos.org](https://mobile.nixos.org/) ‣*
* [madjar/nox](https://github.com/madjar/nox)
* [nix-community/nix-direnv](https://github.com/nix-community/nix-direnv)
* [nix-community/awesome-nix](https://github.com/nix-community/awesome-nix)
* $$$$$ [hugoreeves/elemental](https://github.com/hugoreeves/elemental)
* $$$$ [DeterminateSystems/nix-installer](https://github.com/DeterminateSystems/nix-installer)
* [nixops.readthedocs.io](https://nixops.readthedocs.io/en/latest/index.html)
* [divnix/digga: A flake utility library to craft shell-, home-, and hosts- environments.](https://github.com/divnix/digga)
* [fzakaria/nix-home: A nix home development environment](https://github.com/fzakaria/nix-home)
* [Introduction - Alternative Haskell Infrastructure for Nixpkgs](https://input-output-hk.github.io/haskell.nix/index.html)
* [blitz/tuxedo-nixos](https://github.com/blitz/tuxedo-nixos)
* [DavHau/nix-portable](https://github.com/DavHau/nix-portable)
* [HugoReeves/elemental: Elemental, the component parts of a Nix/OS development system.](https://github.com/hugoreeves/elemental)
* [infra/localhost: Fully reproducible localhost - localhost - code.dumpstack.io](https://code.dumpstack.io/infra/localhost)
* [kamadorueda/alejandra: The Uncompromising Nix Code Formatter](https://github.com/kamadorueda/alejandra)
* [nix-community/nurl](https://github.com/nix-community/nurl)
* [nix-community/nix-init](https://github.com/nix-community/nix-init)
* [devenv.sh](https://devenv.sh/)
* [devenv.sh](https://devenv.sh/getting-started/)  [nix-community/dream2nix: Automate reproducible packaging for various language ecosystems [maintainer=@DavHau]](https://github.com/nix-community/dream2nix)
* [nix-community/nix-direnv: A fast, persistent use_nix/use_flake implementation for direnv [maintainer=@Mic92 / @bbenne10]](https://github.com/nix-community/nix-direnv)
* [NixOS/nixos-hardware: A collection of NixOS modules covering hardware quirks.](https://github.com/NixOS/nixos-hardware)
* [flyx/Zicross](https://github.com/flyx/Zicross)
* [nixery.dev](https://nixery.dev/)
* [Tvix: We Are Rewriting Nix | Hacker News](https://news.ycombinator.com/item?id=29412971)
* [cs.tvl.fyi](https://cs.tvl.fyi/depot/-/tree/tvix)
* [TVL's blog: Tvix: We are rewriting Nix](https://tvl.fyi/blog/rewriting-nix)
* [Introduction | Nixpacks](https://nixpacks.com/docs)
* [Integrated Haskell Platform: Rapid Prototyping mit Haskell und Nix | heise online](https://www.heise.de/hintergrund/Integrated-Haskell-Platform-Rapid-Prototyping-mit-Haskell-und-Nix-7538849.html)
* [ihp.digitallyinduced.com](https://ihp.digitallyinduced.com/)
* [nix-community.github.io](https://nix-community.github.io/dream2nix/)
* [nixpacks.com](https://nixpacks.com/docs)
* [hub.docker.com](https://hub.docker.com/r/nixos/nix)
* [nix-community/NixNG](https://github.com/nix-community/NixNG)
* [kamadorueda/nixel](https://github.com/kamadorueda/nixel)
* [kamadorueda/b3](https://github.com/kamadorueda/b3) Totos - Nix in Rust [github.com](https://github.com/cleverca22/not-os)
* [haskell-nix/hnix](https://github.com/haskell-nix/hnix)
* [nix-community/nixos-anywhere](https://github.com/nix-community/nixos-anywhere)
* [numtide.com](https://numtide.com/blog/nixos-anywhere-intro/)
* [the-nix-way/dev-templates](https://github.com/the-nix-way/dev-templates)  [haskell-nix/hnix](https://github.com/haskell-nix/hnix)
* [nickel-lang/nickel-nix: An experimental Nix toolkit to use nickel as a language for writing nix packages, shells and more.](https://github.com/nickel-lang/nickel-nix)
* [cachix/pre-commit-hooks.nix](https://github.com/cachix/pre-commit-hooks.nix)
* [cachix/cachix](https://github.com/cachix/cachix)
* [git.neet.dev](https://git.neet.dev/zuckerberg/AoC-2022-Nix)
* [cachix/pre-commit-hooks.nix](https://github.com/cachix/pre-commit-hooks.nix)
* [divnix/Fractal](https://github.com/divnix/Fractal)
* [ArctarusLimited/xnlib](https://github.com/ArctarusLimited/xnlib)
* [mirkolenz/flocken](https://github.com/mirkolenz/flocken)
* [kamadorueda/alejandra](https://github.com/kamadorueda/alejandra)
* [crazazy/aoc2020](https://github.com/crazazy/aoc2020)
* [figsoda/utf8](https://github.com/figsoda/utf8)
* [GitHub - akirak/nix-env-install: Emacs frontend to installing packages using Nix](https://github.com/akirak/nix-env-install) ‣ [nixified.ai](https://nixified.ai/)
* [canva-public/js2nix: Node.js modules installation using Nix](https://github.com/canva-public/js2nix)
* [direnv.net](https://direnv.net/)
* [Installation | direnv](https://direnv.net/docs/installation.html)
* [/docs/guides/install-nixos-on-linode/](https://www.linode.com/docs/guides/install-nixos-on-linode/)
* [Advent of Code 2019](https://adventofcode.com/2019)
* [Nix · direnv/direnv Wiki](https://github.com/direnv/direnv/wiki/Nix)
* [nix-community/nix-direnv: A fast, persistent use_nix/use_flake implementation for direnv [maintainer=@Mic92 / @bbenne10]](https://github.com/nix-community/nix-direnv)
* [Nixd: nix language server - Announcements - NixOS Discourse](https://discourse.nixos.org/t/nixd-nix-language-server/28910)
* [Nixhub.io | A Nix Packages Registry](https://www.nixhub.io/)
* [The Determinate Nix Installer](https://zero-to-nix.com/concepts/nix-installer)* - nixos-anywhere*
* [nixos-anywhere-1-0-release](https://discourse.nixos.org/t/nixos-anywhere-1-0-release/33145)
* [numtide.com](https://numtide.com/blog/nixos-anywhere-1-0-release/)*
* [determinate.systems](https://determinate.systems/posts/nuenv)
* [flox.dev](https://flox.dev/)
* [reproducible-builds.org](https://reproducible-builds.org/)
* [Nickel](https://nickel-lang.org/) ‣

## Neovim via Nix

* {nvim} [(3) Neovim on NixOS? : neovim](https://www.reddit.com/r/neovim/comments/196fqno/neovim_on_nixos/)
* {nvim} [(4) Manage Neovim plugins (and more!) with Nix and Home Manager : neovim](https://www.reddit.com/r/neovim/comments/106letr/manage_neovim_plugins_and_more_with_nix_and_home/)
* {nvim} [Authoring a Plugin — NixOps 2.0 documentation](https://nixops.readthedocs.io/en/latest/plugins/authoring.html)
* {nvim} [b-src/lazy-nix-helper.nvim: Neovim plugin allowing a single neovim configuration with the Lazy plugin manager to be used on NixOS and other platforms](https://github.com/b-src/lazy-nix-helper.nvim)
* {nvim} [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* {nvim} [home-manager/modules/programs/neovim.nix at master · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/master/modules/programs/neovim.nix%23L47)
* {nvim} [LnL7/vim-nix/](https://github.com/LnL7/vim-nix/)
* {nvim} [Neovim and Nix home-manager: Supercharge Your Development Environment - YouTube](https://www.youtube.com/watch?v%3DYZAnJ0rwREA)
* {nvim} [Neovim and Nix home-manager: Supercharge Your Development Environment](https://www.youtube.com/watch?v=YZAnJ0rwREA&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* {nvim} [NixNeovim/flake.nix at main · NixNeovim/NixNeovim](https://github.com/NixNeovim/NixNeovim/blob/main/flake.nix)
* {nvim} [nixos-config/home-manager/programs/nvim/nvim.nix at main · LamprosPitsillos/nixos-config](https://github.com/LamprosPitsillos/nixos-config/blob/main/home-manager/programs/nvim/nvim.nix)
* {nvim} [nixpkgs-channels/pkgs/misc/vim-plugins/build-vim-plugin.nix at nixos-unstable · NixOS/nixpkgs-channels](https://github.com/NixOS/nixpkgs-channels/blob/nixos-unstable/pkgs/misc/vim-plugins/build-vim-plugin.nix)
* {nvim} [nixpkgs/pkgs/applications/editors/vim/plugins/vim-clap/default.nix at 8b735381322a1f8fff46add535f1fb5aea71e2da · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/8b735381322a1f8fff46add535f1fb5aea71e2da/pkgs/applications/editors/vim/plugins/vim-clap/default.nix%23L58)
* {nvim} [protex/home-manager.nvim](https://github.com/protex/home-manager.nvim)
* {nvim} [symphorien/vim-nixhash: neovim plugin to automate fixing fake TOFU hashes when writing nix derivations](https://github.com/symphorien/vim-nixhash/)
nvim * name ideas: vixnim, (moshavim, VitaeVim)
* {nvim config} [/r/neovim/comments/15ev1ce/on_nix_install_lsp_in_nix_config_or_modify/](https://www.reddit.com/r/neovim/comments/15ev1ce/on_nix_install_lsp_in_nix_config_or_modify/)
* {nvim config} [/r/pwnvim](https://www.libhunt.com/r/pwnvim)
* {nvim config} [andreadev-it/nvim-personal-config](https://github.com/andreadev-it/nvim-personal-config)
* {nvim config} [badele/nix-homelab/blob/main/nix/home-manager/features/term/editor/nvim/default.nix](https://github.com/badele/nix-homelab/blob/main/nix/home-manager/features/term/editor/nvim/default.nix)
* {nvim config} [badele/nix-homelab/tree/main](https://github.com/badele/nix-homelab/tree/main)
* {nvim config} [badele/vide](https://github.com/badele/vide)
* {nvim config} [badele/vide](https://github.com/badele/vide) 
* {nvim config} [Configuración completa de Neovim en NixOS (Treesitter, lsp nativo y más)](https://www.youtube.com/watch?v=rUvjkBuKua4&pp=ugMICgJlcxABGAHKBQ9uZW92aW0gb24gbml4b3M%3D)
* {nvim config} [development environment with nix and nvim - Google Search](https://www.google.com/search?client=firefox-b-d&q=development+environment+with+nix+and+nvim)
* {nvim config} [framagit.org](https://framagit.org/vegaelle/nix-nvim)
* {nvim config} [From init.lua to default.nix](https://gist.github.com/nat-418/493d40b807132d2643a7058188bff1ca#from-initlua-to-defaultnix)
* {nvim config} [Full configuration of Neovim on NixOS](https://www.youtube.com/watch?v=rUvjkBuKua4)
* {nvim config} [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* {nvim config} [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* {nvim config} [Haskell, Nix and Vim: Getting started · tpflug](https://www.tpflug.me/2019/01/14/haskell-nix-vim/)
* {nvim config} [installing-a-neovim-ide-layer-the-nix-way](https://discourse.nixos.org/t/installing-a-neovim-ide-layer-the-nix-way/25790)
* {nvim config} [jamespwilliams/nde](https://github.com/jamespwilliams/nde)
* {nvim config} [jamespwilliams/nde](https://github.com/jamespwilliams/nde)
* {nvim config} [jordanisaacs.github.io](https://jordanisaacs.github.io/neovim-flake/)  [jordanisaacs/neovim-flake](https://github.com/jordanisaacs/neovim-flake)
* {nvim config} [jordanisaacs/neovim-flake](https://github.com/jordanisaacs/neovim-flake)
* {nvim config} [Manage Neovim plugins (and more!) with Nix and Home Manager](https://gist.github.com/nat-418/d76586da7a5d113ab90578ed56069509#manage-neovim-plugins-and-more-with-nix-and-home-manager)
* {nvim config} [metis-os/pwnvim](https://github.com/metis-os/pwnvim)
* {nvim config} [miknikif/nvim/tree/main](https://github.com/miknikif/nvim/tree/main)
* {nvim config} [mrcjkb/kickstart-nix.nvim](https://github.com/mrcjkb/kickstart-nix.nvim) 
* {nvim config} [mrcjkb/kickstart-nix.nvim](https://github.com/mrcjkb/kickstart-nix.nvim)*
* {nvim config} [Neovim and Nix home-manager: Supercharge Your Development Environment](https://www.youtube.com/watch?v=YZAnJ0rwREA&pp=ygUPbmVvdmltIG9uIG5peG9z)
* {nvim config} [Neovim Configuration in Nix: Unpacking Multiple Approaches](https://www.youtube.com/watch?v=i68c6vZkSXc&pp=ygUPbmVvdmltIG9uIG5peG9z)
* {nvim config} [nix-community.github.io](https://nix-community.github.io/nixvim/)
* {nvim config} [nix-community/neovim-nightly-overlay](https://github.com/nix-community/neovim-nightly-overlay)
* {nvim config} [nixneovim.github.io](https://nixneovim.github.io/NixNeovim/index.html)
* {nvim config} [NixNeovim/NixNeovim](https://github.com/NixNeovim/NixNeovim)
* {nvim config} [nixos.wiki](https://nixos.wiki/wiki/Neovim)
* {nvim config} [nixos.wiki](https://nixos.wiki/wiki/Neovim)
* {nvim config} [NixVim options](https://pta2002.github.io/nixvim/) - now deleted → [web.archive.org](https://web.archive.org/web/20230621122454/https://pta2002.github.io/nixvim)
* {nvim config} [NixVim options](https://pta2002.github.io/nixvim/#_plugins_neo_tree_window_popup_size_width) (plugins) - now deleted → [pta2002/nixvim: Configure Neovim with Nix!](https://github.com/pta2002/nixvim)
* {nvim config} [notashelf.github.io](https://notashelf.github.io/neovim-flake/)
* {nvim config} [NotAShelf/neovim-flake](https://github.com/NotAShelf/neovim-flake)
* {nvim config} [primamateria.github.io](https://primamateria.github.io/blog/)
* {nvim config} [primamateria.github.io](https://primamateria.github.io/blog/neovim-nix-update/)
* {nvim config} [primamateria.github.io](https://primamateria.github.io/blog/neovim-nix/)
* {nvim config} [pta2002/nixvim](https://github.com/pta2002/nixvim)
* {nvim config} [pta2002/nixvim](https://github.com/pta2002/nixvim)
* {nvim config} [reddit.com](https://reddit.com/r/neovim/s/pT20Q8IUDR)
* {nvim config} [Run Neovim and Zig in Nix Development Shell on Windows 11](https://www.youtube.com/watch?v=F4q72mGjYXA)
* {nvim config} [syberant/nix-neovim](https://github.com/syberant/nix-neovim)
* {nvim config} [syberant/nix-neovim](https://github.com/syberant/nix-neovim)
* {nvim config} [vi-tality/neovitality](https://github.com/vi-tality/neovitality)
* {nvim config} [zachcoyle/neovitality](https://github.com/zachcoyle/neovitality)
* {nvim config} [zachcoyle/vim-plugins-overlay](https://github.com/zachcoyle/vim-plugins-overlay)
* {nvim config} [zmre/pwnvim](https://github.com/zmre/pwnvim)

## SORT

## Conf Checklist

* .conf
* from Betsy
* [ ] .gsd-keyboard.settings-ported
* [ ] i3
* [ ] make sway from i3
* [ ] taskwarrior
* [ ] cosmic
* [ ] dconf
* [ ] environment.d
* [ ] git → from both
* [ ] ?- [ ] epiphany
* [ ] evolution
* [ ] featherpad
* [ ] geany
* [ ] gnome-initial-setup-done
* [ ] gnome-session
* [ ] goa-1.0
* [ ] lite-xl
* [ ] nautilus
* [ ] Notepadqq
* [ ] VSCodium
* [ ] gtk-3.0
* [ ] gtk-4.0
* [ ] home-manager → remove?- [ ] hypr
* [ ] ibus
* [ ] kitty
* [ ] lapce-stable
* [ ] lazygit
* [ ] mimeapps.list
* [ ] monitors.xml
* [ ] monitors.xml~- [ ] neofetch
* [ ] nushell
* [ ] nvim
* [ ] pulse
* [ ] QtProject.conf
* [ ] qutebrowser
* [ ] user-dirs.dirs
* [ ] user-dirs.locale
* [ ] wezterm
* [ ] xonsh
* [ ] zsh
* from Hank
* [ ] .jira
* [ ] Code
* [ ] Google
* [ ] Min
* [ ] 'Raspberry Pi'- [ ] TabNine
* [ ] Thunar
* [ ] TreeSheets.conf
* [ ] Vieb
* [ ] autostart
* [ ] azure-datalake-store
* [ ] balena-etcher
* [ ] chromium
* [ ] clavix
* [ ] coc
* [ ] configstore
* [ ] dconf
* [ ] enchant
* [ ] evince
* [ ] exercism
* [ ] fontconfig
* [ ] geany
* [ ] gedit
* [ ] github-copilot
* [ ] glib-2.0
* [ ] go
* [ ] gtk-2.0
* [ ] gtk-3.0
* [ ] htop
* [ ] i3
* [ ] iterative
* [ ] kanata
* [ ] kickstart.nvim
* [ ] kitty
* [ ] lazygit
* [ ] lazyvim_backup
* [ ] luakit
* [ ] matplotlib
* [ ] menus
* [ ] nebokrai
* [ ] neofetch
* [ ] nitrogen
* [ ] nix
* [ ] nixpkgs
* [ ] nvim-*- [ ] pavucontrol.ini
* [ ] picom
* [ ] pictrix
* [ ] procps
* [ ] pulse
* [ ] pypoetry
* [ ] qalculate
* [ ] qutebrowser
* [ ] spacefm
* [ ] starship.toml
* [ ] systemd
* [ ] tree-sitter
* [ ] ubports-installer
* [ ] user-dirs.dirs
* [ ] user-dirs.locale
* [ ] vlc
* [ ] wezterm
* [ ] xfe
* [ ] xonsh
* [ ] zsh
* [ ]
* $HOME (from Betsy)
* [ ] .bash_history
* [ ] .emacs.d
* [ ] .gitconfig
* [ ] .gnupg
* [ ] .ipython
* [ ] .mozilla
* [ ] .nix-defexpr
* [ ] .nix-profile
* [ ] .pki
* [ ] .python_history
* [ ] .ssh
* [ ] .textadept
* [ ] .viminfo
* [ ] .vscode-oss
* [ ] .wget-hsts
* [ ] .zcompdump
* [ ] .zshenv
* [ ] .zshrc* - from Hank
* [ ] .EpsonPrinterUtility
* [ ] .SpaceVim.d
* [ ] .Xauthority
* [ ] .Xresources
* [ ] .android
* [ ] .azure
* [ ] .bash_history
* [ ] .bash_logout
* [ ] .bashrc
* [ ] .cargo
* [ ] .conda
* [ ] .condarc
* [ ] .config
* [ ] .dmrc
* [ ] .docker
* [ ] .docker-mnt
* [ ] .git-credentials
* [ ] .gitconfig
* [ ] .gnome
* [ ] .gnupg
* [ ] .gphoto
* [ ] .gradle
* [ ] .gsutil
* [ ] .gtk-bookmarks
* [ ] .gtkrc-2.0
* [ ] .icons
* [ ] .ipython
* [ ] .java
* [ ] .jupyter
* [ ] .keras
* [ ] .lesshst
* [ ] .local
* [ ] .m2
* [ ] .mozilla
* [ ] .nix-channels → remove
* [ ] .nix-defexpr
* [ ] .nix-profile
* [ ] .npm → remove?
* [ ] .nv
* [ ] .nvm
* [ ] .pki
* [ ] .prodigy
* [ ] .profile
* [ ] .pyenv → remove
* [ ] .python-version
* [ ] .python_history
* [ ] .rustup
* [ ] .screenlayout
* [ ] .shiv
* [ ] .shutter
* [ ] .ssh
* [ ] .sudo_as_admin_successful
* [ ] .task
* [ ] .taskrc
* [ ] .thumbnails
* [ ] .undo-nvim
* [ ] .var
* [ ] .vim_backups
* [ ] .viminfo
* [ ] .vscode
* [ ] .vscode-cli
* [ ] .wegorc
* [ ] .wget-hsts
* [ ] .xinitrc
* [ ] .xonshrc
* [ ] .xsession-errors
* [ ] .xsession-errors.old
* [ ] .zcompdump
* [ ] .zshenv
* [ ] .zshrc
* [ ] Android
* [ ] AndroidStudioProjects
* [ ] Desktop
* [ ] Documents
* [ ] Downloads
* [ ] 'Droid Sans Mono for Powerline Nerd Font Complete.otf'
* [ ] Knecon
* [ ] Learning
* [ ] Media
* [ ] Miniforge3-Linux-x86_64.sh
* [ ] Music
* [ ] Pictures
* [ ] Public
* [ ] Templates
* [ ] Temporary
* [ ] Videos
* [ ] bookmarks.html
* [ ] dockerfiles
* [ ] dockermounts
* [ ] gensim-data
* [ ] go
* [ ] miniconda3
* [ ] miniforge3
* [ ] nixos-config
* [ ] node_modules
* [ ] notes
* [ ] pg
* [ ] pkgs
* [ ] snap
* [ ] treesheets-isaac
* [ ] workspace

2

## Top General Resources

* [nix-community/awesome-nix](https://github.com/nix-community/awesome-nix)
* [nix-community/awesome-nix](https://github.com/nix-community/awesome-nix)
* [ianthehenry.com](https://ianthehenry.com/posts/how-to-learn-nix/)
* [ianthehenry.com](https://ianthehenry.com/posts/how-to-learn-nix/)
* [nixos.org](https://nixos.org/guides/how-nix-works)
* [nixos.org](https://nixos.org/guides/how-nix-works)
* [mynixos.com](https://mynixos.com/)
* [MyNixOS](https://mynixos.com/)
* [search.nixos.org](https://search.nixos.org/packages?channel%3D23.05)
* [search.nixos.org](https://search.nixos.org/packages?channel%3D23.05)
* [edolstra.github.io](https://edolstra.github.io/pubs/phd-thesis.pdf)
* [edolstra.github.io](https://edolstra.github.io/pubs/phd-thesis.pdf)
* [jonathanlorimer.dev](https://jonathanlorimer.dev/posts/nix-thesis.html)
* [jonathanlorimer.dev](https://jonathanlorimer.dev/posts/nix-thesis.html)
* [search.nixos.org](https://search.nixos.org/packages)
* [NixOS Search - Packages](https://search.nixos.org/packages)
* [ianthehenry.com](https://ianthehenry.com/posts/how-to-learn-nix/)
* [ianthehenry.com](https://ianthehenry.com/posts/how-to-learn-nix/)
* [reddit.com](https://www.reddit.com/r/NixOS/)
* [/r/NixOS/](https://www.reddit.com/r/NixOS/)
* [nixos.org](https://nixos.org/)
* [nixos.org](https://nixos.org/)
* [nixcloud.io](https://nixcloud.io/tour/?id%3Dintroduction/nix)
* [A Tour of Nix](https://nixcloud.io/tour/?id%3Dintroduction/nix)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/introduction/)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/introduction/)
* [video](https://www.youtube.com/playlist?list%3DPLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)
* [Beginner's Guide to Nix](https://www.youtube.com/playlist?list%3DPLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)
* [ryantm.github.io](https://ryantm.github.io/nixpkgs/)
* [ryantm.github.io](https://ryantm.github.io/nixpkgs/)
* [mikeroyal/NixOS-Guide](https://github.com/mikeroyal/NixOS-Guide)
* [mikeroyal/NixOS-Guide](https://github.com/mikeroyal/NixOS-Guide)
* [zero-to-nix.com](https://zero-to-nix.com/)
* [zero-to-nix.com](https://zero-to-nix.com/)
* [nix.dev](https://nix.dev/)
* [nix.dev](https://nix.dev/)
* [nixos.org](https://nixos.org/guides/nix-pills/)
* [Nix Pills](https://nixos.org/guides/nix-pills/)
* [drakerossman.com](https://drakerossman.com/blog/practical-nixos-the-book)
* [discourse.nixos.org](https://discourse.nixos.org/)
* [discourse.nixos.org](https://discourse.nixos.org/)
* [mhwombat.codeberg.page](https://mhwombat.codeberg.page/nix-book/)
* [mhwombat.codeberg.page](https://mhwombat.codeberg.page/nix-book/)
* [mhwombat/nix-for-numbskulls](https://github.com/mhwombat/nix-for-numbskulls)
* [mhwombat/nix-for-numbskulls](https://github.com/mhwombat/nix-for-numbskulls)
* [nixos.org](https://nixos.org/manual/nix/stable/)
* [Nix Reference Manual](https://nixos.org/manual/nix/stable/)
* [nix-tutorial.gitlabpages.inria.fr](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html)
* [Nix tutorial — nix-tutorial documentation](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html)
* [nixos.org](https://nixos.org/download.html)
* [Download Nix / NixOS](https://nixos.org/download.html)
* [nixos.org](https://nixos.org/manual/nixos/stable/)
* [nixos.org](https://nixos.org/manual/nixos/stable/)
* [zero-to-nix.com](https://zero-to-nix.com/)
* [zero-to-nix.com](https://zero-to-nix.com/)
* [NixOS/nix](https://github.com/NixOS/nix)
* [NixOS/nix: Nix, the purely functional package manager](https://github.com/NixOS/nix)
* [nixos.org](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html)
* [nixos.org](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html)
* [nixos.wiki](https://nixos.wiki/wiki/Cheatsheet)
* [Cheatsheet - NixOS Wiki](https://nixos.wiki/wiki/Cheatsheet)
* [video](https://www.youtube.com/playlist?list%3DPLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs)
* [**Nixology - YouTube](https://www.youtube.com/playlist?list%3DPLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs)
* [video](https://www.youtube.com/playlist?list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [NixOS Playlist (Wil T)](https://www.youtube.com/playlist?list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [stephank.nl](https://stephank.nl/p/2020-06-01-a-nix-primer-by-a-newcomer.html)
* [Primer on Nix terminology](https://stephank.nl/p/2020-06-01-a-nix-primer-by-a-newcomer.html)
* [book.divnix.com](https://book.divnix.com/)
* [book.divnix.com](https://book.divnix.com/)
* [NixOS Wiki](https://nixos.wiki/)
* [video](https://www.youtube.com/@NixCon)
* [/@NixCon](https://www.youtube.com/@NixCon)
* [video](https://www.youtube.com/playlist?list%3DPL2Ftb1kbp85h9Mp23kykEkPe4As69hH_w)
* [NixCon 2023](https://www.youtube.com/playlist?list%3DPL2Ftb1kbp85h9Mp23kykEkPe4As69hH_w)
* [video](https://www.youtube.com/results?search_query%3Dnixcon%2B2023)
* [/results?search_query=nixcon+2023](https://www.youtube.com/results?search_query%3Dnixcon%2B2023)
* [media.ccc.de](https://media.ccc.de/c/nixcon2023)
* [media.ccc.de](https://media.ccc.de/c/nixcon2023)
* [video](https://www.youtube.com/@NixOS-Foundation/playlists)
* [/@NixOS-Foundation/playlists](https://www.youtube.com/@NixOS-Foundation/playlists)
* [nixos.org](https://nixos.org/manual/nixpkgs/stable/)
* [nixos.org](https://nixos.org/manual/nixpkgs/stable/)
* [NixOS/nixpkgs/](https://github.com/NixOS/nixpkgs/)
* [NixOS/nixpkgs: Nix Packages collection](https://github.com/NixOS/nixpkgs/)
* [jorel.dev](https://jorel.dev/NixOS4Noobs/intro.html)
* [jorel.dev](https://jorel.dev/NixOS4Noobs/intro.html)
* [itsfoss.com](https://itsfoss.com/nixos-tutorials/)
* [itsfoss.com](https://itsfoss.com/nixos-tutorials/)
* [leanpub.com](https://leanpub.com/nixos-in-production)
* [leanpub.com](https://leanpub.com/nixos-in-production)
* [nixcon 2022 - YouTube](https://www.youtube.com/results?search_query%3Dnixcon%2B2022)
* [youtube.com](https://youtube.com/playlist?list%3DPLLvdqTlFTmuKsiyAI8Q9FgHP4mY0ktPVq)
* [Nix Playlist](https://youtube.com/playlist?list%3DPLLvdqTlFTmuKsiyAI8Q9FgHP4mY0ktPVq)
* [programming.dev](https://programming.dev/c/nix)
* [programming.dev](https://programming.dev/c/nix)

## My Projects

* {iso} [Creating NixOS iso for an older Laptop with i686 (32bit) - Help - NixOS Discourse](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002/2)
* {me} [yelircaasi | Cachix](https://app.cachix.org/cache/yelircaasi%23pull)
* {me} [yelircaasi/clavix](https://github.com/yelircaasi/clavix)
* {me} [yelircaasi/nix-eli5](https://github.com/yelircaasi/nix-eli5)
* {me} [yelircaasi/nixos-config: My NixOS configuration files. I'm new to NixOS, so take all of this with a grain of salt.](https://github.com/yelircaasi/nixos-config/tree/main)
* {me} [yelircaasi/pictrix](https://discourse.nixos.org/t/yelircaasi/pictrix)
* {project} [...](https://github.com/yelircaasi/clavix)
* {project} [...](https://github.com/yelircaasi/nix-eli5)
* {project} [...](https://github.com/yelircaasi/pictrix)
* Project idea: add .drv syntax highlighting to bat, or create a bat-based tool to format and display .drv all-in-one
* add guake to nixpkgs
* {contrib} [nix.dev](https://nix.dev/) → contribute to? [/search?client=firefox-b-d&q=This+Month+in+Nix+Docs](https://www.google.com/search?client=firefox-b-d&q=This+Month+in+Nix+Docs) createformatter, TreeSitter syntax highlihter, etc. for .drv files
* {contrib} [NixOS/nixpkgs/issues/132206](https://github.com/NixOS/nixpkgs/issues/132206) fork and clone nixpkgs and home-manager [Nixpkgs/Contributing - NixOS Wiki](https://nixos.wiki/wiki/Nixpkgs/Contributing)
* create script: nixos-report: like ls for all relevant directories, following all links to real file; also other important information

### landscape build*

* [blog.ielliott.io](https://blog.ielliott.io/nix-docs/mkDerivation.html#reference-inputs-installPhase)
* [canonical/landscape-client/releases/](https://github.com/canonical/landscape-client/releases/) If there isn't an existing Nix expression, you might need to create one manually. Create a Nix expression (.nix file) for landscape-client by specifying its source, dependencies, and build instructions
* { lib, buildInputs, fetchurl }: lib.mkDerivation { pname = "landscape-client"; version = "your_version_number"; src = fetchurl { url = "<https://example.com/path/to/landscape-client.tar.gz>"; sha256 = "..."; }; buildInputs = [ /* dependencies, if any */ ]; }
* Replace "<https://example.com/path/to/landscape-client.tar.gz>" with the actual URL of the landscape-client source tarball.
* Build and Install: Save the Nix expression to a file (e.g., landscape-client.nix) and build and install it using the following command:
* nix-env -f landscape-client.nix -i
* Please note that the availability of landscape-client as a Nix package may change over time, and you should check for updates or changes in the Nix ecosystem or the NixOS community.
* Always ensure that you trust the source from which you are fetching the software, especially when manually specifying URLs in Nix expressions. Additionally, be aware that my information might be outdated, and it's a good idea to check more recent sources for the latest information on NixOS packages.
* {landscape} [How to manage computers in Landscape | Ubuntu](https://ubuntu.com/landscape/docs/managing-computers%23heading--access-information-about-computers)
* {landscape} [landscape.nixlang.wiki](https://landscape.nixlang.wiki/)
* {landscape} [Language Constructs - Nix Reference Manual](https://nixos.org/manual/nix/stable/language/constructs.html)
* landcape [landscape-client/setup_client.py at master · canonical/landscape-client](https://github.com/canonical/landscape-client/blob/master/setup_client.py)
* landscape [Commits · yelircaasi/landscape-client-nixos](https://github.com/yelircaasi/landscape-client-nixos/commits/nixos/)
* landscape [github.com](https://github.com/canonical/landscape-scripts)
* {snap} [flake.lock: Update by github-actions[bot] · Pull Request #3 · io12/nix-snapd](https://github.com/io12/nix-snapd/pull/3/commits)
* {snap} [This is how I roll](https://linuxmatters.sh/19/) snaps on nixos

### Raspberry Pi

* {rpi} [Installing NixOS on a Raspberry Pi — nix.dev documentation](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html)
* {rpi} [Installing NixOS on a Raspberry Pi | eipi.xyz](https://eipi.xyz/blog/installing-nixos-on-a-raspberry-pi-3/)
* {rpi} [lucernae/nixos-pi: How to install NixOS on raspberry PI](https://github.com/lucernae/nixos-pi/)
* {rpi} [NixOS on ARM/Raspberry Pi - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi)
* {rpi} [NixOS on ARM/Raspberry Pi 4 - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4)
* {rpi} [rpi.nix](https://github.com/zupo/nix/blob/master/rpi.nix)

### Mobile

* mobile search nixos-mobile on github
* [nixos.wiki](https://nixos.wiki/wiki/PinePhone)
* [Nix Phone and the End of Android](https://www.youtube.com/watch?v%3D0UIpg19KECw)
* [Installing Guix as a Complete GNU/Linux System - YouTube](https://www.youtube.com/watch?v%3DoSy-TmoxG_Y%26list%3DPLEoMzSkcN8oNxnj7jm5V2ZcGc52002pQU%26index%3D5%26pp%3DiAQB)
* [github.com](https://github.com/turbo-muffin/ancap-catppuccin)
* [fosstodon.org](https://fosstodon.org/@GreyLinux)
* [calyxos.org](https://calyxos.org/install/devices/FP4/linux/)
* [/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/](https://www.reddit.com/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/) nixos on mobile
* [...](https://pine64.com/product/pinephone-beta-edition-with-convergence-package/)
* [nlnet.nl](https://nlnet.nl/project/mobile-nixos/)
* [linuxmobile/kaku](https://discourse.nixos.org/t/linuxmobile/kaku)
* [...](https://media.ccc.de/v/nixcon-2023-36022-daily-driving-nixos-on-the-librem-5)
* [media.ccc.de](https://media.ccc.de/v/nixcon-2023-36022-daily-driving-nixos-on-the-librem-5)

### Development

* [Building a Rust service with Nix](https://fasterthanli.me/series/building-a-rust-service-with-nix)
* [get-going-with-julia-on-nixos-in-under-an-hour](https://discourse.nixos.org/t/get-going-with-julia-on-nixos-in-under-an-hour/12530)
* [gutier.io](https://gutier.io/post/development-using-rust-with-nix/)
* [haskell-nix-vim](https://www.tpflug.me/2019/01/14/haskell-nix-vim/)
* [rust development on nixos](https://drakerossman.com/blog/rust-development-on-nixos-bootstrapping-rust-nightly-via-flake)
* [rust-in-nix-discussion-thread](https://discourse.nixos.org/t/rust-in-nix-discussion-thread/5092/16)

### Python

* TRY THIS! [github.com](https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix)
* Goal: To create a Python develop environment where everything just works
* [NixOS Search - Packages - ipython](https://search.nixos.org/packages?channel%3D23.11%26show%3Dihaskell%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dipython)
* make Github issue for bcrypt
* [pytorch for nixos](https://duckduckgo.com/?q%3Dpre-built%2Bpytorch%2Bfor%2Bnixos%26ia%3Dweb)
* [Python poetry project in an FHS environment when poetry2nix is uncooperative](https://gitlab.com/nobodyinperson/flakes/-/blob/main/poetryFHS/flake.nix?ref_type%3Dheads)
* [Python package install using poetry + nix - NixOS Discourse](https://discourse.nixos.org/t/python-package-install-using-poetry-nix/10624/12)
* [python - Using poetry to install from a private repository with a token - Stack Overflow](https://stackoverflow.com/questions/77558055/using-poetry-to-install-from-a-private-repository-with-a-token)
* [python - Credentials in pip.conf for private PyPI - Stack Overflow](https://stackoverflow.com/questions/50468951/credentials-in-pip-conf-for-private-pypi)
uses niv: [discourse.nixos.org](https://discourse.nixos.org/t/help-with-poetry2nix/21799/4)
* [Preparing a Nix flake for a Python program (Migra, using Poetry) - Help - NixOS Discourse](https://discourse.nixos.org/t/preparing-a-nix-flake-for-a-python-program-migra-using-poetry/12030)
* [video](https://www.youtube.com/watch?v=TbIHRHy7_JM&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [The Nix Hour #30 [2nix tooling differences, flakes motivation] - YouTube](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
* [A sack full of angry snakes: Taming your python dependencies with Nix - YouTube](https://www.youtube.com/watch?v=8ng4v1g5q7s)
* [Accessing a private GitHub repo using builtins.fetchGit? - Help - NixOS Discourse](https://discourse.nixos.org/t/accessing-a-private-github-repo-using-builtins-fetchgit/29610)
* [Adding non-python dependencies to poetry2nix application - Help - NixOS Discourse](https://discourse.nixos.org/t/adding-non-python-dependencies-to-poetry2nix-application/26755/6)
* [Anyone got poetry2nix working with a private PyPI server? : r/NixOS](https://www.reddit.com/r/NixOS/comments/15ivyr3/anyone_got_poetry2nix_working_with_a_private_pypi/)
* [blog/2020-08-12-poetry2nix/](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [carlthome/poetry2nix-example: Playing around with poetry2nix to learn more about Nix for Python development](https://github.com/carlthome/poetry2nix-example)
* [Code search results](https://github.com/search?q%3DmkPoetryApplication%26type%3Dcode)
* [configs-mirror/pyenv.nix at master · stites/configs-mirror](https://github.com/stites/configs-mirror/blob/master/programs/bash/pyenv.nix)
* [Configuration | Documentation | Poetry - Python dependency management and packaging made easy](https://python-poetry.org/docs/configuration/)
* [datakurre.pandala.org](https://datakurre.pandala.org/2015/10/nix-for-python-developers.html/)
* [Developing Python with Poetry & Poetry2nix: Reproducible flexible Python environments - Tweag](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [devShells and poetry2nix - Development - NixOS Discourse](https://discourse.nixos.org/t/devshells-and-poetry2nix/26837)
* [Editable install with poetry · Issue #105593 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/105593)
* [Enable private pypi repositories with credentials by rskew · Pull Request #390 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/pull/390/files%23diff-25f00f391a440414afdc84d7191b5892db3492e1c0b9a45f9063be83e21d75e4R154)
* [fastapi-mvc/flake.nix at master · fastapi-mvc/fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc/blob/master/flake.nix)
* [fetchFromGitLab: support for private repositories - Development - NixOS Discourse](https://discourse.nixos.org/t/fetchfromgitlab-support-for-private-repositories/22900)
* [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950)
* [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950/commits/4a9a41af7b33472c5d5c0dd443f350f4e9cb6599)
* [flake.nix for poetry2nix](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
* [FRidh/python-on-nix/blob/master/tutorial.md](https://github.com/FRidh/python-on-nix/blob/master/tutorial.md)
* [FRidh/python-on-nix/blob/master/tutorial.md](https://github.com/FRidh/python-on-nix/blob/master/tutorial.md)
* [GitHub - cachix/nixpkgs-python: All Python versions, kept up-to-date on hourly basis using Nix.](https://github.com/cachix/nixpkgs-python)
* [hackmd.io](https://hackmd.io/ipS6HU_zR-yqChEvRYlnyw?view) Python Packaging Draft [Developing Python with Poetry & Poetry2nix: Reproducible flexible Python environments - Tweag](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [haskell - Need to build specific version of pandoc into poetry2nix nixos flake - Stack Overflow](https://stackoverflow.com/questions/69873273/need-to-build-specific-version-of-pandoc-into-poetry2nix-nixos-flake)
* [Help with poetry2nix - Help - NixOS Discourse](https://discourse.nixos.org/t/help-with-poetry2nix/21799)
* [How does poetry2nix work? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-does-poetry2nix-work/17309)
* [How to fetchurl with credentials - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-fetchurl-with-credentials/11994)
* [How to Learn Nix, Part 39: How to install Python](https://ianthehenry.com/posts/how-to-learn-nix/python3-alpha/)
* [how-to-create-a-poetry2nix-environment-with-a-flake](https://discourse.nixos.org/t/how-to-create-a-poetry2nix-environment-with-a-flake/23604/6)
* [johbo/pip2nix: Freeze pip-installable packages into Nix expressions [maintainer=@datakurre]](https://github.com/johbo/pip2nix)
* [ksenia-portu/flake/blob/master/flake.nix](https://github.com/ksenia-portu/flake/blob/master/flake.nix)
* [netrc FileNotFoundError for private PyPI server · Issue #1244 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1244)
* [Nix Flake Template for poetry2nix](https://gitlab.com/nobodyinperson/flakes/-/tree/main/poetry2nix)
* [nix s3 store authentication](https://blog.eigenvalue.net/2023-nix-s3-store-authentication/)
* [nix-authenticated-fetches-from-gitlab-reading-about-related-work](https://discourse.nixos.org/t/nix-authenticated-fetches-from-gitlab-reading-about-related-work/35708)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix?tab%3Dreadme-ov-file%23mkpoetryeditablepackage)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix%23how-to-guides)
* [nix-community/poetry2nix](https://github.com/nix-community/poetry2nix)
* [nix-community/poetry2nix](https://github.com/nix-community/poetry2nix)
* [nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix](https://github.com/nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix)
* [nix-community/poetry2nix/blob/master/templates/app/flake.nix](https://github.com/nix-community/poetry2nix/blob/master/templates/app/flake.nix)
* [nix.dev](https://nix.dev/recipes/python-environment)
* [nixos.org](https://nixos.org/manual/nixpkgs/stable/%23fetchfromgitlab)
* [nixos.org](https://nixos.org/manual/nixpkgs/unstable/%23python)
* [NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/tensorflow/default.nix#L445](https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/tensorflow/default.nix#L445)
* [Nixpkgs - Python packaging, and development workflow. - YouTube](https://www.youtube.com/watch?v=jXd-hkP4xnU)
* [Nixpkgs 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixpkgs/stable/%23chap-pkgs-fetchers)
* [nixpkgs/pkgs/development/interpreters/python/mk-python-derivation.nix at master · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/interpreters/python/mk-python-derivation.nix)
* [nixpkgs/pkgs/development/python-modules/torch/default.nix at nixos-23.05 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/torch/default.nix#L414)
* [Package and deploy Python apps faster with Poetry and Nix - YouTube](https://www.youtube.com/watch?v=TbIHRHy7_JM)
* [pip on NixOS (Reddit)](https://www.reddit.com/r/NixOS/comments/121vv4r/how_do_i_use_pip_on_nixos/)
* [poetry config http-basic](https://github.com/python-poetry/poetry/issues/8443)
* [poetry2nix error · Issue #133 · tweag/jupyenv](https://github.com/tweag/jupyenv/issues/133)
* [Poetry2nix: mismatch cryptography sha256 but unable to modify · Issue #1337 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1337)
* [poetry2nix/tests/editable/default.nix at master · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/blob/master/tests/editable/default.nix)
* [Private Repository Authentication not working for new nix-commands and flakes (pure mode) · Issue #1423 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1423)
* [Python - NixOS Wiki](https://nixos.wiki/wiki/Python)
* [Python - NixOS Wiki](https://nixos.wiki/wiki/Python)
* [Python | nixpkgs](https://nix-community.github.io/dream2nix/guides/getting-started-python.html)
* [Python | nixpkgs](https://ryantm.github.io/nixpkgs/languages-frameworks/python/)
* [Python | nixpkgs](https://ryantm.github.io/nixpkgs/languages-frameworks/python/#python)
* [python-development-with-poetry-with-nix-supplying-python](https://discourse.nixos.org/t/python-development-with-poetry-with-nix-supplying-python/14736)
* [Question: How to specify runtime dependencies of python sub-dependencies · Issue #594 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/594)
* [rebeccaskinner.net](https://rebeccaskinner.net/posts/2018-05-09-python-and-nix.html)
* [tfmoraes/invesalius3_nix_develop](https://github.com/tfmoraes/invesalius3_nix_develop)
* [toraritte.github.io](https://toraritte.github.io/poetry-intro/)
* [Unable to use fetchgit on private git repo - Help - NixOS Discourse](https://discourse.nixos.org/t/unable-to-use-fetchgit-on-private-git-repo/24280)
* [Using Nix for Repeatable Python Environments | SciPy 2019 | Daniel Wheeler Enthought Enthought • • 2680 visualizaciones hace 3 años](https://www.youtube.com/watch?v=USDbjmxEZ_I)
* [Using Nix for Repeatable Python Environments | SciPy 2019 | Daniel Wheeler](https://www.youtube.com/watch?app=desktop&v=USDbjmxEZ_I)
* [using-a-private-gitlab-instance-with-fetchgit](https://discourse.nixos.org/t/using-a-private-gitlab-instance-with-fetchgit/28013/3)
* [walkthrough 1](https://www.youtube.com/watch?v=XfqJulSAPBQ&t=483s&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [walkthrough 2](https://www.youtube.com/watch?v=XzxvChwMRVY&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [What if the source requires authentification?](https://www.phind.com/search?cache%3Dsosi2xj2u74wie4ci17udny0)
python * fetch credentials provider [github.com](https://github.com/NixOS/nix/issues/8635)
* {python and more} [nix-community/dream2nix/tree/main/examples](https://github.com/nix-community/dream2nix/tree/main/examples)
* {python auth} [Peter Kolloch - Blog - Nix: Authenticated Fetches from GitLab - Reading about Related Work](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)

### Nix Colors and Ricing

* {colors} [Nix-colors Guide | Declaratively Rice Your Linux Desktop](https://www.youtube.com/watch?v=jO2o0IN0LPE&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D) 
* {rice} [danth.github.io](https://danth.github.io/stylix/) 

### Nvidia, Cuda,  OpenGL, etc

* [/search?client=firefox-b-d&q=nixOS+on+tuxedo+with+gpu](https://www.google.com/search?client=firefox-b-d&q=nixOS+on+tuxedo+with+gpu)
* [accessing-gpus-inside-a-nix-generated-docker-container](https://discourse.nixos.org/t/accessing-gpus-inside-a-nix-generated-docker-container/21122)
* [app.cachix.org](https://app.cachix.org/cache/cuda-maintainers#pull)
* [creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos](https://discourse.nixos.org/t/creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos/30637)
* [CUDA - NixOS Wiki](https://nixos.wiki/wiki/CUDA)
* [cuda-maintainers cachix](https://app.cachix.org/cache/cuda-maintainers)
* [do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only](https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16)
* [gpu-enabled-docker-containers-in-nixos](https://discourse.nixos.org/t/gpu-enabled-docker-containers-in-nixos/23870)
* [nix-community/nixGL](https://github.com/nix-community/nixGL)
* [nixcfg/mixins/nvidia.nix at cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332 · colemickens/nixcfg](https://github.com/colemickens/nixcfg/blob/cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332/mixins/nvidia.nix)
* [nixGL/all.nix at main · guibou/nixGL · GitHub](https://github.com/guibou/nixGL/blob/main/all.nix)
* [nixos.wiki](https://nixos.wiki/wiki/CUDA)
* [NixOS/nixos-hardware](https://github.com/NixOS/nixos-hardware)
* [NixOS/nixpkgs/blob/master/pkgs/test/cuda/cuda-library-samples/generic.nix](https://github.com/NixOS/nixpkgs/blob/master/pkgs/test/cuda/cuda-library-samples/generic.nix)
* [Nixpkgs with OpenGL on non-NixOS - NixOS Wiki](https://nixos.wiki/wiki/Nixpkgs_with_OpenGL_on_non-NixOS)
* [nixpkgs/4.x.nix at nixos-22.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-22.11/pkgs/development/libraries/opencv/4.x.nix#L371)
* [nixpkgs/pkgs/test/cuda/cuda-library-samples/generic.nix at 634141959076a8ab69ca2cca0f266852256d79ee · NixOS/nixpkgs · GitHub](https://github.com/NixOS/nixpkgs/blob/634141959076a8ab69ca2cca0f266852256d79ee/pkgs/test/cuda/cuda-library-samples/generic.nix)
* [numtide/nix-gl-host](https://github.com/numtide/nix-gl-host)
* [Nvidia - NixOS Wiki](https://nixos.wiki/wiki/Nvidia)
* [nvidia-docker-seems-not-working](https://discourse.nixos.org/t/nvidia-docker-seems-not-working/26665)
* [Share your Data Science stack in Nixpkgs : NixOS](https://www.reddit.com/r/NixOS/comments/z95r4p/share_your_data_science_stack_in_nixpkgs/)
* [tensorflow-gpu-keras-in-a-nix-shell](https://discourse.nixos.org/t/tensorflow-gpu-keras-in-a-nix-shell/8692)
* [Update of nixGL: more robust OpenGL support for intel / nvidia / nvidia (optimus) on non-nixOS distribution. : NixOS](https://www.reddit.com/r/NixOS/comments/7y9t0q/update_of_nixgl_more_robust_opengl_support_for/)
* [using-nvidia-container-runtime-with-containerd-on-nixos](https://discourse.nixos.org/t/using-nvidia-container-runtime-with-containerd-on-nixos/27865)
* [What are the options for hardware.nvidia.package? (docs seem out-of-date) : r/NixOS](https://www.reddit.com/r/NixOS/comments/or7pvq/what_are_the_options_for_hardwarenvidiapackage/)
* ds [nixos.wiki](https://nixos.wiki/wiki/Tensorflow)
* nvidia ml [/r/NixOS/comments/tzlunt/deep_learning_on_nixos/](https://www.reddit.com/r/NixOS/comments/tzlunt/deep_learning_on_nixos/)
* nvidia docker [sebastian-staffa.eu](https://sebastian-staffa.eu/posts/nvidia-docker-with-nix/)
* nvidia docker [github.com](https://github.com/suvash/nixos-nvidia-cuda-python-docker-compose)
* nvidia docker [/search?client=firefox-b-d&q=nvidia+docker+container+on+nixos#ip=1](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnvidia%2Bdocker%2Bcontainer%2Bon%2Bnixos%23ip%3D1)
* nvidia [What's a legacy driver? | NVIDIA](https://www.nvidia.com/en-us/drivers/unix/legacy-gpu/)
* nvidia [Syllo/nvtop: GPUs process monitoring for AMD, Intel and NVIDIA](https://github.com/Syllo/nvtop%23gpu-support)
* nvidia [Impossible to initialize nvidia nvml : Driver/library version mismatch · Issue #98328 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/98328)
* cuda [gist.github.com](https://gist.github.com/ChadSki/926e5633961c9b48131eabd32e57adb2) nix with cuda

### SOPS

* [video](https://www.youtube.com/watch?v%3DG5f6GC7SnhU)
* sops [konradmalik.com](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
* [github.imold.wang](https://github.imold.wang/lucidph3nx/nvim-sops)
* [github.com](https://github.com/Mic92/sops-nix)
* [blog.gitguardian.com](https://blog.gitguardian.com/a-comprehensive-guide-to-sops/)
* [The SOPS Way: The Only Way to Keep Your Secrets Safe in Git | by Seifeddine Rajhi | Medium](https://medium.com/@seifeddinerajhi/the-sops-way-the-only-way-to-keep-your-secrets-safe-in-git-4a17e83ef6c6)
* [getting nixos to keep a secret](https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/)
* [konradmalik.com](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
* [NixOS Secrets Management | SOPS-NIX - YouTube](https://www.youtube.com/watch?v%3DG5f6GC7SnhU)

## Dev Env

* [Building reproducible Development environment | by Ion Mudreac | Medium](https://mudrii.medium.com/building-reproducible-development-environment-b1d4fb51a302)
* [cachix/devenv: Fast, Declarative, Reproducible, and Composable Developer Environments](https://github.com/cachix/devenv)
* [Dev Environment Setup With Nix on MacOS | Mathias Polligkeit](https://www.mathiaspolligkeit.com/dev/exploring-nix-on-macos/)
* [Development environment with nix-shell - NixOS Wiki](https://nixos.wiki/wiki/Development_environment_with_nix-shell)
* [devenv rewrite in rust](https://devenv.sh/blog/2024/03/20/devenv-10-rewrite-in-rust/%23whats-new)
* [Devenv.sh: Fast and reproducible developer environments using Nix | Hacker News](https://news.ycombinator.com/item?id=33655542)
* [devenv.sh](http://devenv.sh)
* [devenv.sh](https://devenv.sh/pre-commit-hooks/)
* [devshells nix4noobs](https://nix4noobs.com/flakes/devshells/)
* [direnv/direnv/wiki/Nix](https://github.com/direnv/direnv/wiki/Nix)
* [getfleek.dev](https://getfleek.dev/)
* [haseebmajid.dev](https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/)
* [haslersn](https://github.com/haslersn/any-nix-shell) - fish, xonsh, zsh support for nix-run
* [hhoeflin.github.io](https://hhoeflin.github.io/blog/devtools/using_nix/)
* [how-are-you-keeping-devshell-dependencies-live-in-store](https://discourse.nixos.org/t/how-are-you-keeping-devshell-dependencies-live-in-store/16730/2)
* [jpetazzo.github.io](https://jpetazzo.github.io/2020/04/01/quest-minimal-docker-images-part-3/)
* [juspay/nix-dev-home: A](https://github.com/juspay/nix-dev-home) [home-manager](https://github.com/juspay/nix-dev-home) [template providing useful tools & settings for Nix-based development (macOS & Linux supported)](https://github.com/juspay/nix-dev-home)
* [lorri intro](https://www.tweag.io/blog/2019-03-28-introducing-lorri/)
* [minimal nix development environment](https://cbailey.co.uk/posts/a_minimal_nix_development_environment_on_wsl)
* [mjones.network](https://mjones.network/articles/declarative-desktop-env-config-with-nix.html)
* [mtlynch.io](https://mtlynch.io/notes/nix-dev-environment/)
* [myme.no - NixOS: The Ultimate Dev Environment?](https://myme.no/posts/2022-01-16-nixos-the-ultimate-dev-environment.html)
* [nix als container-ersatz](https://www.golem.de/news/redis-cloud-ki-javascript-nginx-ersatz-in-rust-und-container-ersatz-mit-nix-2403-183524.html)
* [Nix Dev Environments | Declare Your Coding Projects - YouTube](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
* [Nix-ify your environment - Jon Simpson](https://jonsimpson.ca/nix-ify-your-environment/)
* [nix-shell](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [NixOS can automatically run non-installed programs on typing their name : r/NixOS](https://www.reddit.com/r/NixOS/comments/6a1z7f/nixos_can_automatically_run_noninstalled_programs/)
* [nixos.wiki](https://nixos.wiki/wiki/NixOS_Containers)
* [Say Goodbye to Containers - Ephemeral Environments with Nix Shell - YouTube](https://www.youtube.com/watch?v%3D0ulldVwZiKA)
* [tmp.bearblog.dev](https://tmp.bearblog.dev/minimal-containers-using-nix/)
* [tonyfinn.com](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
* devenv [news.ycombinator.com](https://news.ycombinator.com/item?id%3D33655542)
* nix and shellls -a /etc/skel [nixos.wiki](https://nixos.wiki/wiki/Command_Shell)
* [Getting started with Nix Flakes and devshell](https://yuanwang.ca/posts/getting-started-with-flakes.html)
* [Julow/nix-workspaces: Reproducible workspaces using Nix modules.](https://github.com/Julow/nix-workspaces)

## YouTube Channels*

* [/@jonringer117](https://www.youtube.com/@jonringer117) (Nix channel)*
* [tweag.io](https://www.tweag.io/)
* [Tweag - YouTube](https://www.youtube.com/@tweag) 
* [Determinate Systems](https://determinate.systems/)
* [Determinate Systems](https://determinate.systems/#blog)
* [nix.ug | Nix/NixOS User Group Directory](https://nix.ug/)  → [chaos-darmstadt.de](https://www.chaos-darmstadt.de/hackspace/)
* [primamateria.github.io](https://primamateria.github.io/blog/)
* [numtide](https://github.com/numtide)
* [nix-community](https://github.com/nix-community)
* [matthewrhone.dev](https://matthewrhone.dev/) *[ Hi, I'm flyx.](https://flyx.org/)
* [srid.ca](https://srid.ca/-/all)
* [kamadorueda](https://github.com/kamadorueda)
* [myme.no](https://myme.no/)
* [git.sr.ht](https://git.sr.ht/~trevdev/)
* [drakerossman.com](https://drakerossman.com/blog)
* [the-nix-way](https://github.com/the-nix-way)  [nix.ug | Nix/NixOS User Group Directory](https://nix.ug/)
* [cachix](https://github.com/cachix)  [drakerossman.com](https://drakerossman.com/blog)
* [figsoda](https://github.com/figsoda)
* [nixcloud/](https://github.com/nixcloud/)
* [Chris McDonough](https://www.youtube.com/playlist?list=PLa01scHy0YEnsvjvMNNk-JSvTdL_ivsml)
* [garnix.io](https://garnix.io/)

## Next Steps

* [nixos.org](https://nixos.org/download.html#nixos-iso) try install on Darlene -> first remember password, then learn about nom-graphical installation for nixos
* debug nixGL alacritty
* debug nyxt under nix
* set up Julia with Nix and make contributions -
* make Julia Plots work with Nix -
* install, understand, and use Nix
* install NixOS on Allison, eventually also on Betsy

## Config

* {keybinds} [Move keyboard settings to home-manager · edde4a11d5 - localhost - code.dumpstack.io](https://code.dumpstack.io/infra/localhost/commit/edde4a11d52394d87c9bbd61dcfdd172a7ea1de0#diff-dd9078c2c684f713290b9f17802a6d38970bea46)

## Tools and Software SORT -----------------------------------------------------------------------------------------------------------------------------------------------------

## Videos

* [/@ChrisMcDonough/playlists](https://www.youtube.com/@ChrisMcDonough/playlists)

## Nix language

* [Nix Language Explained](https://www.youtube.com/watch?v=UgrwoAGSPOQ&pp=ygUMbml4IGxhbmd1YWdl)
* [NixOS Introduction: Basics of Nix Language Explained](https://www.youtube.com/watch?v=cyPdh6gu2sw&pp=ygUMbml4IGxhbmd1YWdl)
* [Informal intro to the Nix language, derivations and nixpkgs](https://www.youtube.com/watch?v=9DJtHIpdp0Y&t=132s&pp=ygUMbml4IGxhbmd1YWdl)
* [Nix Language Overview](https://www.youtube.com/watch?v=eCapIx9heBw&pp=ygUMbml4IGxhbmd1YWdl)
* [A Gentle Introduction to Nix](https://www.youtube.com/watch?v=gUjvnZ9ZwMs&pp=ygUMbml4IGxhbmd1YWdl)
* [Nix - The Best Package Manager](https://www.youtube.com/watch?v=BwEIXIjLTNs&t=270s&pp=ygUFTml4T1M%3D)
* [**Beginner’s Guide to Nix Playlist](https://www.youtube.com/playlist?list=PLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)
* [Getting Started with Nix](https://www.youtube.com/watch?v=xXlCcdPz6Vc&pp=ygUQSG93IHRvIExlYXJuIE5peA%3D%3D)
* [NixOS Introduction: Basics of Nix Language Explained**](https://www.youtube.com/watch?v=cyPdh6gu2sw&pp=ygUQSG93IHRvIExlYXJuIE5peA%3D%3D)
* [How to get started with Nix as a Rust developer - YouTube](https://www.youtube.com/watch?v=tv9s4jhdUpU)
* [The Secret of Nix - YouTube](https://www.youtube.com/watch?v=sSn1svY14Ds)
* [Getting Started with Nix - YouTube](https://www.youtube.com/watch?v=xXlCcdPz6Vc&t=1351s)
* [Getting Started with Nix](https://www.youtube.com/watch?v=xXlCcdPz6Vc)
* ( ) [[RFC 0137] Nix language versioning by fricklerhandwerk · Pull Request #137 · NixOS/rfcs](https://github.com/NixOS/rfcs/pull/137)
* ( ) [2023-nix-developer-dialogues-live-stream](https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386)
* ( ) [Add missing 'nix profile' subcommands by edolstra · Pull Request #5249 · NixOS/nix](https://github.com/NixOS/nix/pull/5249)
* ( ) [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218)
* ( ) [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218/10)
* ( ) [elco Dolstra - The Evolution of Nix (SoN2022 - public lecture series)](https://www.youtube.com/watch?v=h8hWX_aGGDc&t=2900s)
* ( ) [How to (partially) compensate for the lack of static typing / type annotations? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
* ( ) [how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
* ( ) [issues](https://github.com/NixOS/nixpkgs/issues?q=is%3Aissue+is%3Aopen)
* ( ) [lib.options: NixOS / nixpkgs option handling | nixpkgs](https://ryantm.github.io/nixpkgs/functions/library/options/)
* ( ) [mkIf vs if / then - Help - NixOS Discourse](https://discourse.nixos.org/t/mkif-vs-if-then/28521)
* ( ) [Module system deep dive — nix.dev documentation](https://nix.dev/tutorials/module-system/module-system)
* ( ) [Nix Function to Validate Email Address - CodePal](https://codepal.ai/code-generator/query/5pPHhh0W/nix-function-validate-email)
* ( ) [Nix syntax for passing arguments to imported Modules - Help - NixOS Discourse](https://discourse.nixos.org/t/nix-syntax-for-passing-arguments-to-imported-modules/31547/2)
* ( ) [nix-shorts/posts/inspecting-values-with-repl.md at master · alper/nix-shorts](https://github.com/alper/nix-shorts/blob/master/posts/inspecting-values-with-repl.md)
* ( ) [NixLang Wiki | NixLang.wiki](https://nixlang.wiki/)
* ( ) [nixos.org](https://nixos.org/manual/nix/stable/command-ref/conf-file.html)
* {nixlang CAS semantics} [github.com](https://github.com/NixOS/rfcs/pull/106)
* related to Nix 3.0 [github.com](https://github.com/NixOS/nix/issues/7701)
* {nixlang types} [typednix](https://typednix.dev/) [github link](https://github.com/hsjobeki/nix-types)

### Introduction

* {intro } [Learn how to use the Nix REPL effectively - Aldo Borrero](https://aldoborrero.com/posts/2022/12/02/learn-how-to-use-the-nix-repl-effectively/)
* {intro} [ariya.io](https://ariya.io/2020/05/nix-package-manager-on-ubuntu-or-debian)
* {intro} [chetanbhasin.com](https://chetanbhasin.com/articles/zero-to-nix-everything-i-know-about-nix-nixos)
* {intro} [christitus.com](https://christitus.com/nixos-explained/)
* {intro} [klaeufer/klaeufer/wiki/Nix-package-manager](https://github.com/klaeufer/klaeufer/wiki/Nix-package-manager)
* {intro} [Learn nix in Y Minutes](https://learnxinyminutes.com/docs/nix/)
* {intro} [nampdn/my-cheatsheet](https://github.com/nampdn/my-cheatsheet/blob/802116b02deffdf33e1e4dc63dff56b0b8998b71/nix/setup-nix.md?plain%3D1%23L490)
* {intro} [Nix package manager · klaeufer/klaeufer Wiki](https://github.com/klaeufer/klaeufer/wiki/Nix-package-manager)
* {intro} [Nix to Debian phrasebook - NixOS Wiki](https://nixos.wiki/wiki/Nix_to_Debian_phrasebook)
* {intro} [NixOS - Wikipedia](https://en.wikipedia.org/wiki/NixOS)
* {intro} [Quick Start - Nix Reference Manual](https://nixos.org/manual/nix/stable/quick-start.html)

## NixOS

* [NixOS is Mindblowing](https://www.youtube.com/watch?v=fuWPuJZ9NcU&pp=ygUFTml4T1M%3D)
* [NixOS in 60 seconds](https://www.youtube.com/watch?v=Ukglm5KJFa8&pp=ygUFTml4T1M%3D)
* [NixOS beginner guide](https://www.youtube.com/watch?v=bjTxiFLSNFA&t=1s&pp=ygUFTml4T1M%3D)
* [I left NixOS, here's why.](https://www.youtube.com/watch?v=tTYgh8TU9oc&pp=ygUFTml4T1M%3D)
* [NixOS gaming | best DE and Linux distro](https://www.youtube.com/watch?v=DP-3E1FaBfo&pp=ygUFTml4T1M%3D)
* [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://www.youtube.com/watch?v=AGVXJ-TIv3Y&t=5640s&pp=ygULTml4T1Mgc2V0dXA%3D)
* ["Unlock the Power of NixOS: The Ultimate Step-by-Step Guide to Effortless Installation!"](https://www.youtube.com/watch?v=rc2bt3WMw8s&pp=ygULTml4T1Mgc2V0dXA%3D)
* [First Time NixOS Install with Customization](https://www.youtube.com/watch?v=_Z32SYFbxpw&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS Has One BIG Problem](https://www.youtube.com/watch?v=i6wSn8OlBNc&t=411s&pp=ygUFTml4T1M%3D)
* [NixOS quick-n-dirty manual install](https://www.youtube.com/watch?v=1nkitmgCHfA&t=537s&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS Intro - Installation and basic usage](https://www.youtube.com/watch?v=9fWrxmEYGAs&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS beginner guide](https://www.youtube.com/watch?v=bjTxiFLSNFA&t=1s&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS Is The Power User Distro (Now With An Easy Installer!)](https://www.youtube.com/watch?v=ck4J2Faa7Fc&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS : The HYPE is Real ! Everything You NEED to Know (NEW!)](https://www.youtube.com/watch?v=BVDNByTMOp0&pp=ygUQSG93IHRvIExlYXJuIE5peA%3D%3D)
* [First Time NixOS Install with Customization - YouTube](https://www.youtube.com/watch?v=_Z32SYFbxpw)
* [NixOS Config - Autologin - Flatpak - Fonts - Polkit - Release Upgrade - YouTube](https://www.youtube.com/watch?v=IRRtk320j2A)
* [A First Look At NixOS 23.05 - YouTube](https://www.youtube.com/watch?v=2ShTNNkduLk)
* [NixOS Introduction - Nix Flakes](https://www.youtube.com/watch?v=DXz3FJszfo0)
* [NixOS Flake Tour](https://www.youtube.com/watch?v=ARjAsEJ9WVY&t=165s)
* [Beginners Guide to Nix EP1: Flakes](https://www.youtube.com/watch?v=IrxCiNnXG4M&t=60s)
* [NixOS beginner guide - YouTube](https://www.youtube.com/watch?v=bjTxiFLSNFA&t=2s)
* [NixOS in 60 seconds - YouTube](https://www.youtube.com/watch?v=Ukglm5KJFa8)
* [Nix - The Best Package Manager](https://youtu.be/BwEIXIjLTNs)
* [Dieses OS ist eigentlich ein Paketmanager - NixOS 21.11 - #sonntagsOS - 19](https://youtu.be/CQMU3kSRhLU)
* [Jake Hamilton NixOS Playlist](https://www.youtube.com/playlist?list=PLCy0xwW0SDST7VMInFJ4NIwG_SW0yO59y)

## Nix/NixOS in the media

* [Debian 12, openSUSE 15.5, NixOS, Huge Steam Update & more Linux news! - YouTube](https://www.youtube.com/watch?v=YojPjjavHbs)
* [Dieses OS ist eigentlich ein Paketmanager - NixOS 21.11](https://www.youtube.com/watch?v=CQMU3kSRhLU)
* [Looking at NixOS live on camera! - YouTube](https://www.youtube.com/watch?v=1KKrjic7YVQ)
* {media} [DistroWatch.com: NixOS](https://distrowatch.com/table.php?distribution%3Dnixos)
* {media} [focusonlinux.podigee.io](https://focusonlinux.podigee.io/54-die-fabelhafte-welt-von-nix) → [blog.binaergewitter.de](https://blog.binaergewitter.de/2017/09/24/binaergewitter-spezial-7-nixos)
* {media} [hn thread](https://news.ycombinator.com/item?id%3D30057287) curse of nixos
* {media} [hn thread](https://news.ycombinator.com/item?id%3D30917809)
* {media} [hn thread](https://news.ycombinator.com/item?id%3D35208402)
* {media} [hn thread](https://news.ycombinator.com/item?id%3D37105524)
* {media} [Honestly - how painful was it to learn and get working? And what limitations/nig... | Hacker News](https://news.ycombinator.com/item?id=27369920)
* {media} [willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/](https://www.google.com/url?q=http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* {media} [I Have Fallen In 💕 Love With ❄️ NixOS | A Basic Introduction To NixOS - YouTube](https://www.youtube.com/watch?v%3DuS8Bx8nQots)
* {media} [I was WRONG! This is the BEST Package Manager. - YouTube](https://www.youtube.com/watch?v=Ty8C2B910EI)
* {media} [interview on nixos with industry](https://drakerossman.com/blog/interview-with-cto-of-listenfield-agtech-introducing-nixos-to-organization)
* {media} [Is NixOS Overrated?](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
* {media} [itsfoss.com](https://itsfoss.com/why-use-nixos/)
* {media} [news/open-source-und-einstiegshuerden-macht-nix-2207-166501.html](https://www.golem.de/news/open-source-und-einstiegshuerden-macht-nix-2207-166501.html)
* {media} [Nix: An idea whose time has come | Hacker News](https://news.ycombinator.com/item?id=30384121)
* {media} [NixOS - Das Linux mit ganz eigenen Herangehensweisen. Grundkonzept vorgestellt - YouTube](https://www.youtube.com/watch?app%3Ddesktop%26v%3Dl3HnhX4tmZc)
* {media} [Nixos and Hyprland - Best Match Ever](https://www.youtube.com/watch?v=61wGzIv12Ds)
* {media} [NixOS vs Ubuntu | What are the differences?](https://stackshare.io/stackups/nixos-vs-ubuntu)
* {media} [NixOS: Everything Everywhere All At Once - YouTube](https://www.youtube.com/watch?v%3DCwfKlX3rA6E)
* {media} [NixOS: the good, the bad, and the ugly](https://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* {media} [On Replacing Ubuntu with NixOS (part 1)](https://stesie.github.io/2016/08/nixos-pt1)
* {media} [Podcast: Into the Nix Ecosystem](https://open.spotify.com/episode/5jPtQqG5LO9zBV1HtWkOgX?si=n4FavA9wTVylWPdajA32qA&nd=1)
* {media} [ShipIt! Presents: How Shopify Uses Nix](https://shopify.engineering/shipit-presents-how-shopify-uses-nix)
* {media} [thenewstack.io](https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/)
* {media} [Ubuntu vs NixOS detailed comparison as of 2024 - Slant](https://www.slant.co/versus/2689/2700/~ubuntu_vs_nixos)
* {media} [Ubuntu vs. NixOS - NixOS Wiki](https://nixos.wiki/wiki/Ubuntu_vs._NixOS)
* {media} [linux-community.de](https://www.linux-community.de/ausgaben/linuxuser/2018/08/nix-neues/)
* {media} [linux-magazine.com](https://www.linux-magazine.com/Issues/2021/248/Nix-and-NixOS)

## Flakes

* {flake } [Novice Nix: Flake Templates · peppe.rs](https://peppe.rs/posts/novice_nix:_flake_templates/)
* [A Tour of Nix Flakes | Mattia Gheda](https://ghedam.at/a-tour-of-nix-flakes)
* [an-incremental-strategy-for-stabilizing-flakes](https://discourse.nixos.org/t/an-incremental-strategy-for-stabilizing-flakes/16323/5)
* [Beginners Guide to Nix EP1: Flakes - YouTube](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
* [blog/2020-05-25-flakes/](https://www.tweag.io/blog/2020-05-25-flakes/)
* [community.flake.parts](https://community.flake.parts/)
* [flake parts](https://flake.parts/)
* [improving-flakes](https://discourse.nixos.org/t/improving-flakes/12831/56)
* [Introducing Flake-Containers: A simple PoC](https://www.reddit.com/r/NixOS/s/7Ullw5lW4p)
* [introducing-flakehub](https://discourse.nixos.org/t/introducing-flakehub/32044)
* [jameswillia.ms](https://jameswillia.ms/posts/flake-line-by-line.html)
* [journal.platonic.systems](https://journal.platonic.systems/nix-flake-architecture-in-practice/)
* [Manage Nix Flake Inputs Like a Pro - YouTube](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
* [nix flake - Nix Reference Manual](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
* [nix flake lock - Nix Reference Manual](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake-lock)
* [Nix Flakes Cheat Sheet - Vinícius Müller's blog](https://viniciusmuller.github.io/blog/nix-flakes-cheat-sheet.html)
* [Nix flakes explained - YouTube](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
* [Nix flakes explained](https://www.youtube.com/watch?v=S3VBi6kHw5c&t=3s&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Nix Flakes, Part 1: An introduction and tutorial - Tweag](https://www.tweag.io/blog/2020-05-25-flakes/)
* [Nix Flakes: an Introduction - Xe Iaso - Xe's Blog](https://xeiaso.net/blog/nix-flakes-1-2022-02-21/)
* [Nix Flakes: Exposing and using NixOS Modules - Xe Iaso](https://xeiaso.net/blog/nix-flakes-3-2022-04-07/)
* [Nix from First Principles: Flake Edition - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/)
* [nix journey part 1 - creating a flake](https://woile.dev/posts/nix-journey-part-1-creating-a-flake/)
* [nixos.org](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
* [nixos.wiki](https://nixos.wiki/wiki/Flakes)
* [Practical Nix Flakes - DEV Community](https://dev.to/serokell/practical-nix-flakes-5e6p)
* [Practical Nix Flakes](https://serokell.io/blog/practical-nix-flakes)
* [samuel.dionne-riel.com](https://samuel.dionne-riel.com/blog/2023/09/06/flakes-is-an-experiment-that-did-too-much-at-once.html) read: [news.ycombinator.com](https://news.ycombinator.com/item?id=32374113)
* [tech.aufomm.com](https://tech.aufomm.com/my-nixos-journey-flakes/)
* [thiscute.world](https://thiscute.world/en/posts/nixos-and-flake-basics/)
* [Tips and Tricks for Nix Flakes | Ivan Petkov](https://ipetkov.dev/blog/tips-and-tricks-for-nix-flakes/)
* [tonyfinn.com](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
flake * flakes explanation [reddit](https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj)
* [First Steps with Nix - Building emacs](https://www.heinrichhartmann.com/posts/2021-08-08-nix-emacs/)
* [Flakes and Developer Environments (Nix From First Principles: Flake Edition #8) - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
* [Flakes aren't real and cannot hurt you: a guide to using Nix flakes the non-flake way - jade's www site](https://jade.fyi/blog/flakes-arent-real/)
* [Flakes video](https://www.youtube.com/watch?v%3DDXz3FJszfo0)
* [tweag/rfcs/blob/flakes/rfcs/0049-flakes.md](https://github.com/tweag/rfcs/blob/flakes/rfcs/0049-flakes.md)
* [You Should Use Flakes Right Away in NixOS! - YouTube](https://www.youtube.com/watch?v%3DACybVzRvDhs)
* [Beginners Guide to Nix EP1: Flakes](https://www.youtube.com/watch?v=IrxCiNnXG4M&t=61s&pp=ygUMbml4IGxhbmd1YWdl)
* [Nix flakes explained](https://www.youtube.com/watch?v=S3VBi6kHw5c&t=3s&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [Beginners Guide to Nix EP1: Flakes](https://www.youtube.com/watch?v=IrxCiNnXG4M&t=61s&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [You Should Use Flakes Right Away in NixOS!](https://www.youtube.com/watch?v=ACybVzRvDhs&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [NixCon2023 What Flakes needs (technically)](https://www.youtube.com/watch?v=UHhnG4rbvzo&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [Nix Flakes in Production: What, Why and How](https://www.youtube.com/watch?v=o1Y7rWrPEO8&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://www.youtube.com/watch?v=AGVXJ-TIv3Y&t=5640s&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [You Should Use Flakes Right Away in NixOS!](https://www.youtube.com/watch?v=ACybVzRvDhs&pp=ygUFTml4T1M%3D)
* [Matthew Croughan - Use flake.nix, not Dockerfile - MCH2022](https://www.youtube.com/watch?v=0uixRE8xlbY)
* [Intro to Flakes](https://youtu.be/K54KKAx2wNc)
* [Nix flakes explained](https://www.youtube.com/watch?v=S3VBi6kHw5c)

## Videos2

* [Streamline Your Linux Experience with Nix OS Deployment Tools! - YouTube](https://www.youtube.com/watch?v=qXBzpWIQwMY)
* [The Most Exciting Linux Distro! - YouTube](https://www.youtube.com/watch?v=GkjBMy5ZdG0)
* [NixOS 43: Overriding Packages That Are Within Attribute Sets - YouTube](https://www.youtube.com/watch?v=7a2Yladt0JI)
* [Hardware-Acceleration on NixOS super easy - YouTube](https://www.youtube.com/watch?v=xFsfTcFQY48)
* [Can you downgrade your Linux distro? - NixOS - YouTube](https://www.youtube.com/watch?v=fT3xjqZyacs)
* [ALASCA Tech-Talk #5: Nix and NixOS in Cloud IT - YouTube](https://www.youtube.com/watch?v=MnJnjn3QTGQ)
* [RisiOS das Internet Betriebssystem was Ubuntu und Linux Mint die Show stehlen könnte - YouTube](https://www.youtube.com/watch?v=xx66Ul7s9Yo)
* [I was WRONG! This is the BEST Package Manager. - YouTube](https://www.youtube.com/watch?v=Ty8C2B910EI)
* [NixOS - Reproduzierbares, deklaratives Linux angetestet](https://www.youtube.com/watch?v=DtXg3NoiSxM)
* [NixOS Is The Power User Distro (Now With An Easy Installer!)](https://www.youtube.com/watch?v=ck4J2Faa7Fc)
* [Build A Portable Development Environment With Nix Package Manager - YouTube](https://www.youtube.com/watch?v=70YMTHAZyy4&list=PL1C97G3GhlHdANMFUIXTcFr14R7b7EBj9)
* [Build A Portable Development Environment With Nix Package ...](https://www.youtube.com/watch?v=70YMTHAZyy4)
* [...](https://www.youtube.com/watch?v=qjq2wVEpSsA)
* [Nix Friday - poetry2nix part 1 - YouTube](https://www.youtube.com/watch?v=XfqJulSAPBQ)
* [The best of both worlds with Nix + Bazel](https://www.youtube.com/watch?v=dBru1MVKsfE&pp=ygUeRGV0ZXJtaW5pc3RpYyBzeXN0ZW1zIHdpdGggTml4)
* [Fast, correct, reproducible builds with Nix + Bazel](https://www.youtube.com/watch?v=2wI5J8XYxM8)
* [NixOS as Daily Driver?](https://www.youtube.com/watch?v=cjCFmpdarpg)
* [NixOS Installation Guide - YouTube](https://www.youtube-nocookie.com/embed/axOxLJ4BWmY?start=1642)
* [Paolo – NixOS | Lightning Talk Jugend hackt Berlin 2021](https://youtu.be/Xm2lsP7pnE4)
* [CTT on Nix](https://www.youtube.com/watch?v=Ty8C2B910EI)
* [...](https://www.youtube.com/watch?v=WwgSMgpX6TM)
* [NixOS beginner guide](https://www.youtube.com/watch?v=bjTxiFLSNFA&list=PLko9chwSoP-15ZtZxu64k_CuTzXrFpxPE)
* [Nix Dev Environments | Declare Your Coding Projects](https://www.youtube.com/watch?v=yQwW8dkuHqw)
* [Nix-powered Docker Containers](https://www.youtube.com/watch?v=5XY3K8DH55M)
* [Peering into the Land of Parentheses - Guix from the Nix Perspective (NixCon 2019)](https://www.youtube.com/watch?v=bDGzCXr6VYU)
* [Nixos and Hyprland - Best Match Ever](https://www.youtube.com/watch?v=61wGzIv12Ds&t=4s)
* [A Resource for Learning Nix](https://www.youtube.com/watch?v=Nvh7A3HA_4U)
* [NixOS: Sddm, Gtk, QT5 Simple Theming Guide](https://www.youtube.com/watch?v=m_6eqpKrtxk)
* [Introduction to nix env and nix shell](https://www.youtube.com/watch?v=eW8KU6h_ZNo)
* [Nix-powered Docker Containers - YouTube](https://www.youtube.com/watch?v=5XY3K8DH55M)
* [Nix From Nothing #1 | Let's Learn Nix & NixOS! - YouTube](https://www.youtube.com/watch?v=t8ydCYe9Y3M)
* [Nixos Install and Software Install - YouTube](https://www.youtube.com/watch?v=qVg5ZJNpiqQ)
* [Informal intro to the Nix language, derivations and nixpkgs - YouTube](https://www.youtube.com/watch?v=9DJtHIpdp0Y&t=132s)
* [Gabriella Gonzalez, "How to Write a Nix Derivation" - YouTube](https://www.youtube.com/watch?v=bbW6kgB5F2M)
* [NixOS: a sales pitch - YouTube](https://www.youtube.com/watch?v=2L2qHfNnXB4)
* [NIX OS: the BEST package manager on the MOST SOLID Linux distribution - YouTube](https://www.youtube.com/watch?v=DMQWirkx5EY)
* [The Secret of Nix - YouTube](https://www.youtube.com/watch?v=sSn1svY14Ds)
* [NixOS beginner guide - YouTube](https://www.youtube.com/watch?v=bjTxiFLSNFA)
* [yt [Tech Maid] Running Software On NixOS - YouTube](https://www.youtube.com/watch?v%3DUC2StObYQIc)
* [yt ?](https://youtu.be/G5f6GC7SnhU?si%3DhdXcvu9BgqSDQx1H)
* [yt ?](https://www.youtube.com/watch?v%3Dutoj6annRK0%26pp%3DygUSbml4b3MgaG9tZSBtYW5hZ2Vy)
* [yt ?](https://www.youtube.com/watch?v%3DNEbzVKkjXUg)
* [yt ?](https://www.youtube.com/watch?v%3DM7XSp-ubCy0%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
* [yt ?](https://www.youtube.com/watch?v%3Dc447uYCePAo)
* [yt ?](https://www.youtube.com/watch?v%3D6L0H92-JdHA%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
* [yt ?](https://www.youtube.com/watch?v%3D1ED9b7ERTzI%26pp%3DygUXaG93IHRvIHJlYWxseSBsZWFybiBOaXg%253D)
* {video} [Nix From Nothing #1 | Let's Learn Nix & NixOS! - YouTube](https://www.youtube.com/watch?v%3Dt8ydCYe9Y3M)
* {video} [NixOS Explained - YouTube](https://www.youtube.com/watch?v%3DtQ446LjIv7k)

## Miscellaneous / Specific Software*

* [Neovim Configuration in Nix: Unpacking Multiple Approaches - YouTube](https://www.youtube.com/watch?v=i68c6vZkSXc)
* [NixOS + Hyprland challenge comes to an end, My final thoughts - YouTube](https://www.youtube.com/watch?v=eb2Cvdu6F18)
* [NixOS with Hyprland - My setup and some thoughts](https://www.youtube.com/watch?v=THgo4nBJyg8&pp=ygULTml4T1Mgc2V0dXA%3D)
* [Nix vs Guix - YouTube](https://www.youtube.com/watch?v=S9V-pcTrdL8)
* [The Nix Hour #32 [extending nixpkgs lib and Nix builtins, Nix plugins] - YouTube](https://www.youtube.com/watch?v=-ohLh-QHc_A)

## Meta

* [nixos-users-against-mic-sponsorship.github.io/](https://nixos-users-against-mic-sponsorship.github.io/)
* {meta} [/r/voidlinux/comments/z8a727/how_do_you_guys_feel_about_flatpaks/](https://www.reddit.com/r/voidlinux/comments/z8a727/how_do_you_guys_feel_about_flatpaks/)
* {meta} [> Main reason for leaving was that Nix package maintainers have to heavily patch... | Hacker News](https://news.ycombinator.com/item?id=25030546)
* {meta} [2022-10-07-nix-team-meeting-minutes-3](https://discourse.nixos.org/t/2022-10-07-nix-team-meeting-minutes-3/22369)
* {meta} [2022-nix-survey-results](https://discourse.nixos.org/t/2022-nix-survey-results/18983)
* {meta} [Arch vs NixOS : linuxquestions](https://www.reddit.com/r/linuxquestions/comments/ryr45s/arch_vs_nixos/)
* {meta} [Is NixOS fundamentally a more secure OS? : NixOS](https://www.reddit.com/r/NixOS/comments/xbjei3/is_nixos_fundamentally_a_more_secure_os/)
* {meta} [nix-community-survey-2023-results](https://discourse.nixos.org/t/nix-community-survey-2023-results/33124)
* {meta} [nix-vs-language-package-manager](https://discourse.nixos.org/t/nix-vs-language-package-manager/7099/3)
* {meta} [NixOS interesting, but fatal flaws](https://www.youtube.com/watch?v=x6ip1cVVr7E) (good comments)
* {meta} [Open Letter](https://save-nix-together.org/)
* {meta} [Raw repository package counts - Repology](https://repology.org/repositories/packages)
* {meta} [security - How secure are the default repositories of Fedora, CentOS, and Debian? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/312410/how-secure-are-the-default-repositories-of-fedora-centos-and-debian)
* {meta} [Security - NixOS Wiki](https://nixos.wiki/wiki/Security)
* {meta} [security - Which linux distro's package repositories are secure and which are not? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/16251/which-linux-distros-package-repositories-are-secure-and-which-are-not?rq=1)
* {meta} [Upgrading Nix - Nix Reference Manual](https://nixos.org/manual/nix/stable/installation/upgrading)
* {meta} [Who uses NixOS? Who are you people? (And good-bye) : NixOS](https://www.reddit.com/r/NixOS/comments/rctpu9/who_uses_nixos_who_are_you_people_and_goodbye/)

## Nix Education

* [brainrake/nixos-tutorial](https://github.com/brainrake/nixos-tutorial)
* [Hacking Your First Package — nix-tutorial documentation](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/first-package.html)
* [Nix for Startups (full course) - YouTube](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
* [An introduction to the Nix ecosystem](https://ghedam.at/15490/so-tell-me-about-nix)
* [HOW to REALLY learn NixOS - YouTube](https://www.youtube.com/watch?v%3D1ED9b7ERTzI)
* [how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs/)
* [nixos for the confused - part v](https://cola-gang.industries/nixos-for-the-confused-part-v)
* [NixOS Live Coding: Using our Flake's Nixpkgs for Nix-Shell, Building Systems on GitHub Actions - YouTube](https://www.youtube.com/watch?v%3DTR0C76I59AI)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/development/intro)
* [Writing your own NixOS modules for fun and (hopefully) profit - YouTube](https://www.youtube.com/watch?v%3DSzyuLVzS5Fg)
* Informal intro to the Nix language, derivations and nixpkgs - YouTube [video](https://www.youtube.com/watch?v=9DJtHIpdp0Y&t=132s&pp=2AGEAZACAcoFFm5peCBsYW5ndWFnZSB0dXRvcmlhbCA%3D)

## Blog Posts

* [...](https://blog.alper-celik.dev/posts/my-first-contributions-to-nixpkgs-and-open-source/)
* [determinate.systems](https://determinate.systems/posts/experimental-does-not-mean-unstable)
* [matrix.ai](https://matrix.ai/blog/developing-with-nix/)
* [Nix and NixOS for DevOps - inovex GmbH](https://www.inovex.de/de/blog/nix-and-nixos-for-devops/)
* [nix journey part 1](https://daniel-siepmann.de/nix-journey-part-1.html)
* [nix journey part 1](https://daniel-siepmann.de/nix-journey-part-1.html%23howIFinallyStartedWithNixNotNixos)
* [Some notes on using nix](https://jvns.ca/blog/2023/02/28/some-notes-on-using-nix/)
* [Your home in Nix](https://hugoreeves.com/posts/2019/nix-home/)
* [blog/nix-in-practice](https://www.slice.zone/blog/nix-in-practice)
* [blog/2022-08-04-tweag-and-nix-future/](https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/)
* [blog/2021-12-20-nix-2.4/](https://www.tweag.io/blog/2021-12-20-nix-2.4/)
* [blog/2020-09-10-nix-cas/](https://www.tweag.io/blog/2020-09-10-nix-cas/)
* [blog/2020-06-25-eval-cache/](https://www.tweag.io/blog/2020-06-25-eval-cache/)
* [blog post: patch a package source on nixos](https://drakerossman.com/blog/how-to-patch-a-package-source-on-nixos)
* [blog post: nixos install with luks](https://fictionbecomesfact.com/nixos-installation-luks)
* [blog post: my first contributions to nixpkgs and pen source](https://blog.alper-celik.dev/posts/my-first-contributions-to-nixpkgs-and-open-source/)
* [blog post: how I start nix](https://xeiaso.net/blog/how-i-start-nix-2020-03-08/)
* [blog post my nix workflow](https://bmcgee.ie/posts/2023/11/nix-my-workflow/)
* [blog post - nikiv - nix](https://wiki.nikiv.dev/package-managers/nix/)

## Forum

* [Guix seems interesting but I almost stopped reading when I read "Nix". For all t... | Hacker News](https://news.ycombinator.com/item?id=18908591)
* [NixOS Configuration File Organisation - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-configuration-file-organisation/19612/5)
* [what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users](https://discourse.nixos.org/t/what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users/41656)
* [where-did-you-get-stuck-in-the-nix-ecosystem-tell-me-your-story](https://discourse.nixos.org/t/where-did-you-get-stuck-in-the-nix-ecosystem-tell-me-your-story/31415)

## NixOS Manual

* [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/index.html%23sec-luks-file-systems)
* [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/%23sec-installation)
* [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/index.html%23sec-writing-modules)
* [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/%23sec-installing-from-other-distro)
* [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/options%23opt-services.xserver.displayManager.autoLogin)
* [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/index.html%23sec-changing-config)

## Tutorial

* [nix.dev tutorial](https://nix.dev/tutorials/first-steps/declarative-shell.html)
* [nix.dev tutorial](https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html)
* [nix.dev tutorial](https://nix.dev/tutorials/first-steps/)
* [nix.dev tutorial](https://nix.dev/tutorials/%23tutorials)
* [nix.dev tutorial](https://nix.dev/guides/recipes/python-environment)

## Possible Nix Alternatives

* [Fedora Silverblue](https://docs.fedoraproject.org/en-US/fedora-silverblue/)
* [VanillaOS](https://vanillaos.org/)
* [Bedrock Linux](https://bedrocklinux.org/)
* [blendOS](https://blendos.co/)
* [EndlessOS](https://www.endlessos.org/)
* [...](...)
* [...](...)

## Garbage Collection

* [Deleting Old System Profiles - What am I Missing? : r/NixOS](https://www.reddit.com/r/NixOS/comments/unwip2/deleting_old_system_profiles_what_am_i_missing/)
* [Garbage Collection - Nix Reference Manual](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
* [How do you delete old generations and gc them automatically? : r/NixOS](https://www.reddit.com/r/NixOS/comments/ejsdhb/how_do_you_delete_old_generations_and_gc_them/)
* [How to remove old system generations? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-remove-old-system-generations/6648)
* [List and delete NixOS generations - Help - NixOS Discourse](https://discourse.nixos.org/t/list-and-delete-nixos-generations/29637)
* [nix-collect-garbage - Nix Reference Manual](https://nixos.org/manual/nix/stable/command-ref/nix-collect-garbage)
* [nix-store-gc-equivalent-to-delete-older-than](https://discourse.nixos.org/t/nix-store-gc-equivalent-to-delete-older-than/31767/2)
* [NixOS Generations Trimmer - NixOS Wiki](https://nixos.wiki/wiki/NixOS_Generations_Trimmer)
* [nixos.org](https://nixos.org/guides/nix-pills/garbage-collector)

## Installation

* {install } [Installing NixOS with Full Disk Encryption](https://gist.github.com/mara-schulke/43e2632ce73d94028f50f438037c1578)
* {install} [1. Get Nix running on your system](https://zero-to-nix.com/start/install)
* {install} [CT NixOS Install Video](https://www.youtube.com/watch?v%3D_Z32SYFbxpw)
* {install} [Download Nix / NixOS | Nix & NixOS](https://nixos.org/download)
* {install} [Full Disk Encryption - NixOS Wiki](https://nixos.wiki/wiki/Full_Disk_Encryption)
* {install} [install NIX package manager on Alpine Linux · GitHub](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
* {install} [install-nixos-from-existing-linux](https://discourse.nixos.org/t/install-nixos-from-existing-linux/6856/14)
* {install} [Installation error on Ubuntu 22.04: ".../libnixstore.so: undefined symbol: sqlite3_error_offset" : Nix](https://www.reddit.com/r/Nix/comments/117m3nw/installation_error_on_ubuntu_2204_libnixstoreso/)
* {install} [Is it possible to morph Debian into NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/)
* {install} [is_it_possible_to_morph_debian_into_nixos/](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/)
* {install} [nix on ubuntu getting started - Google Search](https://www.google.com/search?client=firefox-b-d&q=nix+on+ubuntu+getting+started)
* {install} [nix-community/nixos-anywhere: install nixos everywhere via ssh [maintainer=@numtide]](https://github.com/nix-community/nixos-anywhere)
* {install} [NixOs native flake deployment with LUKS drive encryption and LVM | by Ion Mudreac | Medium](https://mudrii.medium.com/nixos-native-flake-deployment-with-luks-drive-encryption-and-lvm-b7f3738b71ca)
* {install} [NixOS Package (Install/Uninstall) Guide | Matthew Rhone dot Dev](https://matthewrhone.dev/nixos-package-guide)
* {install} [nixos.org](https://nixos.org/manual/nixos/stable/index.html#sec-installation)
* {install} [reflexivereflection.com](https://reflexivereflection.com/posts/2015-02-28-deb-installation-nixos.html)
* {install} [rootless nixos on alpine](https://adnab.me/blog/2023/2023-04-02-rootless-nixos-alpine.html)
* {install} [tinkering.xyz](https://tinkering.xyz/installing-nixos/)
* {install luks} [NixOS: Full disk encryption with TPM and Secure Boot ? : r/NixOS](https://www.reddit.com/r/NixOS/comments/xrgszw/nixos_full_disk_encryption_with_tpm_and_secure/)

## NixOS Software Search

* [NixOS Search - Packages - tre](https://search.nixos.org/packages?channel%3Dunstable%26show%3Dtre-command%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dtre)
* [NixOS Search - Packages - spacefm](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dspacefm)
* [NixOS Search - Packages - rpds](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drpds)
* [NixOS Search - Packages - neovim](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dneovim)
* [NixOS Search - Packages - lem](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlem)
* [NixOS Search - Packages - lazy-nvim](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-nvim)
* [NixOS Search - Packages - lazy-lsp](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-lsp-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-lsp)
* [NixOS Search - Packages - keymap-amend](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dkeymap-amend)
* [NixOS Search - Packages - jira](https://search.nixos.org/packages?channel%3D23.11%26show%3Djira-cli-go%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Djira)
* [NixOS Search - Packages - harpoon](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dharpoon)
* [NixOS Search - Packages - cosmic](https://search.nixos.org/packages?channel%3D23.11%26show%3Dcosmic-edit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dcosmic)
* [NixOS Search - Options - nix.gc](https://search.nixos.org/options?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnix.gc)

## Home Manager

How to install and nconfigure browser extension with Nix and Home Manager?
* {hw} [TUXEDO Devices - NixOS Wiki](https://nixos.wiki/wiki/TUXEDO_Devices)
* {hm } [How to manage user configuration with flakes without home manager on nixos-21.05? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-manage-user-configuration-with-flakes-without-home-manager-on-nixos-21-05/16102/11)
* → [search.nixos.org](https://search.nixos.org/packages?channel=22.11&from=0&size=50&sort=relevance&type=packages&query=gnome+tweaks)
* → need to install themes in Nix as well → how to install themes in Nix? Where are my themes anyway?
* → use lxappearances (see [here](https://www.reddit.com/r/NixOS/comments/6j9zlj/how_to_set_up_themes_in_nixos/))
* {hm} [**Declarative management of dotfiles with Nix and Home Manager](https://www.bekk.christmas/post/2021/16/dotfiles-with-nix-and-home-manager)
* {hm} [/results?search_query=nix+home+manager](https://www.youtube.com/results?search_query=nix+home+manager)
* {hm} [02 - Channels and Home Manager | Nix Series - YouTube](https://www.youtube.com/watch?v=494zlooD7Tg)
* {hm} [Appendix A. Configuration Options](https://rycee.gitlab.io/home-manager/options.html)
* {hm} [Appendix A. Configuration Options](https://rycee.gitlab.io/home-manager/options.html)
* {hm} [Appendix A. Home Manager Configuration Options](https://nix-community.github.io/home-manager/options.xhtml)
* {hm} [Appendix D. Release Notes](https://nix-community.github.io/home-manager/release-notes.xhtml%23sec-release-22.11-state-version-changes)
* {hm} [Building a highly optimized home environment with Nix](https://determinate.systems/posts/nix-home-env)
* {hm} [Burke Libbey Nixology series (4 videos related to Home Manager)](https://www.youtube.com/watch?v=IUsQt4NRCnc&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=7)
* {hm} [Can someone show me how to manage $HOME without home-manager? : r/NixOS](https://www.reddit.com/r/NixOS/comments/j4uc0k/can_someone_show_me_how_to_manage_home_without/)
* {hm} [Can't get rid of home-manager package - Help - NixOS Discourse](https://discourse.nixos.org/t/cant-get-rid-of-home-manager-package/8449/6)
* {hm} [Changes after updating home-manager - Today I Learned](https://fnordig.de/til/nix/package-changes.html)
* {hm} [continue from here: Search · home.homeDirectory](https://github.com/search?q=home.homeDirectory+language%3ANix&type=code)
* {hm} [Custom NIX Home-Manager Modules For Personalized Setup](https://www.youtube.com/watch?v=EUiXzX7nthY&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* {hm} [Daniel Siepmann: Migrating to nix home-manager](https://daniel-siepmann.de/migrating-to-nix-home-manager.html)
* {hm} [Flake based Home Manager cannot find home.nix - NixOS Discourse](https://discourse.nixos.org/t/flake-based-home-manager-cannot-find-home-nix/18356)
* {hm} [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=10)
* {hm} [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=11)
* {hm} [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&t=397s)
* {hm} [Getting Started with home-manager - YouTube](https://www.youtube.com/watch?v=OgUvDXxHlLs)
* {hm} [ghedam.at](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* {hm} [Home Manager - NixOS Wiki](https://nixos.wiki/wiki/Home_Manager)
* {hm} [Home Manager - NixOS Wiki](https://nixos.wiki/wiki/Home_Manager)
* {hm} [Home Manager - NixOS Wiki](https://nixos.wiki/wiki/Home_Manager#Configuration)
* {hm} [Home Manager - Option Search](https://mipmip.github.io/home-manager-option-search/?query%3Dhyprland)
* {hm} [Home Manager - Option Search](https://mipmip.github.io/home-manager-option-search/)
* {hm} [Home Manager manual](https://nix-community.github.io/home-manager/)
* {hm} [Home Manager Manual](https://nix-community.github.io/home-manager/)
* {hm} [Home Manager Manual](https://nix-community.github.io/home-manager/)
* {hm} [Home Manager Manual](https://nix-community.github.io/home-manager/) can I use chezmoi together with Home Manager? or just for non-Nix software? [Can't get basic nix home manager setup working - Stack Overflow](https://stackoverflow.com/questions/74665483/cant-get-basic-nix-home-manager-setup-working)
* {hm} [Home Manager Manual](https://nix-community.github.io/home-manager/index.html)
* {hm} [Home Manager Manual](https://nix-community.github.io/home-manager/index.html%23ch-usage)
* {hm} [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23_why_are_the_session_variables_not_set)
* {hm} [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23ch-nix-flakes)
* {hm} [Home Manager Manual](https://rycee.gitlab.io/home-manager/index.html)
* {hm} [home manager template - YouTube](https://www.youtube.com/watch?v=RnIl_vqxnXk)
* {hm} [Home-Manager - Dev Handbook](https://dev.jmgilman.com/environment/tools/nix/home-manager/)
* {hm} [Home-manager installed apps don't show up in Applications Launcher - Help - NixOS Discourse](https://discourse.nixos.org/t/home-manager-installed-apps-dont-show-up-in-applications-launcher/8523)
* {hm} [home-manager systemd service - Neuron Zettelkasten](https://neuron.zettel.page/install-systemd)
* {hm} [home-manager-doesnt-seem-to-recognize-sessionvariables](https://discourse.nixos.org/t/home-manager-doesnt-seem-to-recognize-sessionvariables/8488/9)
* {hm} [home-manager-shell-nix-shell-for-your-home-manager-config](https://discourse.nixos.org/t/home-manager-shell-nix-shell-for-your-home-manager-config/24632)
* {hm} [Home-manager: using hostname for host-specific settings : r/NixOS](https://www.reddit.com/r/NixOS/comments/15coxtr/homemanager_using_hostname_for_hostspecific/)
* {hm} [home-manager/modules · main · Nick Hiebert / dotfiles · GitLab](https://gitlab.com/BRBWaffles/dotfiles/-/tree/main/home-manager/modules?ref_type%3Dheads)
* {hm} [home.stateVersion is not of type `one of "18.09", "19.03", "19.09", "20.03", "20.09", "21.03", "21.05", "21.11"' - Help - NixOS Discourse](https://discourse.nixos.org/t/home-stateversion-is-not-of-type-one-of-18-09-19-03-19-09-20-03-20-09-21-03-21-05-21-11/19691)
* {hm} [Homebrew to Home Manager](https://lucperkins.dev/blog/home-manager/)
* {hm} [http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)* - config*
* {hm} [http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](https://www.google.com/url?q=http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* {hm} [Interesting template to get started with Home Manager](https://github.com/ryantm/home-manager-template)
* {hm} [intro to home manager - YouTube](https://www.youtube.com/results?search_query%3Dintro%2Bto%2Bhome%2Bmanager)
* {hm} [julianhofer.eu](https://julianhofer.eu/blog/01-silverblue-nix/#home-manager)
* {hm} [Manage Neovim plugins (and more!) with Nix and Home Manager](https://gist.github.com/nat-418/d76586da7a5d113ab90578ed56069509)
* {hm} [Manage Your Dotfiles with Home Manager! - YouTube](https://www.youtube.com/watch?v%3DIiyBeR-Guqw)
* {hm} [Manage your macOS environment with nix-darwin + Home Manager - YouTube](https://www.youtube.com/watch?v=r0Y7s1sRSUY)
* {hm} [Managing dotfiles with Nix - Alex Pearce](https://alexpearce.me/2021/07/managing-dotfiles-with-nix/)
* {hm} [Managing OS and home configurations using nixos-flake – nixos-flake](https://community.flake.parts/nixos-flake)
* {hm} [Managing your NixOS configuration with Flakes and Home Manager!](https://josiahalenbrown.substack.com/p/managing-your-nixos-configuration)
* {hm} [mipmip.github.io](https://mipmip.github.io/home-manager-option-search/) → [github.com](https://github.com/mipmip/home-manager-option-search) contribute if possible [Original Home Manager announcement](https://rycee.net/posts/2017-07-02-manage-your-home-with-nix.html)
* {hm} [Misterio77/nix-colors](https://github.com/Misterio77/nix-colors) 
* {hm} [Nix Friday - Home manager - YouTube](https://www.youtube.com/watch?v=2emuPcomQ98)
* {hm} [Nix Home Manager Tutorial](https://www.youtube.com/watch?v=utoj6annRK0&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)* - Questions / Ideas
* {hm} [Nix home-manager tutorial: Declare your entire home directory](https://www.youtube.com/watch?v=FcC2dzecovw&t=187s&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* {hm} [nix home-manager: sign commits using ssh :: Nelson Alex Jeppesen — lowercase haven](https://jeppesen.io/git-commit-sign-nix-home-manager-ssh/)
* {hm} [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* {hm} [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager#words-of-warning)
* {hm} [nix-community/home-manager](https://github.com/nix-community/home-manager)
* {hm} [Nix-darwin, home-manager, and flakes: how to set environment variables for the main user? - Stack Overflow](https://stackoverflow.com/questions/77296068/nix-darwin-home-manager-and-flakes-how-to-set-environment-variables-for-the-m)
* {hm} [Nixos Flakes with Home-Manager - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-flakes-with-home-manager/18476)
* {hm} [NixOS Home Manager for multi-user on NIX flake Installation and Configuration | by Ion Mudreac | Medium](https://mudrii.medium.com/nixos-home-manager-on-native-nix-flake-installation-and-configuration-22d018654f0c)
* {hm} [NixOS Series #5: How to set up home-manager on NixOS?](https://itsfoss.com/home-manager-nixos/)
* {hm} [NixOS Setup Guide - Configuration / Home-Manager / Flakes - YouTube](https://www.youtube.com/watch?v%3DAGVXJ-TIv3Y)
* {hm} [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://youtu.be/AGVXJ-TIv3Y)
* {hm} [rycee.gitlab.io](https://rycee.gitlab.io/home-manager/)
* {hm} [Setting up Nix on macOS from scratch (incl. dotfiles via home-manager and Nix flakes) - YouTube](https://www.youtube.com/watch?v=1dzgVkgQ5mE)
* {hm} [Switching non-NixOS Home Manager to flakes – dee.underscore.world](https://dee.underscore.world/blog/home-manager-flakes/)
* {hm} [Tutorial: Getting started with Home Manager for Nix | Mattia Gheda](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* {hm} [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* {hm resource} [schuelermine/xhmm: Extra home manager modules](https://github.com/schuelermine/xhmm)

## Specific Topics

* {specific} [2023-07-31 Documentation team meeting notes #68 - Development / Documentation - NixOS Discourse](https://discourse.nixos.org/t/2023-07-31-documentation-team-meeting-notes-68/31127/2)
* {specific} [depreciate-the-use-of-nix-env-to-install-packages](https://discourse.nixos.org/t/depreciate-the-use-of-nix-env-to-install-packages/20139/22)
* {specific} [experimental-does-not-mean-unstable-detsyss-perspective-on-nix-flakes](https://discourse.nixos.org/t/experimental-does-not-mean-unstable-detsyss-perspective-on-nix-flakes/32703)
* {specific} [Filesystem Hierarchy Standard - NixOS4Noobs](https://jorel.dev/NixOS4Noobs/fhs.html)
* {specific} [How to manually replicate/reproduce/obtain the sha256 hash specified in Nix with fetchgit or fetchFromGitHub? · Issue #191128 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/191128)
* {specific} [How to upgrade packages - Guides - NixOS Discourse](https://discourse.nixos.org/t/how-to-upgrade-packages/6151/2)
* {specific} [NixOS: build your system on Github actions! • gvolpe's blog](https://gvolpe.com/blog/nixos-binary-cache-ci/)
* {specific} [Security updates in Nixos : r/NixOS](https://www.reddit.com/r/NixOS/comments/wtweio/security_updates_in_nixos/)
* {specific} [superuser.com](https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell)
* {specific} [unimport nix plugin? at DuckDuckGo](https://duckduckgo.com/?q%3Dunimport%2Bnix%2Bplugin%253F%26ia%3Dweb)
* {specific} [using-imports-attribute-with-import-function](https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2)

## Package Search

* [search](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnixos%2Bdeclare%2Bdocker%2Bimages%2Bin%2Bconfig)
* [search.nixos.org](https://search.nixos.org/packages?channel=23.11&show=nix-tree&from=0&size=50&sort=relevance&type=packages&query=nix-tree)
* [search.nixos.org](https://search.nixos.org/packages?channel%3D23.11%26show%3Drunit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drunit) nixos runit
* [search.nixos.org](https://search.nixos.org/packages?channel%3D23.11%26show%3Dlibgen-cli%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlibgen)
* [search.nixos.org](https://search.nixos.org/options)*

## Reddit

* [r/unixporn/s/Fk9sUOv7FY](https://www.reddit.com/r/unixporn/s/Fk9sUOv7FY)
* [r/NixOS/s/UhoOeQnx6T](https://www.reddit.com/r/NixOS/s/UhoOeQnx6T)
* [r/NixOS/s/s1yFBo1r44](https://www.reddit.com/r/NixOS/s/s1yFBo1r44)
* [r/NixOS/s/LhnKgqVscG](https://www.reddit.com/r/NixOS/s/LhnKgqVscG) protect flake shell used with nix develop from having their packages deleted by nix-collect-garbage
* [r/NixOS/s/isBCetb09h](https://www.reddit.com/r/NixOS/s/isBCetb09h)
* [r/NixOS/s/iNzCdcCZWj](https://www.reddit.com/r/NixOS/s/iNzCdcCZWj) folder structure feedback
* [r/NixOS/s/bytkKR3Tvq](https://www.reddit.com/r/NixOS/s/bytkKR3Tvq)
* [r/NixOS/s/bUsuKtHM9W](https://www.reddit.com/r/NixOS/s/bUsuKtHM9W)
* [r/NixOS/s/AuPlyOQFIK](https://www.reddit.com/r/NixOS/s/AuPlyOQFIK)
* [r/NixOS/s/0T63UgILLY](https://www.reddit.com/r/NixOS/s/0T63UgILLY)
* [r/NixOS/comments/z16mt8/cant_seem_to_set_default_shell_using_homemanager/?rdt=48798](https://www.reddit.com/r/NixOS/comments/z16mt8/cant_seem_to_set_default_shell_using_homemanager/?rdt%3D48798)
* [r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/](https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/)
* [r/NixOS/comments/wjskae/how_can_i_change_grub_theme_from_the/?rdt=48996](https://www.reddit.com/r/NixOS/comments/wjskae/how_can_i_change_grub_theme_from_the/?rdt%3D48996)
* [r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/](https://www.reddit.com/r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/)
* [r/NixOS/comments/fjbnhp/using_fish_with_nix/](https://www.reddit.com/r/NixOS/comments/fjbnhp/using_fish_with_nix/)
* [r/NixOS/comments/bs4q2p/installing_deb_packages_in_nixos/?rdt=64360](https://www.reddit.com/r/NixOS/comments/bs4q2p/installing_deb_packages_in_nixos/?rdt%3D64360)
* [r/NixOS/comments/16cfdag/poetry2nix_can_not_get_a_flake_to_work/](https://www.reddit.com/r/NixOS/comments/16cfdag/poetry2nix_can_not_get_a_flake_to_work/)
* [r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/](https://www.reddit.com/r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/)
* [r/NixOS/comments/129mdgp/gdm_only_showing_black_screen_and_white_cursor/](https://www.reddit.com/r/NixOS/comments/129mdgp/gdm_only_showing_black_screen_and_white_cursor/)
* [r/linuxmasterrace/s/GX6bM8wS97](https://www.reddit.com/r/linuxmasterrace/s/GX6bM8wS97) packaging request
* [r/browsers/s/7RTbiwUx4q](https://www.reddit.com/r/browsers/s/7RTbiwUx4q)
* [r/](https://www.reddit.com/r/NixOS/s/seSy4UDEuR)

## Nix Cheats

* {cheats} [[Feature Discussion] Declarative Flatpak Configuration? - Development - NixOS Discourse](https://discourse.nixos.org/t/feature-discussion-declarative-flatpak-configuration/26767/3)
* {cheats} [What advantages does Flatpak offer over Nix? The](https://news.ycombinator.com/item?id%3D35170465)

## Specific Apps

* [Android development on NixOS - Specific Solutions](https://specific.solutions.limited/projects/hanging-plotter/android-environment.md)
* [Any documentation on keyd under NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/10ym1ed/any_documentation_on_keyd_under_nixos/)
* [Anyone managed to install flutter >=3.0.0 on NixOS? - Help - NixOS Discourse](https://discourse.nixos.org/t/anyone-managed-to-install-flutter-3-0-0-on-nixos/20542)
* [babariviere/flutter-nix-hello-world: Demonstration on how to use flutter with Nix](https://github.com/babariviere/flutter-nix-hello-world)
* [beautysh/flake.nix at 9845efc3ea3e86cc0d41465d720a47f521b2799c · lovesegfault/beautysh](https://github.com/lovesegfault/beautysh/blob/9845efc3ea3e86cc0d41465d720a47f521b2799c/flake.nix%23L63)
* [blitz_api/flake.nix at 6edad7ac48c80cd40f595b5eab99c0968b5d8b8a · fusion44/blitz_api](https://github.com/fusion44/blitz_api/blob/6edad7ac48c80cd40f595b5eab99c0968b5d8b8a/flake.nix%23L52)
* [Building Flutter Web apps on NixOS - Help - NixOS Discourse](https://discourse.nixos.org/t/building-flutter-web-apps-on-nixos/23151)
* [configure emacs on nixos at DuckDuckGo](https://duckduckgo.com/?q%3Dconfigure%2Bemacs%2Bon%2Bnixos%26ia%3Dweb)
* [discourse.julialang.org](https://discourse.julialang.org/t/build-julia-on-nixos/35129/26)
* [Docker - NixOS Wiki](https://nixos.wiki/wiki/Docker) android studio install on nixos - Google Search [galowicz.de](https://galowicz.de/2023/03/13/quick-vms-with-nixos/)
* [emacs-twist/twist.nix](https://github.com/emacs-twist/twist.nix) (emacs twist)
* [example of how to configure zsh? · Issue #989 · nix-community/home-manager](https://github.com/nix-community/home-manager/issues/989)
* [Flutter on NixOS : NixOS](https://www.reddit.com/r/NixOS/comments/oecxb9/flutter_on_nixos/)
* [Flutter Pros & Cons for Mobile App Development | Nix Solutions Service](https://nixsolutions-service.com/fluttersdk/)
* [godot-rust.github.io](https://godot-rust.github.io/book/gdnative/recipes/nix-build-system.html)
* [hackernews userscript in rust wasm](https://drakerossman.com/blog/hackernews-userscript-in-rust-wasm)
* [holochain advanced install](https://developer.holochain.org/get-started/install-advanced/)
* [home-manager/zathura.nix at dd99675ee81fef051809bc87d67eb07f5ba022e8 · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/dd99675ee81fef051809bc87d67eb07f5ba022e8/modules/programs/zathura.nix)
* [home-manager/zathura.nix at dd99675ee81fef051809bc87d67eb07f5ba022e8 · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/dd99675ee81fef051809bc87d67eb07f5ba022e8/modules/programs/zathura.nix)
* [How to Enable Wayland on NixOS, or: Confusion, Conquest, Triumph](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
* [i3 on nixos → collect links](https://www.google.com/search?q=nixos%20i3wm&ie=utf-8&oe=utf-8&client=firefox-b-m)
* [including-latest-julia-in-configure-nix](https://discourse.nixos.org/t/including-latest-julia-in-configure-nix/8895)
* [kanata - MyNixOS](https://mynixos.com/search?q%3Dkanata)
* [managing firefox on macos with nix](https://cmacr.ae/blog/managing-firefox-on-macos-with-nix/)
* [mjhart.netlify.app](https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html)
* [mynixos.com](https://mynixos.com/mynixos/demo-linode-nginx)
* [mynixos.com](https://mynixos.com/mynixos/demo-raspberry-transmission)
* [mynixos.com](https://mynixos.com/search?q%3Dgtk)
* [network_inventory/flake.nix at dev · Nebucatnetzer/network_inventory](https://github.com/Nebucatnetzer/network_inventory/blob/dev/flake.nix)
* [Nix Build / Develop - Emacs NG - A new approach to Emacs](https://emacs-ng.github.io/emacs-ng/build/nix-develop/)
* [nix ocaml](https://dimitrije.website/posts/2023-03-04-nix-ocaml.html)
* [nix-examples/web/FastAPI/fastapi/app.nix at 0ebd762662c42270309e01b8f96161a3376f7ddf · vlktomas/nix-examples](https://github.com/vlktomas/nix-examples/blob/0ebd762662c42270309e01b8f96161a3376f7ddf/web/FastAPI/fastapi/app.nix%23L8)
* [nix/pkgs/keyd/default.nix at 011bf23ba8bcf95c8cdd163ae746776ee4f7d00e · morphykuffour/nix](https://github.com/morphykuffour/nix/blob/011bf23ba8bcf95c8cdd163ae746776ee4f7d00e/pkgs/keyd/default.nix)
* [Nixos and Hyprland - Best Match Ever - YouTube](https://www.youtube.com/watch?v%3D61wGzIv12Ds%26t%3D5s)
* [NixOS Search - Packages](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=flutter) flutter [NixOS Search - Packages](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=android) android [nixGL update for nvidia 530 drivers - Google Search](https://www.google.com/search?client=firefox-b-d&q=nixGL+update+for+nvidia+530+drivers)
* [nixos.wiki](https://nixos.wiki/wiki/I3)
* [nixos.wiki](https://nixos.wiki/wiki/St)
* [nixpkgs/default.nix at release-22.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/release-22.11/pkgs/applications/window-managers/awesome/default.nix) Nix as server: [news.ycombinator.com](https://news.ycombinator.com/item?id=12250104)
* [nixpkgs/flutter.nix at cfe96dbfce8bd62dcd4a8ad62cb79dec140b1a62 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/cfe96dbfce8bd62dcd4a8ad62cb79dec140b1a62/pkgs/development/compilers/flutter/flutter.nix#L168)
* [nixpkgs/pkgs/development/python-modules/halo/default.nix at nixos-23.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/development/python-modules/halo/default.nix%23L28)
* [NyCodeGHG/awesome-prometheus-alerts.nix](https://github.com/NyCodeGHG/awesome-prometheus-alerts.nix)
* [packages/nushell](https://www.nixhub.io/packages/nushell)
* [Podman - NixOS Wiki](https://nixos.wiki/wiki/Podman)
* [pycryptpad-tools/nix/deps.nix at b2500775710205af92d72ded68d213f38190a8fb · dpausp/pycryptpad-tools](https://github.com/dpausp/pycryptpad-tools/blob/b2500775710205af92d72ded68d213f38190a8fb/nix/deps.nix%23L20)
* [recap-utr/nlp-service](https://github.com/recap-utr/nlp-service)
* [request: bato module · Issue #3582 · nix-community/home-manager](https://github.com/nix-community/home-manager/issues/3582)
* [samuela/nixos-vscode-server](https://github.com/samuela/nixos-vscode-server)
* [search.nixos.org](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=git+hook)
* [seirl-nixos/pkgs/epiquote.nix at 2d95c686c6b2d3b65d25f17731ddfab0509579df · seirl/seirl-nixos](https://github.com/seirl/seirl-nixos/blob/2d95c686c6b2d3b65d25f17731ddfab0509579df/pkgs/epiquote.nix%23L4)
* [services - MyNixOS](https://mynixos.com/search?q%3Dservices)
* [Setting up Emacs on NixOS - YouTube](https://www.youtube.com/watch?v%3DWZBfPbpGDOU)
* [Simple Terminal (st) setup - Guides - NixOS Discourse](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [simple-terminal-st-setup](https://github.com/simple-terminal-st-setup/9763)
* [simplex-chat/haskell.nix](https://github.com/simplex-chat/haskell.nix)
* [SoraTenshi/helix/tree/master](https://github.com/SoraTenshi/helix/tree/master)
* [stackoverflow.com](https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell)
* $$$$$ [nixos.wiki](https://nixos.wiki/wiki/Visual_Studio_Code)
* prog [hraban/cl-nix-lite: Common Lisp module for Nix, without Quicklisp](https://github.com/hraban/cl-nix-lite)
* suckless [github.com](https://github.com/NixOS/nixpkgs/issues/23200)

### TeX

* [flyx.org](https://flyx.org/nix-flakes-latex/)
* [nixos.wiki](https://nixos.wiki/wiki/TexLive)
* [rgri/tex2nix](https://github.com/rgri/tex2nix)
*[**Exploring Nix Flakes: Build LaTeX Documents Reproducibly](https://flyx.org/nix-flakes-latex/)

### VSCode

* {vscode} [pietdevries94/nix-vscode-extensions](https://github.com/pietdevries94/nix-vscode-extensions)
* {vscode} [Search results - Nix | Visual Studio Code , Visual Studio Marketplace](https://marketplace.visualstudio.com/search?term=Nix&target=VSCode&category=All%20categories&sortBy=Relevance)
* {vscode} [Visual Studio Code - NixOS Wiki](https://nixos.wiki/wiki/Visual_Studio_Code)

## 1s

* [fluffynukeit.com](https://fluffynukeit.com/installing-essential-software-in-nixos/)

## Misc

* [nix-community/robotnix](https://github.com/nix-community/robotnix)
* [nixos.wiki](https://nixos.wiki/wiki/Android)

## Related Projects

* [snowflakeos.org](https://snowflakeos.org/)