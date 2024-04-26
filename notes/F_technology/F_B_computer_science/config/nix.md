# Nix
## Notes

Project idea: add .drv syntax highlighting to bat, or create a bat-based tool to format and display .drv all-in-one



Talk about pure functional programming, esp in terms of input → out and no side effects, no state

Talk about package hashing as a means of unique identification of a package and its dependencies and the guarantees that brings with it

Talk about links, soft and hard, and how they are used in Nix

Talk about what exactly Nix expressions are, as well as flakes

Then about how Nix code is organized, such as imports

Go over each point in the desiderata (still a fee to add) and talk about how each relates to pure functional programming

Do an informal proof of how each desideratum follows from and is required by the definition of pure functional programming

Then finally go over what Nix does with different commands

contrast old and new syntax

Emphasize commonalities among commands, common theme and design goals, etc

Ideas

Create tool to populate pyproject.toml with exact versiions supplied by Nix packages, with option for stable or unstable (reference: [github.com](https://github.com/peterldowns/nix-search-cli)
* [peterldowns/nix-search-cli](https://discourse.nixos.org/t/peterldowns/nix-search-cli$2

Create language server / parser / highlighter for .drv files, add .drv support to bat

Look at Poetry2Nix and modify it to use pre-built: [github.com](https://github.com/lazamar/nix-package-versions)
* [lazamar/nix-package-versions](https://discourse.nixos.org/t/lazamar/nix-package-versions$2 →https://github.com/nix-community/pip2nix?


Set up git inside nix container


Next rebuild switch: firefox, ublock origin for firefox and chrome, userscript for all browsers for domain-specific css using pilit stylesheets for wikimedia, github, mdbook, sops-nix secrets, kvantum qt styling, zathura, wezterm keybinds for pane and tab navigation, neovim window and tab navigation <leader>hjkl; neotree open and close keybinds, terminal navigation shortcuts, floating terminal shortcuts, "open file in split" shortcut


Yet Another Nix Playlist - multilingual audio & subtitles, short, single-topic videos, quality visuals



challenge: synchronize languages and features with init.lua

buildNvimHM { lib, pkgs, g, features, languages , ...}

home.packages = [];

include each (language x feature) file in its own self-contained file; combine in default.nix and call lua formatter

include lua-ls config file in each directory to ignore missing (vim) imports

nixmacs - like nixide for emacs -> precompile elisp?

nix-utils - make as flake

nixide - flake, also app and shell outputs

clinix - returns HM and other outputs for CLI dev environment

move nvim out into its own flake, with languages and features declared externally

Makes sense to have the config complete and stable first, then to move it into its own flake and add nix-powered modularized configuration

nixfetch - neofetch for nixos


Why does chromium via nix have a different hover icon?

https://github.com/nix-community/nixos-generators

https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/?rdt=61989

Look into Nix as a build tool -> Nix vs Just

Try out Nix container -> how much lighter? how minimal can it be? 

Write garbage collection scripts for Nix & home-manager

Read source code:
* poetry2nix
* system-manager
* home-manager
* stylix
* nix-colors
* nixpkgs.lib (esp relevant)
* Nix 

Read docs:
* nix manual
* nixpkgs manual
* nixos manual
* home-manager docs

How to use Nix to modify and act on other Nix file? (wrap, override, etc)

good discussion: https://www.reddit.com/r/NixOS/comments/1bzvaof/nixos_alternatives

write nixfetch: special fetch for NixOS, write in Haskell, use SVG image

just use Greetd as greeter

Write script to view entire nix config as one big nix/dhall/json file -> nix eval --expr, etc.




nix: write insertIf function in Nix to interpolate string if some option is set, otherwise empty stringkeep in separate files and then bring together in Nix. Call files that are incorrect as standalone .luaPiece (for exampke) and in nvim turn on highlighting with false positive errors turned off

NixOS and Ubuntu are two different Linux distributions with distinct design philosophies and approaches to system management. While both have security features, NixOS incorporates certain design principles that contribute to its security posture. Here are some aspects in which NixOS might be considered more secure than Ubuntu:

Immutable System Configuration:

NixOS: NixOS follows an immutable infrastructure model, meaning that the system configuration is treated as a whole, and changes are applied by creating new configurations rather than modifying existing ones. This can reduce the risk of configuration drift and unintended changes that might introduce security vulnerabilities.

Ubuntu: In traditional Linux distributions like Ubuntu, system configurations are often modified directly, and changes can accumulate over time. This can potentially lead to a less predictable and more complex system state.

Declarative System Configuration:

NixOS: NixOS configurations are declarative and specify the desired state of the system. This approach can enhance system predictability and make it easier to audit and understand the system's configuration.

Ubuntu: While modern Ubuntu versions have introduced tools like Ansible and systemd for system configuration management, they may not enforce the same level of declarative and immutable principles as NixOS.

Atomic Upgrades and Rollbacks:

NixOS: NixOS supports atomic upgrades and rollbacks, allowing users to easily switch between different system configurations. This feature can be valuable for system recovery and provides a safety net in case an upgrade introduces unexpected issues.

Ubuntu: While Ubuntu provides package management tools for upgrading and downgrading individual packages, NixOS's approach extends this to the entire system configuration, including the kernel.

Package Management and Isolation:

NixOS: Nix, the package manager used by NixOS, provides a functional and isolated approach to package management. Each package is isolated from others, reducing the potential for conflicts and dependency issues.

Ubuntu: Ubuntu's package management system, based on APT (Advanced Package Tool), also isolates packages, but it may not enforce the same level of functional package management principles as Nix.

Enhanced Reproducibility:

NixOS: The declarative and functional nature of NixOS configurations contributes to enhanced reproducibility. Given the same configuration, a NixOS system can be replicated reliably across different environments.

Ubuntu: While Ubuntu strives for package consistency, NixOS's functional approach can offer more explicit control over the entire system's state.

It's important to note that security is a multifaceted aspect, and the effectiveness of security measures depends on various factors, including the specific use case, the user's expertise, and the threat landscape. Both NixOS and Ubuntu have security features, and the choice between them should consider factors beyond security alone, such as community support, package availability, and ease of use.

Are there, conversely, ways in which Ubuntu is more secure than NixOS?

ChatGPT

While NixOS and Ubuntu both prioritize security, they have different design philosophies and approaches to system management. Ubuntu, being one of the most widely used Linux distributions, has its own set of security features and advantages. Here are some aspects where Ubuntu might be considered more secure than NixOS:

AppArmor and Security Profiles:

Ubuntu: Ubuntu incorporates AppArmor, a mandatory access control (MAC) framework that restricts the capabilities of individual programs. AppArmor uses security profiles to define what actions specific programs are allowed to perform, enhancing the overall security of the system.

NixOS: While NixOS supports various security features, including SELinux integration, it might not have the same level of integration and community support for AppArmor as Ubuntu.

Wide Adoption and Community Support:

Ubuntu: Being one of the most popular Linux distributions, Ubuntu benefits from a large and active user and developer community. This means that security issues are often discovered and addressed promptly, and there is a wealth of community knowledge and support available.

NixOS: While NixOS has a dedicated and growing community, it may not be as large or mature as Ubuntu's community. The wider adoption of Ubuntu can contribute to a more extensive security-focused ecosystem.

Security Patching and Updates:

Ubuntu: Ubuntu has a well-established system for providing security updates and patches promptly. The Ubuntu Security Team actively monitors vulnerabilities and releases updates to address them in a timely manner.

NixOS: NixOS also emphasizes security updates, but the update process and release cycle may differ. Ubuntu's regular release schedule and Long-Term Support (LTS) versions provide predictable maintenance and support.

Ease of Use and User Base:

Ubuntu: Ubuntu is known for its user-friendly approach, making it accessible to a wide range of users, including those who may not have extensive Linux experience. A user-friendly environment can contribute to better security practices as users are more likely to follow best practices when the system is easy to use.

NixOS: NixOS has a unique configuration model that may have a steeper learning curve for users unfamiliar with functional programming and declarative configuration. While this design contributes to security, ease of use is also a security consideration.

Security Documentation and Resources:

Ubuntu: Ubuntu has extensive documentation, security guides, and community forums that provide resources for users to enhance the security of their systems. The availability of well-documented security practices contributes to overall system security.

NixOS: NixOS documentation is comprehensive, but the community resources and documentation may not be as extensive or user-friendly for security-related topics as those for Ubuntu.

It's essential to consider the specific security requirements, user expertise, and the overall ecosystem when choosing between Ubuntu and NixOS. Both distributions have their strengths, and the choice often depends on factors beyond security, including the intended use case, user preferences, and community support.

The security of software repositories, including Nixpkgs for NixOS and the repositories for Ubuntu and Debian, involves multiple factors, and it's not straightforward to declare one as universally more secure than the others. Each package management system has its own set of security features and practices. Here are some considerations for each:

Nixpkgs (NixOS):

Functional Package Management: Nixpkgs uses a functional approach to package management. Each package is built in isolation, and dependencies are explicitly defined. This can help reduce dependency issues and conflicts.

Reproducibility: Nixpkgs emphasizes reproducibility, meaning that given the same configuration, the build process for packages should produce identical results. This can enhance the trustworthiness of packages.

Immutable Infrastructure: NixOS follows an immutable infrastructure model, where the entire system configuration is treated as a whole. This can reduce the risk of configuration drift and unintended changes.

Ubuntu and Debian Repositories:

Wide Adoption and Community Scrutiny: Ubuntu and Debian have large user communities, and their repositories undergo significant scrutiny. Security vulnerabilities are actively monitored, and updates are provided promptly. The Debian Security Team and the Ubuntu Security Team play key roles in managing security updates.

Package Signing: Packages in Debian and Ubuntu repositories are signed with cryptographic keys, providing a mechanism to verify the authenticity and integrity of the packages. This helps prevent tampering during the download process.

Stable Release Process: Debian's stable release process is known for its focus on stability and security. Ubuntu, which is based on Debian, inherits many of these security practices, particularly in Long-Term Support (LTS) releases.

Ultimately, the security of a software repository depends on various factors, including the development and maintenance practices, community involvement, and the responsiveness to security vulnerabilities. It's crucial to note that security is a holistic concern, and no system is entirely immune to security issues. Regularly applying security updates, using package signing mechanisms, and following security best practices are critical regardless of the chosen distribution.

When evaluating the security of a system, users should consider their specific security requirements, the threat landscape, and their own expertise in maintaining and securing the system. Additionally, using additional security measures, such as intrusion detection systems and firewalls, can further enhance the security of any Linux distribution.

Between Nixpkgs and Ubuntu, which confirms more closely to ISO27001?

ChatGPT

ISO/IEC 27001 is a widely recognized international standard for information security management systems (ISMS). It provides a systematic approach to managing sensitive company information, ensuring its confidentiality, integrity, and availability. ISO 27001 doesn't prescribe specific technical measures but focuses on establishing a framework for information security governance.

Comparing Nixpkgs (NixOS) and Ubuntu in the context of ISO 27001 compliance involves considering how each aligns with the standard's principles and practices. Here are some considerations:

ISO 27001 Framework:

Nixpkgs (NixOS): NixOS and Nixpkgs provide a unique approach to system configuration and package management with a focus on immutability and declarative specifications. While the ISO 27001 standard doesn't prescribe specific technical solutions, the principles of transparency, traceability, and accountability can align well with Nixpkgs's functional and reproducible system configuration.

Ubuntu: Ubuntu, as a widely used Linux distribution, has a broad user base and established security practices. It offers tools and features that can be integrated into an ISO 27001 compliant environment. Additionally, Ubuntu's Long-Term Support (LTS) releases may align well with the stability and reliability requirements of ISO 27001.

Security Updates and Patch Management:

Nixpkgs (NixOS): Nixpkgs has a strong emphasis on reproducibility and the ability to roll back changes. Security updates can be systematically applied, and the functional package management model allows for clear tracking of changes.

Ubuntu: Ubuntu has well-defined processes for security updates and patch management. The Ubuntu Security Team actively monitors vulnerabilities and releases timely updates. The Ubuntu ecosystem benefits from widespread adoption and community scrutiny.

Auditability and Compliance:

Nixpkgs (NixOS): The functional and declarative nature of Nixpkgs allows for clear specification of system configurations. This can contribute to auditability and compliance efforts, aligning with ISO 27001 principles.

Ubuntu: Ubuntu's popularity and wide usage contribute to the availability of tools, documentation, and community knowledge, which can facilitate auditability and compliance checks.

Documentation and Reporting:

Nixpkgs (NixOS): Nixpkgs and NixOS documentation provide insights into the system's configuration and package management. Clear documentation is essential for ISO 27001 compliance.

Ubuntu: Ubuntu has extensive documentation and resources that can aid in understanding and implementing security best practices. This can be valuable for documentation and reporting requirements.

Ultimately, both Nixpkgs (NixOS) and Ubuntu can be used in environments seeking ISO 27001 compliance. The choice depends on factors beyond security alone, such as the specific needs of the organization, the expertise of the team, and the desired system configuration and management model. Organizations should conduct their own risk assessments and carefully consider their unique security and compliance requirements when choosing an operating system and configuration management approach.

How could one convince his or her supervisors that NixOS is suitable for use in a business context with sensitive data? Currently only Ubuntu and Devian are allowed.

ChatGPT

Convincing supervisors to consider NixOS in a business context, especially when Ubuntu and Debian are already established, may require a thoughtful approach that addresses specific concerns related to security, manageability, and business needs. Here are some points and strategies you might consider:

Security and Reproducibility:

Emphasize the functional and declarative nature of NixOS, which allows for reproducible system configurations. This can enhance security and traceability, aligning with best practices for managing sensitive data.

Immutable Infrastructure:

Highlight the benefits of an immutable infrastructure model, where system configurations are treated as a whole and changes are made by creating new configurations. This can reduce the risk of configuration drift and unauthorized changes.

Rollback and Recovery:

Showcase NixOS's ability to perform atomic upgrades and rollbacks, providing a safety net for system changes. This feature can be crucial in ensuring system stability and recovery from unexpected issues.

Documentation and Auditability:

Point out the clear documentation provided by NixOS and Nixpkgs. The functional and declarative configuration model makes it easier to document and understand the system state, contributing to auditability.

Community Support:

Discuss the growing and active community around NixOS. While Ubuntu and Debian have established communities, NixOS's community is enthusiastic and supportive, and it actively contributes to the development and improvement of the system.

Integration with Existing Infrastructure:

Demonstrate how NixOS can integrate with existing infrastructure and tools. Showcase compatibility with standard Linux software and services to reassure that the migration would not disrupt current workflows.

Pilot Project:

Propose a pilot project or proof-of-concept to evaluate NixOS in a controlled environment. This can help mitigate concerns, demonstrate the benefits, and provide tangible evidence of NixOS's suitability.

Educational Resources:

Provide educational resources and training opportunities for team members to learn about NixOS. Familiarity with the system can alleviate concerns and build confidence in its use.

Risk Mitigation and Contingency Planning:

Address concerns about potential risks by discussing mitigation strategies and contingency plans. Explain how NixOS's features contribute to a more resilient and manageable infrastructure.

Cost and Resource Considerations:

Highlight any potential cost savings or resource efficiency gained by using NixOS. This might include reduced maintenance efforts, faster system recovery, or improved development workflows.

Remember to tailor your communication to your supervisors' priorities and concerns. Providing concrete examples, case studies, or success stories of organizations using NixOS for sensitive data can further strengthen your case. Additionally, being open to feedback and collaborating with relevant stakeholders can foster a more inclusive decision-making process.

Are there any known security risks in NixOS and its packaging system?

ChatGPT

As of my last knowledge update in January 2022, NixOS has generally been considered a secure and well-designed Linux distribution, and the Nix package manager is known for its unique and functional approach to package management. However, it's important to note that no software system is entirely immune to security risks, and vulnerabilities can be discovered or addressed over time.

Here are some considerations regarding security in NixOS and its packaging system:

Security Practices:

NixOS follows certain security practices, such as isolating packages and providing a functional and declarative approach to system configuration. This can contribute to a more secure and auditable system.

Reproducibility:

NixOS emphasizes reproducibility in package builds. The ability to reproduce builds ensures that the same source code and dependencies result in identical binaries, reducing the risk of tampering and providing transparency in the build process.

Community Scrutiny:

NixOS benefits from an active and growing community. Community scrutiny is an essential factor in discovering and addressing security issues. The larger the community, the more eyes are on the codebase, which can contribute to early detection of vulnerabilities.

Security Updates:

Like any Linux distribution, NixOS provides security updates for its packages. Regularly applying these updates is crucial for addressing known vulnerabilities. Users should stay informed about security advisories and apply updates promptly.

Limited Attack Surface:

Nix's functional approach to package management can potentially limit the attack surface by isolating packages and dependencies. Each package is built in its own environment, reducing the risk of conflicts and shared library vulnerabilities.

Centralized Configuration:

NixOS's centralized and declarative system configuration can contribute to better security by providing a clear overview of the system state. This can facilitate auditing and compliance efforts.

While NixOS has its security strengths, it's essential to stay informed about the latest developments, security advisories, and updates in the NixOS community. Regularly checking the official NixOS Security page, participating in community discussions, and monitoring security mailing lists are good practices for staying informed about security-related matters.

Additionally, the security landscape can evolve, and new information may have emerged since my last update in January 2022. Therefore, it's advisable to check the latest sources and security advisories for the most up-to-date information regarding NixOS security.


→ make script to pull relevant system-specific infor from output of nixos-generate-config command

sudo nixos-rebuild switch —extra-experimental-features “nix-command flakes” —flake .#hank

figure out audio config

remove all traces of snaps; raise issue on nix-snap

→ solve the mystery of $PATH

package landscape-client with nix → how to look inside .deb and .snap packages?

try landscape-client in distrobox?

→ build iridium browser for Nix

→ build waveterm for Nix

Goal: To create a Python develop environment where everything just works

→ make script to pull relevant system-specific infor from output of nixos-generate-config command

sudo nixos-rebuild switch —extra-experimental-features “nix-command flakes” —flake .#hank

figure out audio config

remove all traces of snaps; raise issue on nix-snap

→ solve the mystery of $PATH

package landscape-client with nix → how to look inside .deb and .snap packages?

try landscape-client in distrobox?

→ build iridium browser for Nix

→ build waveterm for Nix

create script: nixos-report: like ls for all relevant directories, following all links to real file; also other important information


go through all xdg options on mynixos

Create nand2tetris for NixOS → add to nixpkgs



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

Talk about pure functional programming, esp in terms of input → out and no side effects, no state

Talk about package hashing as a means of unique identification of a package and its dependencies and the guarantees that brings with it

Talk about links, soft and hard, and how they are used in Nix

Talk about what exactly Nix expressions are, as well as flakes

Then about how Nix code is organized, such as imports

Go over each point in the desiderata (still a fee to add) and talk about how each relates to pure functional programming

Do an informal proof of how each desideratum follows from and is required by the definition of pure functional programming

Then finally go over what Nix does with different commands

contrast old and new syntax

Emphasize commonalities among commands, common theme and design goals, etc

Ideas

Create tool to populate pyproject.toml with exact versiions supplied by Nix packages, with option for stable or unstable (reference: [github.com](https://github.com/peterldowns/nix-search-cli)
* [peterldowns/nix-search-cli](https://discourse.nixos.org/t/peterldowns/nix-search-cli$2

Create language server / parser / highlighter for .drv files, add .drv support to bat

Look at Poetry2Nix and modify it to use pre-built: [github.com](https://github.com/lazamar/nix-package-versions)
* [lazamar/nix-package-versions](https://discourse.nixos.org/t/lazamar/nix-package-versions$2 →https://github.com/nix-community/pip2nix?

buildPythonPackage {

pname = "TODO";

version = "TODO";

src = fetchPypi {

inherit pname version;

sha256 = ""; # TODO

};

## Code
```nix

{ lib, pkgs, neovimUtils, wrapNeovimUnstable, neovim-nightly-src, ... }:

let
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
    # https://github.com/NixOS/nixpkgs/issues/211998
    customRC = "luafile ~/.config/nvim/init.lua";
  };

in

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

#### Haskell CLI in Flake
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

import Options.Applicative

data Options = Options
  { name :: String
  } deriving (Show)

parseOptions :: Parser Options
parseOptions = Options
  <$> strOption
    ( long "name"
    <> short 'n'
    <> metavar "NAME"
    <> help "Your name" )

main :: IO ()
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

let


# Function to print a tree structure
printTree = prefix: node: tree:

if lib.isAttrs node

then

let

attrs = lib.attrValues node;

attrNames = lib.attrNames node;

lines = lib.mapAttrsToList (name: value: "${name}: ${value}") node;

subtree = lib.mapAttrsToList (name: value: printTree (prefix + "  ") value tree) node;

in

if lib.length attrs > 0

then "${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${name}: ${value}") node)}"

else

"${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${value}") node)}"

+ (lib.concatStringsSep "\\n" subtree)

else "${prefix}${node}";


# Function to build the import tree

buildImportTree = derivation:

let

buildTree = drv:

let

inputs = lib.foldl' (acc: input: acc + [input])
* [] drv.buildInputs;

in

{ ${lib.foldl' (acc: input: acc + [input]) "" inputs} } // (lib.foldl' (acc: input: acc + buildTree input) {} inputs);

importTree = buildTree derivation;

in

printTree "" importTree importTree;

in

{ buildImportTree, printTree }

This script defines two functions: printTree for printing the tree structure and buildImportTree for building the import tree. The example assumes you have the nixpkgs attribute set available.To use this script, you can import it into another Nix expression and call the buildImportTree function, passing the derivation for the desired output. For example:nixCopy code
```

```nix
# example.nix

{ lib, nixpkgs ? import <nixpkgs> {}, tree ? import ./tree.nix { nixpkgs = nixpkgs; } }:

let

myOutput = nixpkgs.myPackage.outputs.defaultPackage.x86_64-linux;

importTree = tree.buildImportTree myOutput;

in

tree.printTree "" importTree importTree
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

else "${prefix}${node}";


# Function to build the import tree

buildImportTree = derivation:

let

buildTree = drv:

let

inputs = lib.foldl' (acc: input: acc + [input])
* [] drv.buildInputs;

in

{ ${lib.foldl' (acc: input: acc + [input]) "" inputs} } // (lib.foldl' (acc: input: acc + buildTree input) {} inputs);

importTree = buildTree derivation;

in

printTree "" importTree importTree;

in

{ buildImportTree, printTree }

This script defines two functions: printTree for printing the tree structure and buildImportTree for building the import tree. The example assumes you have the nixpkgs attribute set available.To use this script, you can import it into another Nix expression and call the buildImportTree function, passing the derivation for the desired output. For example:nixCopy code


# example.nix

{ lib, nixpkgs ? import <nixpkgs> {}, tree ? import ./tree.nix { nixpkgs = nixpkgs; } }:

let

myOutput = nixpkgs.myPackage.outputs.defaultPackage.x86_64-linux;

importTree = tree.buildImportTree myOutput;

in

tree.printTree "" importTree importTree
```

* Replace myPackage with the actual package name or output you want to inspect. Running the example.nix script should print the import tree structure for the specified output.





* Flake CLI QuestionHow can I add a CLI functionality to a Nix flake?ChatGPTChatGPT To add command-line interface (CLI) functionality to a Nix flake, you can use the programs attribute in the flake's outputs section. Here's a step-by-step guide:

Create a directory structure: In your flake's directory, create a directory for your CLI program. For example:plaintextCopy code

my-flake/

├── flake.nix

└── src/

└── my-cli/

└── Main.hs

1. 

Write your CLI program: Write your CLI program in the Main.hs file. For example:haskellCopy code


* - src/my-cli/Main.hs

module Main where

import System.Environment

main :: IO ()

main = do

args <- getArgs

putStrLn $ "Hello, CLI! Args: " ++ show args

1. 

Update your flake.nix file: Update your flake.nix file to include the programs attribute. Here's an example:nixCopy code

{

description = "My Flake with CLI";

inputs = {

nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";

};

outputs = { self, nixpkgs }: {

defaultPackage.x86_64-linux = self.packages.haskellPackages.callPackage ./src/my-cli {};

programs.hello-cli = {

enable = true;

package = self.defaultPackage.x86_64-linux;

};

};

}

1. In this example, hello-cli is the name of your CLI program. The package attribute points to the Haskell package generated from your source code.

Build and run your CLI program: Run the following commands to build and run your CLI program:bashCopy code

nix build

./result/bin/hello-cli

1. Replace hello-cli with the name you specified in your programs attribute.
* Now, your Nix flake includes a CLI program that can be easily built and run. You can customize the programs attribute further based on your specific requirements. [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
* [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You What are the possible values for the atributes of the output of a flake?ChatGPTChatGPT In a Nix flake, the outputs attribute is used to specify the outputs that will be produced by the flake. Each output can have its own set of attributes. Here are some common attributes that can be used in the outputs section of a flake:

defaultPackage: This attribute specifies the default output for the flake. It usually points to the main result produced by the flake. For example:nixCopy code

outputs = { self, nixpkgs }: {

defaultPackage.x86_64-linux = self.packages.x86_64-linux.myPackage;

};

1. 

packages: This attribute is used to define one or more packages produced by the flake. Each package can have its own set of attributes like packagePrefix, meta, etc.nixCopy code

outputs = { self, nixpkgs }: {

packages.x86_64-linux.myPackage = self.packages.haskellPackages.myHaskellPackage;

};

1. 

programs: This attribute is used to define executable programs produced by the flake. It allows you to specify which packages to use and whether the program should be enabled or not.nixCopy code

outputs = { self, nixpkgs }: {

programs.myProgram = {

enable = true;

package = self.packages.x86_64-linux.myPackage;

};

};

1. 

documentation: This attribute is used to specify documentation generated by the flake. It can include attributes like html, man, etc.nixCopy code

outputs = { self, nixpkgs }: {

documentation.html = self.defaultPackage.x86_64-linux + "/share/doc/myPackage/html";

};

1. 

dev: This attribute is used to specify development files produced by the flake.nixCopy code

outputs = { self, nixpkgs }: {

dev = self.defaultPackage.x86_64-linux + "/lib/myPackage-dev";

};

1. 

These are just examples, and the actual attributes you use will depend on the nature of your flake and the kind of outputs you want to produce. The key is to define the outputs you need and customize their attributes accordingly. Always refer to the Nixpkgs manual or Nix documentation for the most up-to-date and detailed information on available attributes. [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
* [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You How could I print out a tree representation of the imports of a given output?ChatGPTChatGPT To print out a tree representation of the imports of a given output in a Nix flake, you can leverage the nixpkgs attribute set and the buildInputs attribute of the derivation for the specified output. You can create a recursive function to traverse the import tree and print it in a tree-like structure.Here's an example script in Nix that demonstrates how you can achieve this:nixCopy code


* Replace myPackage with the actual package name or output you want to inspect. Running the example.nix script should print the import tree structure for the specified output.




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
* $HOME* - from Betsy* - 
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

# Resources 
## Top General Resources
* [nix-community/awesome-nix](https://discourse.nixos.org/t/nix-community/awesome-nix$2
* [nix-community/awesome-nix](https://discourse.nixos.org/t/nix-community/awesome-nix$2
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
* [www.reddit.com](https://www.reddit.com/r/NixOS/)
* [/r/NixOS/](https://www.reddit.com/r/NixOS/)
* [nixos.org](https://nixos.org/)
* [nixos.org](https://nixos.org/)
* [nixcloud.io](https://nixcloud.io/tour/?id%3Dintroduction/nix)
* [A Tour of Nix](https://nixcloud.io/tour/?id%3Dintroduction/nix)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/introduction/)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/introduction/)
* [www.youtube.com](https://www.youtube.com/playlist?list%3DPLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)
* [Beginner's Guide to Nix](https://www.youtube.com/playlist?list%3DPLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)
* [ryantm.github.io](https://ryantm.github.io/nixpkgs/)
* [ryantm.github.io](https://ryantm.github.io/nixpkgs/)
* [mikeroyal/NixOS-Guide](https://discourse.nixos.org/t/mikeroyal/NixOS-Guide$2
* [mikeroyal/NixOS-Guide](https://discourse.nixos.org/t/mikeroyal/NixOS-Guide$2
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
* [mhwombat/nix-for-numbskulls](https://discourse.nixos.org/t/mhwombat/nix-for-numbskulls$2
* [mhwombat/nix-for-numbskulls](https://discourse.nixos.org/t/mhwombat/nix-for-numbskulls$2
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
* [NixOS/nix](https://discourse.nixos.org/t/NixOS/nix$2
* [NixOS/nix: Nix, the purely functional package manager](https://github.com/NixOS/nix)
* [nixos.org](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html)
* [nixos.org](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html)
* [nixos.wiki](https://nixos.wiki/wiki/Cheatsheet)
* [Cheatsheet - NixOS Wiki](https://nixos.wiki/wiki/Cheatsheet)
* [www.youtube.com](https://www.youtube.com/playlist?list%3DPLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs)
* [**Nixology - YouTube](https://www.youtube.com/playlist?list%3DPLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs)
* [www.youtube.com](https://www.youtube.com/playlist?list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [NixOS Playlist (Wil T)](https://www.youtube.com/playlist?list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [stephank.nl](https://stephank.nl/p/2020-06-01-a-nix-primer-by-a-newcomer.html)
* [Primer on Nix terminology](https://stephank.nl/p/2020-06-01-a-nix-primer-by-a-newcomer.html)
* [book.divnix.com](https://book.divnix.com/)
* [book.divnix.com](https://book.divnix.com/)
* [NixOS Wiki](https://nixos.wiki/)
* [www.youtube.com](https://www.youtube.com/@NixCon)
* [/@NixCon](https://www.youtube.com/@NixCon)
* [www.youtube.com](https://www.youtube.com/playlist?list%3DPL2Ftb1kbp85h9Mp23kykEkPe4As69hH_w)
* [NixCon 2023](https://www.youtube.com/playlist?list%3DPL2Ftb1kbp85h9Mp23kykEkPe4As69hH_w)
* [www.youtube.com](https://www.youtube.com/results?search_query%3Dnixcon%2B2023)
* [/results?search_query=nixcon+2023](https://www.youtube.com/results?search_query%3Dnixcon%2B2023)
* [media.ccc.de](https://media.ccc.de/c/nixcon2023)
* [media.ccc.de](https://media.ccc.de/c/nixcon2023)
* [www.youtube.com](https://www.youtube.com/@NixOS-Foundation/playlists)
* [/@NixOS-Foundation/playlists](https://www.youtube.com/@NixOS-Foundation/playlists)
* [nixos.org](https://nixos.org/manual/nixpkgs/stable/)
* [nixos.org](https://nixos.org/manual/nixpkgs/stable/)
* [NixOS/nixpkgs/](https://discourse.nixos.org/t/NixOS/nixpkgs/$2
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
## landscape build*     
* [blog.ielliott.io](https://blog.ielliott.io/nix-docs/mkDerivation.html#reference-inputs-installPhase)
* [canonical/landscape-client/releases/](https://discourse.nixos.org/t/canonical/landscape-client/releases/$2 If there isn't an existing Nix expression, you might need to create one manually. Create a Nix expression (.nix file) for landscape-client by specifying its source, dependencies, and build instructions
* - { lib, buildInputs, fetchurl }: lib.mkDerivation { pname = "landscape-client"; version = "your_version_number"; src = fetchurl { url = "<https://example.com/path/to/landscape-client.tar.gz>"; sha256 = "..."; }; buildInputs = [ /* dependencies, if any */ ]; }
*     Replace "<https://example.com/path/to/landscape-client.tar.gz>" with the actual URL of the landscape-client source tarball.
* - Build and Install: Save the Nix expression to a file (e.g., landscape-client.nix) and build and install it using the following command:
*     nix-env -f landscape-client.nix -i
* - Please note that the availability of landscape-client as a Nix package may change over time, and you should check for updates or changes in the Nix ecosystem or the NixOS community.
*     Always ensure that you trust the source from which you are fetching the software, especially when manually specifying URLs in Nix expressions. Additionally, be aware that my information might be outdated, and it's a good idea to check more recent sources for the latest information on NixOS packages.

## People / Orgs

## YouTube Channels*     
* [/@jonringer117](https://www.youtube.com/@jonringer117) (Nix channel)*     
* [www.tweag.io](https://www.tweag.io/)
* [Tweag - YouTube](https://www.youtube.com/@tweag) ****     
* [Determinate Systems](https://determinate.systems/)
* [Determinate Systems](https://determinate.systems/#blog)
* [nix.ug | Nix/NixOS User Group Directory](https://nix.ug/) *** → [www.chaos-darmstadt.de](https://www.chaos-darmstadt.de/hackspace/)
* [primamateria.github.io](https://primamateria.github.io/blog/)
* [numtide](https://discourse.nixos.org/t/numtide$2
* [nix-community](https://discourse.nixos.org/t/nix-community$2
* [matthewrhone.dev](https://matthewrhone.dev/) *[****Hi, I'm flyx.](https://flyx.org/)
* [srid.ca](https://srid.ca/-/all)
* [kamadorueda](https://discourse.nixos.org/t/kamadorueda$2
* [myme.no](https://myme.no/)
* [git.sr.ht](https://git.sr.ht/~trevdev/)
* [drakerossman.com](https://drakerossman.com/blog)
* [the-nix-way](https://discourse.nixos.org/t/the-nix-way$2 ******** [nix.ug | Nix/NixOS User Group Directory](https://nix.ug/)
* [cachix](https://discourse.nixos.org/t/cachix$2 ***** [drakerossman.com](https://drakerossman.com/blog)
* [figsoda](https://discourse.nixos.org/t/figsoda$2
* [nixcloud/](https://discourse.nixos.org/t/nixcloud/$2
* [Chris McDonough](https://www.youtube.com/playlist?list=PLa01scHy0YEnsvjvMNNk-JSvTdL_ivsml)
* [garnix.io](https://garnix.io/)
* - Next Steps*     
* [nixos.org](https://nixos.org/download.html#nixos-iso) try install on Darlene -> first remember password, then learn about nom-graphical installation for nixos
*     debug nixGL alacritty
*     debug nyxt under nix
*     set up Julia with Nix and make contributions -
*     make Julia Plots work with Nix -
*     install, understand, and use Nix
*     install NixOS on Allison, eventually also on Betsy
* - 1-Shot Reading* - cursor*     
* [please-help-fix-ugly-cursor-in-apps-installed-with-nix-env](https://discourse.nixos.org/t/please-help-fix-ugly-cursor-in-apps-installed-with-nix-env/11797)
* [NixOS/nixpkgs/issues/22652](https://discourse.nixos.org/t/NixOS/nixpkgs/issues/22652$2
* [NixOS/nixpkgs/issues/50344](https://discourse.nixos.org/t/NixOS/nixpkgs/issues/50344$2*     
* [CuBeRJAN/nix-problems](https://discourse.nixos.org/t/CuBeRJAN/nix-problems$2 ****     
* [Nix Flakes: an Introduction - Xe Iaso - Xe's Blog](https://xeiaso.net/blog/nix-flakes-1-2022-02-21/)
* [Development Roadmap, with Mention of 3.0 and 4.0](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
* [video](https://www.youtube.com/watch?v=h8hWX_aGGDc&t=2900s)
* [An introduction to the Nix ecosystem](https://ghedam.at/15490/so-tell-me-about-nix)
* [/r/voidlinux/comments/z8a727/how_do_you_guys_feel_about_flatpaks/](https://www.reddit.com/r/voidlinux/comments/z8a727/how_do_you_guys_feel_about_flatpaks/)
* [nixos.org](https://nixos.org/manual/nix/stable/command-ref/conf-file.html)
* [julianhofer.eu](https://julianhofer.eu/blog/01-silverblue-nix/#home-manager)
* [Authoring a Plugin — NixOps 2.0 documentation](https://nixops.readthedocs.io/en/latest/plugins/authoring.html)
* [Building a Nix Package | Karim's Blog](https://elatov.github.io/2022/01/building-a-nix-package/)
* [Dev Environment Setup With Nix on MacOS | Mathias Polligkeit](https://www.mathiaspolligkeit.com/dev/exploring-nix-on-macos/)
* [Development environment with nix-shell - NixOS Wiki](https://nixos.wiki/wiki/Development_environment_with_nix-shell)
* [Honestly - how painful was it to learn and get working? And what limitations/nig... | Hacker News](https://news.ycombinator.com/item?id=27369920)
* [(3) How do i install a package from source? : NixOS](https://www.reddit.com/r/NixOS/comments/4enwa2/how_do_i_install_a_package_from_source/)
* [klaeufer/klaeufer/wiki/Nix-package-manager](https://discourse.nixos.org/t/klaeufer/klaeufer/wiki/Nix-package-manager$2
* [haskell-nix-vim](https://www.tpflug.me/2019/01/14/haskell-nix-vim/)
* [Guix seems interesting but I almost stopped reading when I read "Nix". For all t... | Hacker News](https://news.ycombinator.com/item?id=18908591)
* [Nix package manager · klaeufer/klaeufer Wiki](https://github.com/klaeufer/klaeufer/wiki/Nix-package-manager)
* [ShipIt! Presents: How Shopify Uses Nix](https://shopify.engineering/shipit-presents-how-shopify-uses-nix)
* [Hacking Your First Package — nix-tutorial documentation](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/first-package.html)
* [How I Nix](https://eevie.ro/posts/2022-01-24-how-i-nix.html)
* [My post on Reddit - Installation error on Ubuntu 22.04: ".../libnixstore.so: undefined symbol: sqlite3_error_offset"](https://www.reddit.com/r/Nix/comments/117m3nw/installation_error_on_ubuntu_2204_libnixstoreso/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [How to install package from github? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-install-package-from-github/444)
* [NixOS: build your system on Github actions! • gvolpe's blog](https://gvolpe.com/blog/nixos-binary-cache-ci/)
* [Quick Start - Nix Reference Manual](https://nixos.org/manual/nix/stable/quick-start.html)
* [Nix language basics — nix.dev documentation](https://nix.dev/tutorials/nix-language)
* [nix on ubuntu getting started - Google Search](https://www.google.com/search?client=firefox-b-d&q=nix+on+ubuntu+getting+started)
* [NixOS Package (Install/Uninstall) Guide | Matthew Rhone dot Dev](https://matthewrhone.dev/nixos-package-guide)
* [(3) Arch vs NixOS : linuxquestions](https://www.reddit.com/r/linuxquestions/comments/ryr45s/arch_vs_nixos/)
* [Nix's very own graphical UI - Matej Cotman's Blog](https://blog.matejc.com/blogs/myblog/nixs-very-own-graphical-ui)
* [Nix-ify your environment - Jon Simpson](https://jonsimpson.ca/nix-ify-your-environment/)
* [NixOs native flake deployment with LUKS drive encryption and LVM | by Ion Mudreac | Medium](https://mudrii.medium.com/nixos-native-flake-deployment-with-luks-drive-encryption-and-lvm-b7f3738b71ca)
* [nixos.org](https://nixos.org/manual/nixos/stable/index.html#sec-installation)
* [security - How secure are the default repositories of Fedora, CentOS, and Debian? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/312410/how-secure-are-the-default-repositories-of-fedora-centos-and-debian)
* [> Main reason for leaving was that Nix package maintainers have to heavily patch... | Hacker News](https://news.ycombinator.com/item?id=25030546)
* [(5) Is NixOS fundamentally a more secure OS? : NixOS](https://www.reddit.com/r/NixOS/comments/xbjei3/is_nixos_fundamentally_a_more_secure_os/)
* [nixpkgs/4.x.nix at nixos-22.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-22.11/pkgs/development/libraries/opencv/4.x.nix#L371)
* [nixpkgs/default.nix at release-22.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/release-22.11/pkgs/applications/window-managers/awesome/default.nix) Nix as server: [news.ycombinator.com](https://news.ycombinator.com/item?id=12250104)
* [security - Which linux distro's package repositories are secure and which are not? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/16251/which-linux-distros-package-repositories-are-secure-and-which-are-not?rq=1)
* [(2) Who uses NixOS? Who are you people? (And good-bye) : NixOS](https://www.reddit.com/r/NixOS/comments/rctpu9/who_uses_nixos_who_are_you_people_and_goodbye/)
* [Installation error on Ubuntu 22.04: ".../libnixstore.so: undefined symbol: sqlite3_error_offset" : Nix](https://www.reddit.com/r/Nix/comments/117m3nw/installation_error_on_ubuntu_2204_libnixstoreso/)
* [Filesystem Hierarchy Standard - NixOS4Noobs](https://jorel.dev/NixOS4Noobs/fhs.html)
* [news/open-source-und-einstiegshuerden-macht-nix-2207-166501.html](https://www.golem.de/news/open-source-und-einstiegshuerden-macht-nix-2207-166501.html)
* [srid.ca](https://srid.ca/rust-nix)
* [gutier.io](https://gutier.io/post/development-using-rust-with-nix/)
* [godot-rust.github.io](https://godot-rust.github.io/book/gdnative/recipes/nix-build-system.html)
* [rust-in-nix-discussion-thread](https://discourse.nixos.org/t/rust-in-nix-discussion-thread/5092/16)
* [Building reproducible Development environment | by Ion Mudreac | Medium](https://mudrii.medium.com/building-reproducible-development-environment-b1d4fb51a302)
* [blog.ocharles.org.uk](https://blog.ocharles.org.uk/blog/posts/2014-02-04-how-i-develop-with-nixos.html)
* [/r/Nix/comments/12yg5tj/eli5_how_can_i_upgrade_a_package/](https://www.reddit.com/r/Nix/comments/12yg5tj/eli5_how_can_i_upgrade_a_package/)
* [www.linux-community.de](https://www.linux-community.de/ausgaben/linuxuser/2018/08/nix-neues/)
* [Is anyone working on a GUI tool to manage packages? - NixOS Discourse](https://discourse.nixos.org/t/is-anyone-working-on-a-gui-tool-to-manage-packages/5540)
* [/distribution-specific-guides/NixOS/nixos-configuration](https://www.ordinatechnic.com/distribution-specific-guides/NixOS/nixos-configuration) *** [jonathanlorimer.dev](https://jonathanlorimer.dev/posts/nix-thesis.html)
* [where-did-you-get-stuck-in-the-nix-ecosystem-tell-me-your-story](https://discourse.nixos.org/t/where-did-you-get-stuck-in-the-nix-ecosystem-tell-me-your-story/31415)
* [Nix and NixOS for DevOps - inovex GmbH](https://www.inovex.de/de/blog/nix-and-nixos-for-devops/)
* [Nix: An idea whose time has come | Hacker News](https://news.ycombinator.com/item?id=30384121)
* [NixOS interesting, but fatal flaws](https://www.youtube.com/watch?v=x6ip1cVVr7E) (good comments)
* [2023-07-31 Documentation team meeting notes #68 - Development / Documentation - NixOS Discourse](https://discourse.nixos.org/t/2023-07-31-documentation-team-meeting-notes-68/31127/2)
* [myme.no - NixOS: The Ultimate Dev Environment?](https://myme.no/posts/2022-01-16-nixos-the-ultimate-dev-environment.html)
* [How to upgrade packages - Guides - NixOS Discourse](https://discourse.nixos.org/t/how-to-upgrade-packages/6151/2)
* [Devenv.sh: Fast and reproducible developer environments using Nix | Hacker News](https://news.ycombinator.com/item?id=33655542)
* [christitus.com](https://christitus.com/nixos-explained/)
* [discourse.nixos.org](https://discourse.nixos.org/search?q=learning) journey working group meeting notes [/r/NixOS/comments/r8bj9l/aoc_2021_using_nix/](https://www.reddit.com/r/NixOS/comments/r8bj9l/aoc_2021_using_nix/)
* [chetanbhasin.com](https://chetanbhasin.com/articles) 2 on Nix [/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/) ***** [/r/unixporn/comments/15co6ns/hyprland_nixos_catppuccin_for_all_apps/](https://www.reddit.com/r/unixporn/comments/15co6ns/hyprland_nixos_catppuccin_for_all_apps/)
* [fluffynukeit.com](https://fluffynukeit.com/installing-essential-software-in-nixos/)
* [1. Get Nix running on your system](https://zero-to-nix.com/start/install)
* [chetanbhasin.com](https://chetanbhasin.com/articles/zero-to-nix-everything-i-know-about-nix-nixos)
* [gist.github.com](https://gist.github.com/nat-418/d76586da7a5d113ab90578ed56069509)
* [itsfoss.com](https://itsfoss.com/why-use-nixos/)
* [experimental-does-not-mean-unstable-detsyss-perspective-on-nix-flakes](https://discourse.nixos.org/t/experimental-does-not-mean-unstable-detsyss-perspective-on-nix-flakes/32703)
* [www.linux-magazine.com](https://www.linux-magazine.com/Issues/2021/248/Nix-and-NixOS)
* [introducing-flakehub](https://discourse.nixos.org/t/introducing-flakehub/32044)
* [nix-community-survey-2023-results](https://discourse.nixos.org/t/nix-community-survey-2023-results/33124)
* [determinate.systems](https://determinate.systems/posts/experimental-does-not-mean-unstable)
* [samuel.dionne-riel.com](https://samuel.dionne-riel.com/blog/2023/09/06/flakes-is-an-experiment-that-did-too-much-at-once.html) read: [news.ycombinator.com](https://news.ycombinator.com/item?id=32374113)
* - Home Manager* - hm and ricing*     
* [danth.github.io](https://danth.github.io/stylix/) ***     
* [Nix-colors Guide | Declaratively Rice Your Linux Desktop](https://www.youtube.com/watch?v=jO2o0IN0LPE&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D) ***     
* [SenchoPens/base16.nix](https://discourse.nixos.org/t/SenchoPens/base16.nix$2 ***     
* [Misterio77/nix-colors](https://discourse.nixos.org/t/Misterio77/nix-colors$2 ***     
* [rycee.gitlab.io](https://rycee.gitlab.io/home-manager/)
* [getfleek.dev](https://getfleek.dev/)
* [nix-community/home-manager](https://discourse.nixos.org/t/nix-community/home-manager$2
* [Home Manager manual](https://nix-community.github.io/home-manager/)
* [mipmip.github.io](https://mipmip.github.io/home-manager-option-search/) → [github.com](https://github.com/mipmip/home-manager-option-search) contribute if possible [Original Home Manager announcement](https://rycee.net/posts/2017-07-02-manage-your-home-with-nix.html)
* [Homebrew to Home Manager](https://lucperkins.dev/blog/home-manager/)
* [Your home in Nix](https://hugoreeves.com/posts/2019/nix-home/)
* [protex/home-manager.nvim](https://discourse.nixos.org/t/protex/home-manager.nvim$2
* [Interesting template to get started with Home Manager](https://github.com/ryantm/home-manager-template)
* [Burke Libbey Nixology series (4 videos related to Home Manager)](https://www.youtube.com/watch?v=IUsQt4NRCnc&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=7)
* [Managing dotfiles with Nix - Alex Pearce](https://alexpearce.me/2021/07/managing-dotfiles-with-nix/)
* [http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)* - config*     
* [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&t=397s)
* [yrashk/nix-home: Nix Home Manager](https://github.com/yrashk/nix-home)*     
* [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=10)
* [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=11)
* [Home Manager Manual](https://nix-community.github.io/home-manager/)
* [NixOS Series #5: How to set up home-manager on NixOS?](https://itsfoss.com/home-manager-nixos/)
* [Home Manager - NixOS Wiki](https://nixos.wiki/wiki/Home_Manager)
* [Home Manager - NixOS Wiki](https://nixos.wiki/wiki/Home_Manager#Configuration)
* [Home Manager Manual](https://nix-community.github.io/home-manager/index.html)
* [Home Manager Manual](https://nix-community.github.io/home-manager/) can I use chezmoi together with Home Manager? or just for non-Nix software? [Can't get basic nix home manager setup working - Stack Overflow](https://stackoverflow.com/questions/74665483/cant-get-basic-nix-home-manager-setup-working)
* [ghedam.at](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [Home Manager Manual](https://rycee.gitlab.io/home-manager/index.html)
* [akirak/nix-config: NixOS + home-manager + Emacs configuration flake](https://github.com/akirak/nix-config) *[*danielsiepmann/nixpkgs: My own nixpkgs (for nix + home-manager). Used for nix on my current Ubuntu Setup. Lives inside ~/.config/nixpkgs - nixpkgs - Forgejo of Daniel Siepmann](https://git.daniel-siepmann.de/danielsiepmann/nixpkgs)
* [**nix-home-manager-config/home.nix at main · GustavoPeredo/nix-home-manager-config](https://github.com/GustavoPeredo/nix-home-manager-config/blob/main/home.nix)
* [02 - Channels and Home Manager | Nix Series - YouTube](https://www.youtube.com/watch?v=494zlooD7Tg)
* [davidak/nixos-config: NixOS configurations for server, desktop and mobile systems, including user specific config using Home Manager - nixos-config - Codeberg.org](https://codeberg.org/davidak/nixos-config)
* [Getting Started with home-manager - YouTube](https://www.youtube.com/watch?v=OgUvDXxHlLs)
* [**Declarative management of dotfiles with Nix and Home Manager](https://www.bekk.christmas/post/2021/16/dotfiles-with-nix-and-home-manager)
* [yorodm/nixos-home: My home manager config](https://github.com/yorodm/nixos-home)
* [HugoReeves/nix-home: A Nix Home Manager setup. I've now moved to a new configuration system at hugoreeves/elemental](https://github.com/HugoReeves/nix-home)
* [Daniel Siepmann: Migrating to nix home-manager](https://daniel-siepmann.de/migrating-to-nix-home-manager.html)
* [example of how to configure zsh? · Issue #989 · nix-community/home-manager](https://github.com/nix-community/home-manager/issues/989)
* [FruitieX/home.nix: Home Manager configuration files](https://github.com/FruitieX/home.nix)
* [Flake based Home Manager cannot find home.nix - NixOS Discourse](https://discourse.nixos.org/t/flake-based-home-manager-cannot-find-home-nix/18356)
* [Nix Friday - Home manager - YouTube](https://www.youtube.com/watch?v=2emuPcomQ98)
* [Move keyboard settings to home-manager · edde4a11d5 - localhost - code.dumpstack.io](https://code.dumpstack.io/infra/localhost/commit/edde4a11d52394d87c9bbd61dcfdd172a7ea1de0#diff-dd9078c2c684f713290b9f17802a6d38970bea46)
* [home-manager/zathura.nix at dd99675ee81fef051809bc87d67eb07f5ba022e8 · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/dd99675ee81fef051809bc87d67eb07f5ba022e8/modules/programs/zathura.nix)
* [Nimor111/home.nix: Personal home manager configuration for non-nixos systems](https://github.com/Nimor111/home.nix)
* [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager#words-of-warning)
* [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* [nix home-manager: sign commits using ssh :: Nelson Alex Jeppesen — lowercase haven](https://jeppesen.io/git-commit-sign-nix-home-manager-ssh/)
* [nix-config: My pretty nice NixOS/home-manager configuration](https://sr.ht/~misterio/nix-config/)
* [request: bato module · Issue #3582 · nix-community/home-manager](https://github.com/nix-community/home-manager/issues/3582)
* [NixOS Home Manager for multi-user on NIX flake Installation and Configuration | by Ion Mudreac | Medium](https://mudrii.medium.com/nixos-home-manager-on-native-nix-flake-installation-and-configuration-22d018654f0c)
* [Tutorial: Getting started with Home Manager for Nix | Mattia Gheda](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [akirak/home.nix: My user configuration files written in Nix](https://github.com/akirak/home.nix)
* [flake_inferno/home.nix at 4f3effcf938c564680d8d9b57e5715b77c9d20ad · PmicroTO/flake_inferno](https://github.com/PmicroTO/flake_inferno/blob/4f3effcf938c564680d8d9b57e5715b77c9d20ad/home/home.nix)
* [nixos-home/misc.nix at 7c5410e70f6f6db8d7a0a93a20bfd8be079b25f6 · RaitoBezarius/nixos-home](https://github.com/RaitoBezarius/nixos-home/blob/7c5410e70f6f6db8d7a0a93a20bfd8be079b25f6/misc.nix)
* [**my-nix-config/home.nix at master · SCOTT-HAMILTON/my-nix-config](https://github.com/SCOTT-HAMILTON/my-nix-config/blob/master/home.nix)
* [dotfiles/home.nix at addf391401abc70eb97566f9ccdacbe6e6f96cd4 · bangn/dotfiles](https://github.com/bangn/dotfiles/blob/addf391401abc70eb97566f9ccdacbe6e6f96cd4/nixpkgs/home.nix)
* [Manage your macOS environment with nix-darwin + Home Manager - YouTube](https://www.youtube.com/watch?v=r0Y7s1sRSUY)
* [Setting up Nix on macOS from scratch (incl. dotfiles via home-manager and Nix flakes) - YouTube](https://www.youtube.com/watch?v=1dzgVkgQ5mE)
* [home manager template - YouTube](https://www.youtube.com/watch?v=RnIl_vqxnXk)
* [home-manager/zathura.nix at dd99675ee81fef051809bc87d67eb07f5ba022e8 · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/dd99675ee81fef051809bc87d67eb07f5ba022e8/modules/programs/zathura.nix)
* [Home Manager - Option Search](https://mipmip.github.io/home-manager-option-search/)
* [nix-vs-language-package-manager](https://discourse.nixos.org/t/nix-vs-language-package-manager/7099/3)
* [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://youtu.be/AGVXJ-TIv3Y)
* [ariya.io](https://ariya.io/2020/05/nix-package-manager-on-ubuntu-or-debian)
* [I was WRONG! This is the BEST Package Manager. - YouTube](https://www.youtube.com/watch?v=Ty8C2B910EI)
* [Th0rgal/horus-nix-home](https://discourse.nixos.org/t/Th0rgal/horus-nix-home$2
* [tars0x9752/home](https://discourse.nixos.org/t/tars0x9752/home$2 (nix)
* [Appendix A. Configuration Options](https://rycee.gitlab.io/home-manager/options.html)
* [Your home in Nix (dotfile management) - Hugo Reeves](https://hugoreeves.com/posts/2019/nix-home/)
* [/results?search_query=nix+home+manager](https://www.youtube.com/results?search_query=nix+home+manager)
* [hhoeflin.github.io](https://hhoeflin.github.io/blog/devtools/using_nix/)
* [continue from here: Search · home.homeDirectory](https://github.com/search?o=desc&p=10&q=home.homeDirectory&s=indexed&type=Code)
* [Nix home-manager tutorial: Declare your entire home directory](https://www.youtube.com/watch?v=FcC2dzecovw&t=187s&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Neovim and Nix home-manager: Supercharge Your Development Environment](https://www.youtube.com/watch?v=YZAnJ0rwREA&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Custom NIX Home-Manager Modules For Personalized Setup](https://www.youtube.com/watch?v=EUiXzX7nthY&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Nix flakes explained](https://www.youtube.com/watch?v=S3VBi6kHw5c&t=3s&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Nix Home Manager Tutorial](https://www.youtube.com/watch?v=utoj6annRK0&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)* - Questions / Ideas
*     → need to install themes in Nix as well → how to install themes in Nix? Where are my themes anyway?
*     → use lxappearances (see [here](https://www.reddit.com/r/NixOS/comments/6j9zlj/how_to_set_up_themes_in_nixos/))
*     → [search.nixos.org](https://search.nixos.org/packages?channel=22.11&from=0&size=50&sort=relevance&type=packages&query=gnome+tweaks)
* - Nix with Specific Software*     
* [matrix.ai](https://matrix.ai/blog/developing-with-nix/)
* [Nixos and Hyprland - Best Match Ever](https://www.youtube.com/watch?v=61wGzIv12Ds) ***** [nixos.wiki](https://nixos.wiki/wiki/Visual_Studio_Code)
* [CUDA - NixOS Wiki](https://nixos.wiki/wiki/CUDA)
* [Nvidia - NixOS Wiki](https://nixos.wiki/wiki/Nvidia)
* [flyx.org](https://flyx.org/nix-flakes-latex/)
* [nixos.wiki](https://nixos.wiki/wiki/TexLive)
* [/search?client=firefox-b-d&q=nixOS+on+tuxedo+with+gpu](https://www.google.com/search?client=firefox-b-d&q=nixOS+on+tuxedo+with+gpu)
* [discourse.julialang.org](https://discourse.julialang.org/t/build-julia-on-nixos/35129/26)
* [get-going-with-julia-on-nixos-in-under-an-hour](https://discourse.nixos.org/t/get-going-with-julia-on-nixos-in-under-an-hour/12530)
* [including-latest-julia-in-configure-nix](https://discourse.nixos.org/t/including-latest-julia-in-configure-nix/8895)
* [i3 on nixos → collect links](https://www.google.com/search?q=nixos%20i3wm&ie=utf-8&oe=utf-8&client=firefox-b-m)
* [nixos.wiki](https://nixos.wiki/wiki/I3)
* [nixos.wiki](https://nixos.wiki/wiki/NixOS_Containers)
* [Nixpkgs with OpenGL on non-NixOS - NixOS Wiki](https://nixos.wiki/wiki/Nixpkgs_with_OpenGL_on_non-NixOS)
* [NixOS Search - Packages](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=flutter) flutter [NixOS Search - Packages](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=android) android [nixGL update for nvidia 530 drivers - Google Search](https://www.google.com/search?client=firefox-b-d&q=nixGL+update+for+nvidia+530+drivers)
* [nixGL/all.nix at main · guibou/nixGL · GitHub](https://github.com/guibou/nixGL/blob/main/all.nix)
* [(3) Flutter on NixOS : NixOS](https://www.reddit.com/r/NixOS/comments/oecxb9/flutter_on_nixos/)
* [search.nixos.org](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=git+hook)
* [Update of nixGL: more robust OpenGL support for intel / nvidia / nvidia (optimus) on non-nixOS distribution. : NixOS](https://www.reddit.com/r/NixOS/comments/7y9t0q/update_of_nixgl_more_robust_opengl_support_for/)
* [devenv.sh](https://devenv.sh/pre-commit-hooks/)
* [nixpkgs/flutter.nix at cfe96dbfce8bd62dcd4a8ad62cb79dec140b1a62 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/cfe96dbfce8bd62dcd4a8ad62cb79dec140b1a62/pkgs/development/compilers/flutter/flutter.nix#L168)
* [Anyone managed to install flutter >=3.0.0 on NixOS? - Help - NixOS Discourse](https://discourse.nixos.org/t/anyone-managed-to-install-flutter-3-0-0-on-nixos/20542)
* [babariviere/flutter-nix-hello-world: Demonstration on how to use flutter with Nix](https://github.com/babariviere/flutter-nix-hello-world)
* [Building Flutter Web apps on NixOS - Help - NixOS Discourse](https://discourse.nixos.org/t/building-flutter-web-apps-on-nixos/23151)
* [Android development on NixOS - Specific Solutions](https://specific.solutions.limited/projects/hanging-plotter/android-environment.md)
* [Flutter Pros & Cons for Mobile App Development | Nix Solutions Service](https://nixsolutions-service.com/fluttersdk/)
* [(4) Share your Data Science stack in Nixpkgs : NixOS](https://www.reddit.com/r/NixOS/comments/z95r4p/share_your_data_science_stack_in_nixpkgs/) *[**Exploring Nix Flakes: Build LaTeX Documents Reproducibly](https://flyx.org/nix-flakes-latex/)
* [Podman - NixOS Wiki](https://nixos.wiki/wiki/Podman)
* [Docker - NixOS Wiki](https://nixos.wiki/wiki/Docker) android studio install on nixos - Google Search [galowicz.de](https://galowicz.de/2023/03/13/quick-vms-with-nixos/)
* [nixpkgs/pkgs/test/cuda/cuda-library-samples/generic.nix at 634141959076a8ab69ca2cca0f266852256d79ee · NixOS/nixpkgs · GitHub](https://github.com/NixOS/nixpkgs/blob/634141959076a8ab69ca2cca0f266852256d79ee/pkgs/test/cuda/cuda-library-samples/generic.nix)
* [rgri/tex2nix](https://discourse.nixos.org/t/rgri/tex2nix$2
* - CUDA*     
* [NixOS/nixpkgs/blob/master/pkgs/test/cuda/cuda-library-samples/generic.nix](https://discourse.nixos.org/t/NixOS/nixpkgs/blob/master/pkgs/test/cuda/cuda-library-samples/generic.nix$2
* [nixos.wiki](https://nixos.wiki/wiki/CUDA)
* [NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/tensorflow/default.nix#L445](https://discourse.nixos.org/t/NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/tensorflow/default.nix#L445$2
* [app.cachix.org](https://app.cachix.org/cache/cuda-maintainers#pull)
* [tensorflow-gpu-keras-in-a-nix-shell](https://discourse.nixos.org/t/tensorflow-gpu-keras-in-a-nix-shell/8692)
* - Podcasts*     
* [Podcast: Into the Nix Ecosystem](https://open.spotify.com/episode/5jPtQqG5LO9zBV1HtWkOgX?si=n4FavA9wTVylWPdajA32qA&nd=1)
* [focusonlinux.podigee.io](https://focusonlinux.podigee.io/54-die-fabelhafte-welt-von-nix) → [blog.binaergewitter.de](https://blog.binaergewitter.de/2017/09/24/binaergewitter-spezial-7-nixos)
* - Flakes*     
* [Nix Flakes, Part 1: An introduction and tutorial - Tweag](https://www.tweag.io/blog/2020-05-25-flakes/)
* [nixos.wiki](https://nixos.wiki/wiki/Flakes)
* [blog/2020-05-25-flakes/](https://www.tweag.io/blog/2020-05-25-flakes/)
* - Contrib Ideas
*     CONTRIB - add guake to nixpkgs*     
* [NixOS/nixpkgs/issues/132206](https://discourse.nixos.org/t/NixOS/nixpkgs/issues/132206$2 fork and clone nixpkgs and home-manager [Nixpkgs/Contributing - NixOS Wiki](https://nixos.wiki/wiki/Nixpkgs/Contributing)
* [nix.dev](https://nix.dev/) → contribute to? [/search?client=firefox-b-d&q=This+Month+in+Nix+Docs](https://www.google.com/search?client=firefox-b-d&q=This+Month+in+Nix+Docs) createformatter, TreeSitter syntax highlihter, etc. for .drv files
* - Poetry, Python*     
* [Python - NixOS Wiki](https://nixos.wiki/wiki/Python)
* [FRidh/python-on-nix/blob/master/tutorial.md](https://discourse.nixos.org/t/FRidh/python-on-nix/blob/master/tutorial.md$2
* [blog/2020-08-12-poetry2nix/](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [video](https://www.youtube.com/watch?v=TbIHRHy7_JM&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [walkthrough 1](https://www.youtube.com/watch?v=XfqJulSAPBQ&t=483s&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [walkthrough 2](https://www.youtube.com/watch?v=XzxvChwMRVY&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [datakurre.pandala.org](https://datakurre.pandala.org/2015/10/nix-for-python-developers.html/)
* [A sack full of angry snakes: Taming your python dependencies with Nix - YouTube](https://www.youtube.com/watch?v=8ng4v1g5q7s)
* [Using Nix for Repeatable Python Environments | SciPy 2019 | Daniel Wheeler](https://www.youtube.com/watch?app=desktop&v=USDbjmxEZ_I)
* [Help with poetry2nix - Help - NixOS Discourse](https://discourse.nixos.org/t/help-with-poetry2nix/21799)
* [toraritte.github.io](https://toraritte.github.io/poetry-intro/)
* [python-development-with-poetry-with-nix-supplying-python](https://discourse.nixos.org/t/python-development-with-poetry-with-nix-supplying-python/14736)
* [hackmd.io](https://hackmd.io/ipS6HU_zR-yqChEvRYlnyw?view) Python Packaging Draft [Developing Python with Poetry & Poetry2nix: Reproducible flexible Python environments - Tweag](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [nix.dev](https://nix.dev/recipes/python-environment)
* [How does poetry2nix work? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-does-poetry2nix-work/17309)
* [Package and deploy Python apps faster with Poetry and Nix - YouTube](https://www.youtube.com/watch?v=TbIHRHy7_JM)
* [haskell - Need to build specific version of pandoc into poetry2nix nixos flake - Stack Overflow](https://stackoverflow.com/questions/69873273/need-to-build-specific-version-of-pandoc-into-poetry2nix-nixos-flake)
* [Nixpkgs - Python packaging, and development workflow. - YouTube](https://www.youtube.com/watch?v=jXd-hkP4xnU)
* [Using Nix for Repeatable Python Environments | SciPy 2019 | Daniel Wheeler Enthought Enthought • • 2680 visualizaciones hace 3 años](https://www.youtube.com/watch?v=USDbjmxEZ_I)
* [Python - NixOS Wiki](https://nixos.wiki/wiki/Python)
* [How to Learn Nix, Part 39: How to install Python](https://ianthehenry.com/posts/how-to-learn-nix/python3-alpha/)
* [johbo/pip2nix: Freeze pip-installable packages into Nix expressions [maintainer=@datakurre]](https://github.com/johbo/pip2nix)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix)
* [configs-mirror/pyenv.nix at master · stites/configs-mirror](https://github.com/stites/configs-mirror/blob/master/programs/bash/pyenv.nix)
* [Python | nixpkgs https://ryantm.github.io/nixpkgs/languages-frameworks/python/](https://ryantm.github.io/nixpkgs/languages-frameworks/python/) python nix [nix-community.github.io](https://nix-community.github.io/dream2nix/guides/getting-started-python.html)
* [FRidh/python-on-nix/blob/master/tutorial.md](https://discourse.nixos.org/t/FRidh/python-on-nix/blob/master/tutorial.md$2
* [pip on NixOS (Reddit)](https://www.reddit.com/r/NixOS/comments/121vv4r/how_do_i_use_pip_on_nixos/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [nix-community/poetry2nix](https://discourse.nixos.org/t/nix-community/poetry2nix$2
* [rebeccaskinner.net](https://rebeccaskinner.net/posts/2018-05-09-python-and-nix.html)
* [Python | nixpkgs](https://ryantm.github.io/nixpkgs/languages-frameworks/python/)
* [Python | nixpkgs](https://ryantm.github.io/nixpkgs/languages-frameworks/python/#python)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix)
* [tfmoraes/invesalius3_nix_develop](https://github.com/tfmoraes/invesalius3_nix_develop)
* [nixpkgs/pkgs/development/python-modules/torch/default.nix at nixos-23.05 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/torch/default.nix#L414)
* - VSCode*     
* [pietdevries94/nix-vscode-extensions](https://github.com/pietdevries94/nix-vscode-extensions)
* [Search results - Nix | Visual Studio Code , Visual Studio Marketplace](https://marketplace.visualstudio.com/search?term=Nix&target=VSCode&category=All%20categories&sortBy=Relevance)
* [Visual Studio Code - NixOS Wiki](https://nixos.wiki/wiki/Visual_Studio_Code)
* - Nix and Neovim - vixnim, (moshavim, VitaeVim)* - Configs*     
* [Neovim Configuration in Nix: Unpacking Multiple Approaches](https://www.youtube.com/watch?v=i68c6vZkSXc&pp=ygUPbmVvdmltIG9uIG5peG9z)
* [Neovim and Nix home-manager: Supercharge Your Development Environment](https://www.youtube.com/watch?v=YZAnJ0rwREA&pp=ygUPbmVvdmltIG9uIG5peG9z)
* [Configuración completa de Neovim en NixOS (Treesitter, lsp nativo y más)](https://www.youtube.com/watch?v=rUvjkBuKua4&pp=ugMICgJlcxABGAHKBQ9uZW92aW0gb24gbml4b3M%3D)
* [mrcjkb/kickstart-nix.nvim](https://discourse.nixos.org/t/mrcjkb/kickstart-nix.nvim$2*     
* [Manage Neovim plugins (and more!) with Nix and Home Manager](https://gist.github.com/nat-418/d76586da7a5d113ab90578ed56069509#manage-neovim-plugins-and-more-with-nix-and-home-manager)
* [From init.lua to default.nix](https://gist.github.com/nat-418/493d40b807132d2643a7058188bff1ca#from-initlua-to-defaultnix)
* [mrcjkb/kickstart-nix.nvim](https://discourse.nixos.org/t/mrcjkb/kickstart-nix.nvim$2 *****
* [pta2002/nixvim](https://discourse.nixos.org/t/pta2002/nixvim$2
* [jamespwilliams/nde](https://discourse.nixos.org/t/jamespwilliams/nde$2
* [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* [zachcoyle/neovitality](https://discourse.nixos.org/t/zachcoyle/neovitality$2
* [vi-tality/neovitality](https://discourse.nixos.org/t/vi-tality/neovitality$2
* [jordanisaacs/neovim-flake](https://discourse.nixos.org/t/jordanisaacs/neovim-flake$2
* [zmre/pwnvim](https://discourse.nixos.org/t/zmre/pwnvim$2
* [metis-os/pwnvim](https://discourse.nixos.org/t/metis-os/pwnvim$2
* [badele/vide](https://discourse.nixos.org/t/badele/vide$2
* [jordanisaacs.github.io](https://jordanisaacs.github.io/neovim-flake/) ***** [jordanisaacs/neovim-flake](https://discourse.nixos.org/t/jordanisaacs/neovim-flake$2
* [primamateria.github.io](https://primamateria.github.io/blog/neovim-nix-update/)
* [syberant/nix-neovim](https://discourse.nixos.org/t/syberant/nix-neovim$2
* [/r/pwnvim](https://www.libhunt.com/r/pwnvim)
* [miknikif/nvim/tree/main](https://discourse.nixos.org/t/miknikif/nvim/tree/main$2
* [NixVim options](https://pta2002.github.io/nixvim/) - now deleted → [web.archive.org](https://web.archive.org/web/20230621122454/https://pta2002.github.io/nixvim)
* [NixVim options](https://pta2002.github.io/nixvim/#_plugins_neo_tree_window_popup_size_width) (plugins) - now deleted → [pta2002/nixvim: Configure Neovim with Nix!](https://github.com/pta2002/nixvim)
* [/r/neovim/comments/15ev1ce/on_nix_install_lsp_in_nix_config_or_modify/](https://www.reddit.com/r/neovim/comments/15ev1ce/on_nix_install_lsp_in_nix_config_or_modify/)
* [badele/nix-homelab/tree/main](https://discourse.nixos.org/t/badele/nix-homelab/tree/main$2
* [reddit.com](https://reddit.com/r/neovim/s/pT20Q8IUDR)
* [badele/nix-homelab/blob/main/nix/home-manager/features/term/editor/nvim/default.nix](https://discourse.nixos.org/t/badele/nix-homelab/blob/main/nix/home-manager/features/term/editor/nvim/default.nix$2
* [framagit.org](https://framagit.org/vegaelle/nix-nvim)
* [badele/vide](https://discourse.nixos.org/t/badele/vide$2 ***
* [NixNeovim/NixNeovim](https://discourse.nixos.org/t/NixNeovim/NixNeovim$2
* [nixneovim.github.io](https://nixneovim.github.io/NixNeovim/index.html)
* [pta2002/nixvim](https://discourse.nixos.org/t/pta2002/nixvim$2
* [nix-community.github.io](https://nix-community.github.io/nixvim/)
* [syberant/nix-neovim](https://discourse.nixos.org/t/syberant/nix-neovim$2
* [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* [nixos.wiki](https://nixos.wiki/wiki/Neovim)
* [primamateria.github.io](https://primamateria.github.io/blog/neovim-nix/)
* [Full configuration of Neovim on NixOS](https://www.youtube.com/watch?v=rUvjkBuKua4)
* [development environment with nix and nvim - Google Search](https://www.google.com/search?client=firefox-b-d&q=development+environment+with+nix+and+nvim)
* [Haskell, Nix and Vim: Getting started · tpflug](https://www.tpflug.me/2019/01/14/haskell-nix-vim/)
* [primamateria.github.io](https://primamateria.github.io/blog/)
* [Run Neovim and Zig in Nix Development Shell on Windows 11](https://www.youtube.com/watch?v=F4q72mGjYXA)
* [NotAShelf/neovim-flake](https://discourse.nixos.org/t/NotAShelf/neovim-flake$2
* [notashelf.github.io](https://notashelf.github.io/neovim-flake/)
* [nix-community/neovim-nightly-overlay](https://discourse.nixos.org/t/nix-community/neovim-nightly-overlay$2
* [jamespwilliams/nde](https://discourse.nixos.org/t/jamespwilliams/nde$2
* [andreadev-it/nvim-personal-config](https://discourse.nixos.org/t/andreadev-it/nvim-personal-config$2
* [zachcoyle/vim-plugins-overlay](https://discourse.nixos.org/t/zachcoyle/vim-plugins-overlay$2
* [nixos.wiki](https://nixos.wiki/wiki/Neovim)
* [installing-a-neovim-ide-layer-the-nix-way](https://discourse.nixos.org/t/installing-a-neovim-ide-layer-the-nix-way/25790)
* [justinlime/dotfiles/tree/main](https://discourse.nixos.org/t/justinlime/dotfiles/tree/main$2
* [justinlime/dotfiles](https://discourse.nixos.org/t/justinlime/dotfiles$2* - Guix*     
* [Guix Playlist](https://www.youtube.com/playlist?app=desktop&list=PLEoMzSkcN8oNxnj7jm5V2ZcGc52002pQU)
* [guix podcast](https://hackerpublicradio.org/eps.php?id=2198)
* [Packages — GNU Guix](https://packages.guix.gnu.org/)
* [guix.gnu.org](https://guix.gnu.org/en/blog/2023/the-full-source-bootstrap-building-from-source-all-the-way-down/)
## Tools and Software
*     → [github.com](https://github.com/nix-community/awesome-nix)
* [peterldowns/nix-search-cli](https://discourse.nixos.org/t/peterldowns/nix-search-cli$2
* [nmattia/niv](https://discourse.nixos.org/t/nmattia/niv$2
* [lazamar.co.uk](https://lazamar.co.uk/nix-versions/)
* [app.cachix.org](https://app.cachix.org/)
* [docs.cachix.org](https://docs.cachix.org/)
* [blog.cachix.org](https://blog.cachix.org/posts/2022-07-29-cachix-deploy-public-beta/)
* - NixOS on Mobile*     
* [mobile.nixos.org](https://mobile.nixos.org/) ‣*     
* [madjar/nox](https://discourse.nixos.org/t/madjar/nox$2
* [nix-community/nix-direnv](https://discourse.nixos.org/t/nix-community/nix-direnv$2
* [nix-community/awesome-nix](https://discourse.nixos.org/t/nix-community/awesome-nix$2 ***** [hugoreeves/elemental](https://discourse.nixos.org/t/hugoreeves/elemental$2 ***** [DeterminateSystems/nix-installer](https://discourse.nixos.org/t/DeterminateSystems/nix-installer$2
* [nixops.readthedocs.io](https://nixops.readthedocs.io/en/latest/index.html)
* [divnix/digga: A flake utility library to craft shell-, home-, and hosts- environments.](https://github.com/divnix/digga)
* [fzakaria/nix-home: A nix home development environment](https://github.com/fzakaria/nix-home)
* [Introduction - Alternative Haskell Infrastructure for Nixpkgs](https://input-output-hk.github.io/haskell.nix/index.html)
* [blitz/tuxedo-nixos](https://discourse.nixos.org/t/blitz/tuxedo-nixos$2
* [DavHau/nix-portable](https://discourse.nixos.org/t/DavHau/nix-portable$2
* [HugoReeves/elemental: Elemental, the component parts of a Nix/OS development system.](https://github.com/hugoreeves/elemental)
* [infra/localhost: Fully reproducible localhost - localhost - code.dumpstack.io](https://code.dumpstack.io/infra/localhost)
* [kamadorueda/alejandra: The Uncompromising Nix Code Formatter](https://github.com/kamadorueda/alejandra)
* [nix-community/nurl](https://discourse.nixos.org/t/nix-community/nurl$2
* [nix-community/nix-init](https://discourse.nixos.org/t/nix-community/nix-init$2
* [devenv.sh](https://devenv.sh/)
* [devenv.sh](https://devenv.sh/getting-started/) ******* [nix-community/dream2nix: Automate reproducible packaging for various language ecosystems [maintainer=@DavHau]](https://github.com/nix-community/dream2nix)
* [nix-community/nix-direnv: A fast, persistent use_nix/use_flake implementation for direnv [maintainer=@Mic92 / @bbenne10]](https://github.com/nix-community/nix-direnv)
* [NixOS/nixos-hardware: A collection of NixOS modules covering hardware quirks.](https://github.com/NixOS/nixos-hardware)
* [flyx/Zicross](https://discourse.nixos.org/t/flyx/Zicross$2
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
* [nix-community/NixNG](https://discourse.nixos.org/t/nix-community/NixNG$2
* [kamadorueda/nixel](https://discourse.nixos.org/t/kamadorueda/nixel$2
* [kamadorueda/b3](https://discourse.nixos.org/t/kamadorueda/b3$2 Totos - Nix in Rust [github.com](https://github.com/cleverca22/not-os)
* [haskell-nix/hnix](https://discourse.nixos.org/t/haskell-nix/hnix$2
* [nix-community/nixos-anywhere](https://discourse.nixos.org/t/nix-community/nixos-anywhere$2
* [numtide.com](https://numtide.com/blog/nixos-anywhere-intro/)
* [the-nix-way/dev-templates](https://discourse.nixos.org/t/the-nix-way/dev-templates$2 ******* [haskell-nix/hnix](https://discourse.nixos.org/t/haskell-nix/hnix$2
* [nickel-lang/nickel-nix: An experimental Nix toolkit to use nickel as a language for writing nix packages, shells and more.](https://github.com/nickel-lang/nickel-nix)
* [cachix/pre-commit-hooks.nix](https://discourse.nixos.org/t/cachix/pre-commit-hooks.nix$2
* [cachix/cachix](https://discourse.nixos.org/t/cachix/cachix$2
* [git.neet.dev](https://git.neet.dev/zuckerberg/AoC-2022-Nix)
* [cachix/pre-commit-hooks.nix](https://discourse.nixos.org/t/cachix/pre-commit-hooks.nix$2
* [divnix/Fractal](https://discourse.nixos.org/t/divnix/Fractal$2
* [ArctarusLimited/xnlib](https://discourse.nixos.org/t/ArctarusLimited/xnlib$2
* [mirkolenz/flocken](https://discourse.nixos.org/t/mirkolenz/flocken$2
* [kamadorueda/alejandra](https://discourse.nixos.org/t/kamadorueda/alejandra$2
* [crazazy/aoc2020](https://discourse.nixos.org/t/crazazy/aoc2020$2
* [figsoda/utf8](https://discourse.nixos.org/t/figsoda/utf8$2
* [GitHub - akirak/nix-env-install: Emacs frontend to installing packages using Nix](https://github.com/akirak/nix-env-install) ‣ [nixified.ai](https://nixified.ai/)
* [canva-public/js2nix: Node.js modules installation using Nix](https://github.com/canva-public/js2nix)
* [direnv.net](https://direnv.net/)
* [Installation | direnv](https://direnv.net/docs/installation.html)
* [/docs/guides/install-nixos-on-linode/](https://www.linode.com/docs/guides/install-nixos-on-linode/)
* [Advent of Code 2019](https://adventofcode.com/2019)
* [Nix · direnv/direnv Wiki](https://github.com/direnv/direnv/wiki/Nix)
* [nix-community/nix-direnv: A fast, persistent use_nix/use_flake implementation for direnv [maintainer=@Mic92 / @bbenne10]](https://github.com/nix-community/nix-direnv) ‣ [Nixd: nix language server - Announcements - NixOS Discourse](https://discourse.nixos.org/t/nixd-nix-language-server/28910)
* [Nixhub.io | A Nix Packages Registry](https://www.nixhub.io/)
* [The Determinate Nix Installer](https://zero-to-nix.com/concepts/nix-installer)* - nixos-anywhere*     
* [nixos-anywhere-1-0-release](https://discourse.nixos.org/t/nixos-anywhere-1-0-release/33145)
* [numtide.com](https://numtide.com/blog/nixos-anywhere-1-0-release/)*     
* [ ]  ‣ - [determinate.systems](https://determinate.systems/posts/nuenv)
* [ ]  ‣* - ‣*     
* [flox.dev](https://flox.dev/)
* [reproducible-builds.org](https://reproducible-builds.org/)
* [Nickel](https://nickel-lang.org/) ‣
* - Videos* - Channels*     
* [/@ChrisMcDonough/playlists](https://www.youtube.com/@ChrisMcDonough/playlists)
* - Nix language*     
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
## NixOS*     
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
## Nix/NixOS in the media*     
* [Debian 12, openSUSE 15.5, NixOS, Huge Steam Update & more Linux news! - YouTube](https://www.youtube.com/watch?v=YojPjjavHbs)
* [Dieses OS ist eigentlich ein Paketmanager - NixOS 21.11](https://www.youtube.com/watch?v=CQMU3kSRhLU)
* [Looking at NixOS live on camera! - YouTube](https://www.youtube.com/watch?v=1KKrjic7YVQ)
## Flakes*     
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
## Videos
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
* [www.youtube.com](https://www.youtube.com/) › watch [How Nix and NixOS Get So Close to Perfect - YouTube](https://www.youtube.com/watch?v=qjq2wVEpSsA)
* [Nix Friday - poetry2nix part 1 - YouTube](https://www.youtube.com/watch?v=XfqJulSAPBQ)
* [The best of both worlds with Nix + Bazel](https://www.youtube.com/watch?v=dBru1MVKsfE&pp=ygUeRGV0ZXJtaW5pc3RpYyBzeXN0ZW1zIHdpdGggTml4)
* [Fast, correct, reproducible builds with Nix + Bazel](https://www.youtube.com/watch?v=2wI5J8XYxM8)
* [NixOS as Daily Driver?](https://www.youtube.com/watch?v=cjCFmpdarpg)
* [NixOS Installation Guide - YouTube](https://www.youtube-nocookie.com/embed/axOxLJ4BWmY?start=1642)
* [Paolo – NixOS | Lightning Talk Jugend hackt Berlin 2021](https://youtu.be/Xm2lsP7pnE4)
* [CTT on Nix](https://www.youtube.com/watch?v=Ty8C2B910EI)
* [How Nix and NixOS Get So Close to Perfect - Xe | PackagingCon 2021 https://www.youtube.com/watch?v=WwgSMgpX6TM](https://www.youtube.com/watch?v=WwgSMgpX6TM)
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
# Miscellaneous / Specific Software*     
* [Neovim Configuration in Nix: Unpacking Multiple Approaches - YouTube](https://www.youtube.com/watch?v=i68c6vZkSXc)
* [NixOS + Hyprland challenge comes to an end, My final thoughts - YouTube](https://www.youtube.com/watch?v=eb2Cvdu6F18)
* [NixOS with Hyprland - My setup and some thoughts](https://www.youtube.com/watch?v=THgo4nBJyg8&pp=ygULTml4T1Mgc2V0dXA%3D)
* [Nix vs Guix - YouTube](https://www.youtube.com/watch?v=S9V-pcTrdL8)
* [The Nix Hour #32 [extending nixpkgs lib and Nix builtins, Nix plugins] - YouTube](https://www.youtube.com/watch?v=-ohLh-QHc_A)

## SOPS
* sops [www.youtube.com](https://www.youtube.com/watch?v%3DG5f6GC7SnhU)
* sops [konradmalik.com](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
* sops [github.imold.wang](https://github.imold.wang/lucidph3nx/nvim-sops)
* sops [github.com](https://github.com/Mic92/sops-nix)
* sops [blog.gitguardian.com](https://blog.gitguardian.com/a-comprehensive-guide-to-sops/)
* [The SOPS Way: The Only Way to Keep Your Secrets Safe in Git | by Seifeddine Rajhi | Medium](https://medium.com/@seifeddinerajhi/the-sops-way-the-only-way-to-keep-your-secrets-safe-in-git-4a17e83ef6c6)

## NixOS Manual
* [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/index.html%23sec-luks-file-systems)
* [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/%23sec-installation)
* [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/index.html%23sec-writing-modules)
* [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/%23sec-installing-from-other-distro)
* [NixOS 23.11 manual | Nix & NixOS](ghttps://nixos.org/manual/nixos/stable/options%23opt-services.xserver.displayManager.autoLogin)
* [NixOS 23.11 manual | Nix & NixOS](ghttps://nixos.org/manual/nixos/stable/index.html%23sec-changing-config)

## Mobile
* mobile search nixos-mobile on github
* mobile [nixos.wiki](https://nixos.wiki/wiki/PinePhone)
* mobile [Nix Phone and the End of Android](https://www.youtube.com/watch?v%3D0UIpg19KECw)
* mobile [Installing Guix as a Complete GNU/Linux System - YouTube](https://www.youtube.com/watch?v%3DoSy-TmoxG_Y%26list%3DPLEoMzSkcN8oNxnj7jm5V2ZcGc52002pQU%26index%3D5%26pp%3DiAQB)
* mobile [github.com](https://github.com/turbo-muffin/ancap-catppuccin)
* mobile [fosstodon.org](https://fosstodon.org/@GreyLinux)
* mobile [calyxos.org](https://calyxos.org/install/devices/FP4/linux/)
* mobile [/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/](https://www.reddit.com/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/) nixos on mobile
* mobile [](https://pine64.com/product/pinephone-beta-edition-with-convergence-package/)
* mobile  [nlnet.nl](https://nlnet.nl/project/mobile-nixos/)

## Blog
* [blog/nix-in-practice](https://www.slice.zone/blog/nix-in-practice)
* [blog/2022-08-04-tweag-and-nix-future/](https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/)
* [blog/2021-12-20-nix-2.4/](https://www.tweag.io/blog/2021-12-20-nix-2.4/)
* [blog/2020-09-10-nix-cas/](https://www.tweag.io/blog/2020-09-10-nix-cas/)
* [blog/2020-06-25-eval-cache/](https://www.tweag.io/blog/2020-06-25-eval-cache/)
* [blog post: patch a package source on nixos](https://drakerossman.com/blog/how-to-patch-a-package-source-on-nixos?utm_source%3Ddrakerossman%26utm_medium%3Demail%26utm_campaign%3Ddrakerossmancom-patching-package-source-on-nixos)
* [blog post: nixos install with luks](https://fictionbecomesfact.com/nixos-installation-luks)
* [blog post: my first contributions to nixpkgs and pen source](https://blog.alper-celik.dev/posts/my-first-contributions-to-nixpkgs-and-open-source/)
* [blog post: how I start nix](https://xeiaso.net/blog/how-i-start-nix-2020-03-08/)
* [blog post my nix workflow](https://bmcgee.ie/posts/2023/11/nix-my-workflow/)
* [blog post - nikiv - nix](https://wiki.nikiv.dev/package-managers/nix/)

## Tutorial
* [nix.dev tutorial](https://nix.dev/tutorials/first-steps/declarative-shell.html)
* [nix.dev tutorial](https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html)
* [nix.dev tutorial](https://nix.dev/tutorials/first-steps/)
* [nix.dev tutorial](https://nix.dev/tutorials/%23tutorials)
* [nix.dev tutorial](https://nix.dev/guides/recipes/python-environment)

## Videos
* [yt [Tech Maid] Running Software On NixOS - YouTube](https://www.youtube.com/watch?v%3DUC2StObYQIc)
* [yt ?](https://youtu.be/G5f6GC7SnhU?si%3DhdXcvu9BgqSDQx1H)
* [yt ?](https://www.youtube.com/watch?v%3Dutoj6annRK0%26pp%3DygUSbml4b3MgaG9tZSBtYW5hZ2Vy)
* [yt ?](https://www.youtube.com/watch?v%3DNEbzVKkjXUg)
* [yt ?](https://www.youtube.com/watch?v%3DM7XSp-ubCy0%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
* [yt ?](https://www.youtube.com/watch?v%3Dc447uYCePAo)
* [yt ?](https://www.youtube.com/watch?v%3D6L0H92-JdHA%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
* [yt ?](https://www.youtube.com/watch?v%3D1ED9b7ERTzI%26pp%3DygUXaG93IHRvIHJlYWxseSBsZWFybiBOaXg%253D)

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
* [NixOS Search - Packages - ipython](https://search.nixos.org/packages?channel%3D23.11%26show%3Dihaskell%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dipython)
* [NixOS Search - Packages - harpoon](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dharpoon)
* [NixOS Search - Packages - cosmic](https://search.nixos.org/packages?channel%3D23.11%26show%3Dcosmic-edit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dcosmic)
* [NixOS Search - Options - nix.gc](ghttps://search.nixos.org/options?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnix.gc)

## Package Search


## Reddit
* [r/unixporn/s/Fk9sUOv7FY](https://www.reddit.com/r/unixporn/s/Fk9sUOv7FY)
* [r/NixOS/s/UhoOeQnx6T](https://www.reddit.com/r/NixOS/s/UhoOeQnx6T)
* [r/NixOS/s/s1yFBo1r44](ghttps://www.reddit.com/r/NixOS/s/s1yFBo1r44)
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

# SORT
uses niv: [discourse.nixos.org](https://discourse.nixos.org/t/help-with-poetry2nix/21799/4)
use! [github.com](https://github.com/zhaofengli/colmena)
TRY THIS! [github.com](https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix)
Project idea: add .drv syntax highlighting to bat, or create a bat-based tool to format and display .drv all-in-one
make Github issue for bcrypt
How to install and nconfigure browser extension with Nix and Home Manager?
greetd config examples
Goal: To create a Python develop environment where everything just works
dots * [skelytoni](https://codeberg.org/SkelyToni/NixOS)
dots * [matthewcroughan](https://gitlab.com/MatthewCroughan/darkflake/-/tree/master)
dots * [gitlab.com](https://gitlab.com/nobodyinperson/flakes)
dots * [felixkratz](ghttps://github.com/FelixKratz/dotfiles/tree/0619040a8eebbf9896c5ce4fc9d312270426ed8f)
create script: nixos-report: like ls for all relevant directories, following all links to real file; also other important information
→ [duckduckgo.com](https://duckduckgo.com/?q%3Dcontent-addressed%2Bstorage%2Bin%2Bnix%26ia%3Dweb)
* sw [news.ycombinator.com](https://news.ycombinator.com/item?id%3D33655542) 
* suckless [github.com](https://github.com/NixOS/nixpkgs/issues/23200)
* rice [github.com](https://github.com/danth/stylix)
* rice  [the-argus/gtk-nix: A gtk theme that can be configured with nix](https://github.com/the-argus/gtk-nix/)
* related to Nix 3.0 [github.com](https://github.com/NixOS/nix/issues/7701)
* reading roadmap
* prog [hraban/cl-nix-lite: Common Lisp module for Nix, without Quicklisp](ghttps://github.com/hraban/cl-nix-lite)
* nvidia ml [/r/NixOS/comments/tzlunt/deep_learning_on_nixos/](https://www.reddit.com/r/NixOS/comments/tzlunt/deep_learning_on_nixos/)
* nvidia docker [sebastian-staffa.eu](https://sebastian-staffa.eu/posts/nvidia-docker-with-nix/)
* nvidia docker [github.com](https://github.com/suvash/nixos-nvidia-cuda-python-docker-compose)
* nvidia docker [/search?client=firefox-b-d&q=nvidia+docker+container+on+nixos#ip=1](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnvidia%2Bdocker%2Bcontainer%2Bon%2Bnixos%23ip%3D1)
* nvidia [What's a legacy driver? | NVIDIA](ghttps://www.nvidia.com/en-us/drivers/unix/legacy-gpu/)
* nvidia [Syllo/nvtop: GPUs process monitoring for AMD, Intel and NVIDIA](ghttps://github.com/Syllo/nvtop%23gpu-support)
* nvidia [Impossible to initialize nvidia nvml : Driver/library version mismatch · Issue #98328 · NixOS/nixpkgs](ghttps://github.com/NixOS/nixpkgs/issues/98328)
* note: create different configuration expressions to wrap and manage window managers and widgets and login managers etc: hyprland-ags.nix  hyprland-basic.nix  sway.nix  swayfx.nix  riverwm.nix  popos.nix
* NixOS, Nix [www.reddit.com](https://www.reddit.com/r/unixporn/s/ESi62fFi1j)
* nix and shellls -a /etc/skel [nixos.wiki](https://nixos.wiki/wiki/Command_Shell)
* landscape [landscape-client/setup_client.py at master · canonical/landscape-client](https://github.com/canonical/landscape-client/blob/master/setup_client.py)
* landscape [github.com](https://github.com/canonical/landscape-scripts) 
* landscape [Commits · yelircaasi/landscape-client-nixos](https://github.com/yelircaasi/landscape-client-nixos/commits/nixos/)
* Informal intro to the Nix language, derivations and nixpkgs - YouTube https://www.youtube.com/watch?v=9DJtHIpdp0Y&t=132s&pp=2AGEAZACAcoFFm5peCBsYW5ndWFnZSB0dXRvcmlhbCA%3D
* flakes explanation [reddit](https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj)
* fetch credentials provider [github.com](https://github.com/NixOS/nix/issues/8635)
* ds [nixos.wiki](https://nixos.wiki/wiki/Tensorflow) 
* deploy = homeManager.makeModule { modules = [ config.nixos ]; };
* cuda [gist.github.com](https://gist.github.com/ChadSki/926e5633961c9b48131eabd32e57adb2) nix with cuda
* CAS semantics [github.com](https://github.com/NixOS/rfcs/pull/106)
* ai [Nixified AI](https://nixified.ai/)
* add reasonably-minimal container CL environment to Nix flake
* $$$ [git.sr.ht](https://git.sr.ht/~darumaka/SnowISO)
* *** [gitlab.com](https://gitlab.com/librephoenix/nixos-config)
* [zupo/nix](https://discourse.nixos.org/t/zupo/nix$2
* [zero to nix](https://zero-to-nix.com/start)
* [zero to nix - concepts](https://zero-to-nix.com/concepts)
* [Your home in Nix (dotfile management) - Hugo Reeves](https://hugoreeves.com/posts/2019/nix-home/)
* [You Should Use Flakes Right Away in NixOS! - YouTube](https://www.youtube.com/watch?v%3DACybVzRvDhs)
* [yelircaasi/pictrix](https://discourse.nixos.org/t/yelircaasi/pictrix$2
* [yelircaasi/nixos-config: My NixOS configuration files. I'm new to NixOS, so take all of this with a grain of salt.](https://github.com/yelircaasi/nixos-config/tree/main)
* [yelircaasi/nix-eli5](https://discourse.nixos.org/t/yelircaasi/nix-eli5$2
* [yelircaasi/clavix](https://discourse.nixos.org/t/yelircaasi/clavix$2
* [yelircaasi | Cachix](ghttps://app.cachix.org/cache/yelircaasi%23pull)
* [Writing your own NixOS modules for fun and (hopefully) profit - YouTube](https://www.youtube.com/watch?v%3DSzyuLVzS5Fg)
* [wiltaylor/dotfiles](https://discourse.nixos.org/t/wiltaylor/dotfiles$2
* [Wil Taylor's NixOS series](https://www.youtube.com/watch?v%3DQKoQ1gKJY5A%26list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users](https://discourse.nixos.org/t/what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users/41656)
* [What if the source requires authentification?](https://www.phind.com/search?cache%3Dsosi2xj2u74wie4ci17udny0)
* [What are the options for hardware.nvidia.package? (docs seem out-of-date) : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/or7pvq/what_are_the_options_for_hardwarenvidiapackage/)
* [What advantages does Flatpak offer over Nix? The](https://news.ycombinator.com/item?id%3D35170465)
* [using-nvidia-container-runtime-with-containerd-on-nixos](https://discourse.nixos.org/t/using-nvidia-container-runtime-with-containerd-on-nixos/27865)
* [using-imports-attribute-with-import-function](https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2)
* [using-a-private-gitlab-instance-with-fetchgit](https://discourse.nixos.org/t/using-a-private-gitlab-instance-with-fetchgit/28013/3)
* [Upgrading Nix - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/installation/upgrading)
* [unix.stackexchange.com](https://unix.stackexchange.com/questions/522822/different-methods-to-run-a-non-nixos-executable-on-nixos/522823%23522823)
* [unimport nix plugin? at DuckDuckGo](ghttps://duckduckgo.com/?q%3Dunimport%2Bnix%2Bplugin%253F%26ia%3Dweb)
* [Unable to use fetchgit on private git repo - Help - NixOS Discourse](https://discourse.nixos.org/t/unable-to-use-fetchgit-on-private-git-repo/24280)
* [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* [Ubuntu vs. NixOS - NixOS Wiki](https://nixos.wiki/wiki/Ubuntu_vs._NixOS)
* [Ubuntu vs NixOS detailed comparison as of 2024 - Slant](https://www.slant.co/versus/2689/2700/~ubuntu_vs_nixos)
* [typednix](https://typednix.dev/) [github link](https://github.com/hsjobeki/nix-types)
* [tweag/rfcs/blob/flakes/rfcs/0049-flakes.md](https://discourse.nixos.org/t/tweag/rfcs/blob/flakes/rfcs/0049-flakes.md$2
* [tweag/jupyenv: Declarative and reproducible Jupyter environments - powered by Nix](https://github.com/tweag/jupyenv)
* [tweag.github.io](https://tweag.github.io/nixpkgs/file-sets/manual.html%23preface)
* [tweag-nix-dev-update-17](https://discourse.nixos.org/t/tweag-nix-dev-update-17/15037)
* [tweag-nix-dev-update-16](https://discourse.nixos.org/t/tweag-nix-dev-update-16/14379)
* [TUXEDO Devices - NixOS Wiki](https://nixos.wiki/wiki/TUXEDO_Devices)
* [Tutorial: Getting started with Home Manager for Nix | Mattia Gheda](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [tonyfinn.com](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
* [tmp.bearblog.dev](https://tmp.bearblog.dev/minimal-containers-using-nix/)
* [TLATER/dotfiles: Dotfiles deployed with nix/home-manager. Feel free to take what you like!](https://github.com/TLATER/dotfiles/tree/master)
* [Tips and Tricks for Nix Flakes | Ivan Petkov](https://ipetkov.dev/blog/tips-and-tricks-for-nix-flakes/)
* [tinkering.xyz](https://tinkering.xyz/installing-nixos/) 
* [thomascft/dotfiles/tree/nixos](https://discourse.nixos.org/t/thomascft/dotfiles/tree/nixos$2
* [thiscute.world](https://thiscute.world/en/posts/nixos-and-flake-basics/)
* [This is how I roll](https://linuxmatters.sh/19/) snaps on nixos
* [thiagokokada/nix-alien: Run unpatched binaries on Nix/NixOS](https://github.com/thiagokokada/nix-alien)
* [thenewstack.io](https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/)
* [thegradientpub.substack.com](https://thegradientpub.substack.com/p/ted-gibson-language-structure-communication-llms)
* [The Nix Hour #30 [2nix tooling differences, flakes motivation] - YouTube](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
* [tech.aufomm.com](https://tech.aufomm.com/my-nixos-journey-flakes/)
* [target/nix-fetchers](https://discourse.nixos.org/t/target/nix-fetchers$2
* [t.me](https://t.me/nixos_en/114808?single)
* [system-manager/examples/example.nix at main · numtide/system-manager](https://github.com/numtide/system-manager/blob/main/examples/example.nix)
* [symphorien/vim-nixhash: neovim plugin to automate fixing fake TOFU hashes when writing nix derivations](https://github.com/symphorien/vim-nixhash/)
* [symphorien/nix-du: Visualise which gc-roots to delete to free some space in your nix store](ghttps://github.com/symphorien/nix-du)
* [Switching non-NixOS Home Manager to flakes – dee.underscore.world](ghttps://dee.underscore.world/blog/home-manager-flakes/)
* [superuser.com](https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell)
* [summer.nixos.org](https://summer.nixos.org/blog/callpackage-a-tool-for-the-lazy/)
* [stylix](https://danth.github.io/stylix/index.html)
* [stackoverflow.com](https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell)
* [srid/nixos-flake: A flake-parts module to manage NixOS and macOS machines, along with home-manager support, in a unified fashion.](https://github.com/srid/nixos-flake)
* [spikespaz/dotfiles](https://discourse.nixos.org/t/spikespaz/dotfiles$2
* [SoraTenshi/helix/tree/master](https://discourse.nixos.org/t/SoraTenshi/helix/tree/master$2
* [Some notes on using nix](https://jvns.ca/blog/2023/02/28/some-notes-on-using-nix/)
* [snowflakeos.org](https://snowflakeos.org/)
* [snowfallorg/lib](https://discourse.nixos.org/t/snowfallorg/lib$2
* [simplex-chat/haskell.nix](https://discourse.nixos.org/t/simplex-chat/haskell.nix$2
* [simple-terminal-st-setup](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [Simple Terminal (st) setup - Guides - NixOS Discourse](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [Setting up Emacs on NixOS - YouTube](https://www.youtube.com/watch?v%3DWZBfPbpGDOU)
* [Set a consistent cursor theme for nix UI packages/guide-english/README.md · main · Javier Martínez / devtec-guides · GitLab](https://gitlab.com/javimarsal/devtec-guides/-/blob/main/Set%2520a%2520consistent%2520cursor%2520theme%2520for%2520nix%2520UI%2520packages/guide-english/README.md?ref_type%3Dheads)
* [services - MyNixOS](https://mynixos.com/search?q%3Dservices)
* [seirl-nixos/pkgs/epiquote.nix at 2d95c686c6b2d3b65d25f17731ddfab0509579df · seirl/seirl-nixos](https://github.com/seirl/seirl-nixos/blob/2d95c686c6b2d3b65d25f17731ddfab0509579df/pkgs/epiquote.nix%23L4)
* [Security updates in Nixos : r/NixOS](https://www.reddit.com/r/NixOS/comments/wtweio/security_updates_in_nixos/)
* [Security - NixOS Wiki](https://nixos.wiki/wiki/Security)
* [search](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnixos%2Bdeclare%2Bdocker%2Bimages%2Bin%2Bconfig)
* [search.nixos.org](https://search.nixos.org/packages?channel=23.11&show=nix-tree&from=0&size=50&sort=relevance&type=packages&query=nix-tree)
* [search.nixos.org](https://search.nixos.org/packages?channel%3D23.11%26show%3Drunit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drunit) nixos runit
* [search.nixos.org](https://search.nixos.org/packages?channel%3D23.11%26show%3Dlibgen-cli%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlibgen)
* [search.nixos.org](https://search.nixos.org/options)*     
* [search?q%3Drepo%253Anumtide%252Fsystem-manager](https://discourse.nixos.org/t/search?q%3Drepo%253Anumtide%252Fsystem-manager$2
* [schuelermine/xhmm: Extra home manager modules](https://github.com/schuelermine/xhmm)
* [Say Goodbye to Containers - Ephemeral Environments with Nix Shell - YouTube](https://www.youtube.com/watch?v%3D0ulldVwZiKA)
* [samuela/nixos-vscode-server](https://discourse.nixos.org/t/samuela/nixos-vscode-server$2
* [ryantm.github.io](https://ryantm.github.io/nixpkgs/)
* [rust development on nixos](https://drakerossman.com/blog/rust-development-on-nixos-bootstrapping-rust-nightly-via-flake)
* [rubyowo/dotfiles](https://discourse.nixos.org/t/rubyowo/dotfiles$2
* [rpi.nix](https://discourse.nixos.org/t/zupo/nix/blob/master/rpi.nix$2
* [rootless nixos on alpine](https://adnab.me/blog/2023/2023-04-02-rootless-nixos-alpine.html)
* [Repository search results](https://github.com/search?q%3Dags%2Blanguage%253ANix%2B%26type%3Drepositories)
* [reflexivereflection.com](https://reflexivereflection.com/posts/2015-02-28-deb-installation-nixos.html)
* [redoracle/nixos](https://discourse.nixos.org/t/redoracle/nixos$2 -Alpine + Nix
* [recap-utr/nlp-service](https://discourse.nixos.org/t/recap-utr/nlp-service$2
* [Raw repository package counts - Repology](https://repology.org/repositories/packages)
* [RaitoBezarius/buildxyz](https://discourse.nixos.org/t/RaitoBezarius/buildxyz$2

* [Quickstart](https://snowfall.org/guides/lib/quickstart/)
* [Question: How to specify runtime dependencies of python sub-dependencies · Issue #594 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/594)
* [pytorch for nixos](https://duckduckgo.com/?q%3Dpre-built%2Bpytorch%2Bfor%2Bnixos%26ia%3Dweb)
* [Python poetry project in an FHS environment when poetry2nix is uncooperative](https://gitlab.com/nobodyinperson/flakes/-/blob/main/poetryFHS/flake.nix?ref_type%3Dheads)
* [Python package install using poetry + nix - NixOS Discourse](https://discourse.nixos.org/t/python-package-install-using-poetry-nix/10624/12)
* [python - Using poetry to install from a private repository with a token - Stack Overflow](https://stackoverflow.com/questions/77558055/using-poetry-to-install-from-a-private-repository-with-a-token)
* [python - Credentials in pip.conf for private PyPI - Stack Overflow](https://stackoverflow.com/questions/50468951/credentials-in-pip-conf-for-private-pypi)
* [pycryptpad-tools/nix/deps.nix at b2500775710205af92d72ded68d213f38190a8fb · dpausp/pycryptpad-tools](https://github.com/dpausp/pycryptpad-tools/blob/b2500775710205af92d72ded68d213f38190a8fb/nix/deps.nix%23L20)
* [PureNix: Write PureScript and transpile it to Nix : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/sw3zpp/purenix_write_purescript_and_transpile_it_to_nix/)
* [purenix post](https://functor.tokyo/blog/2022-01-10-why-purenix)
* [prmadev/willow](https://discourse.nixos.org/t/prmadev/willow$2
* [Private Repository Authentication not working for new nix-commands and flakes (pure mode) · Issue #1423 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1423)
* [primamateria.github.io](https://primamateria.github.io/blog/haumea-cheatsheet/)
* [Preparing a Nix flake for a Python program (Migra, using Poetry) - Help - NixOS Discourse](https://discourse.nixos.org/t/preparing-a-nix-flake-for-a-python-program-migra-using-poetry/12030)
* [practical nixos - the book](https://drakerossman.com/blog/practical-nixos-the-book)
* [Practical Nix Flakes](https://serokell.io/blog/practical-nix-flakes)
* [Practical Nix Flakes - DEV Community](https://dev.to/serokell/practical-nix-flakes-5e6p)
* [poetry2nix/tests/editable/default.nix at master · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/blob/master/tests/editable/default.nix)
* [Poetry2nix: mismatch cryptography sha256 but unable to modify · Issue #1337 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1337)
* [poetry2nix error · Issue #133 · tweag/jupyenv](https://github.com/tweag/jupyenv/issues/133)
* [poetry config http-basic](https://github.com/python-poetry/poetry/issues/8443)
* [pkgs.nix-tree ]()
* [Peter Kolloch - Blog - Nix: Authenticated Fetches from GitLab - Reading about Related Work](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)
* [packaging - How to package my software in nix or write my own package derivation for nixpkgs - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs)
* [packages/nushell](https://www.nixhub.io/packages/nushell)
* [overview of nix formatters](https://drakerossman.com/blog/overview-of-nix-formatters-ecosystem)
* [On Replacing Ubuntu with NixOS (part 1)](https://stesie.github.io/2016/08/nixos-pt1)
* [NyCodeGHG/dotfiles](https://discourse.nixos.org/t/NyCodeGHG/dotfiles$2
* [NyCodeGHG/awesome-prometheus-alerts.nix](https://discourse.nixos.org/t/NyCodeGHG/awesome-prometheus-alerts.nix$2
* [NyCodeGHG (Marie)](https://github.com/nycodeghg)
* [nvidia-docker-seems-not-working](https://discourse.nixos.org/t/nvidia-docker-seems-not-working/26665)
* [numtide/nix-gl-host](https://discourse.nixos.org/t/numtide/nix-gl-host$2
* [nuenv](https://determinate.systems/posts/nuenv)
* [np.reddit.com](https://np.reddit.com/r/unixporn/comments/obak1a/awesome_still_in_love_with_alpine/h3o2uuh/)
* [Novice Nix: Flake Templates · peppe.rs](https://peppe.rs/posts/novice_nix:_flake_templates/)
* [notusknot/dotfiles-nix](https://discourse.nixos.org/t/notusknot/dotfiles-nix$2
* [nixpkgs/pkgs/development/python-modules/halo/default.nix at nixos-23.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/development/python-modules/halo/default.nix%23L28)
* [nixpkgs/pkgs/development/interpreters/python/mk-python-derivation.nix at master · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/interpreters/python/mk-python-derivation.nix)
* [nixpkgs/pkgs/applications/editors/vim/plugins/vim-clap/default.nix at 8b735381322a1f8fff46add535f1fb5aea71e2da · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/8b735381322a1f8fff46add535f1fb5aea71e2da/pkgs/applications/editors/vim/plugins/vim-clap/default.nix%23L58)
* [nixpkgs-channels/pkgs/misc/vim-plugins/build-vim-plugin.nix at nixos-unstable · NixOS/nixpkgs-channels](https://github.com/NixOS/nixpkgs-channels/blob/nixos-unstable/pkgs/misc/vim-plugins/build-vim-plugin.nix)
* [Nixpkgs 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixpkgs/stable/%23chap-pkgs-fetchers)
* [NixOS/rfcs/pull/166](https://discourse.nixos.org/t/NixOS/rfcs/pull/166$2
* [NixOS/nixpkgs/issues/280566%23issuecomment-1925520721](https://discourse.nixos.org/t/NixOS/nixpkgs/issues/280566%23issuecomment-1925520721$2
* [NixOS/nixos-hardware](https://discourse.nixos.org/t/NixOS/nixos-hardware$2
* [NixOS/nixos-artwork: Nix related artwork](https://github.com/NixOS/nixos-artwork)
* [NixOS/nix/pull/4577](https://discourse.nixos.org/t/NixOS/nix/pull/4577$2
* [nixos.wiki](https://nixos.wiki/wiki/St)
* [nixos.wiki](https://nixos.wiki/wiki/Ca-derivations)
* [nixos.wiki](https://nixos.wiki/wiki/Android)
* [nixos.org](https://nixos.org/manual/nixpkgs/unstable/%23python)
* [nixos.org](https://nixos.org/manual/nixpkgs/stable/%23fetchfromgitlab)
* [nixos.org](https://nixos.org/manual/nixpkgs/stable/)
* [nixos.org](https://nixos.org/manual/nixos/stable/)
* [nixos.org](https://nixos.org/manual/nix/stable/package-management/profiles)
* [nixos.org](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
* [nixos.org](https://nixos.org/guides/nix-pills/garbage-collector)
* [nixos.asia](https://nixos.asia/en/)
* [NixOS: the good, the bad, and the ugly](https://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* [NixOS: Full disk encryption with TPM and Secure Boot ? : r/NixOS](https://www.reddit.com/r/NixOS/comments/xrgszw/nixos_full_disk_encryption_with_tpm_and_secure/)
* [NixOS: Everything Everywhere All At Once - YouTube](ghttps://www.youtube.com/watch?v%3DCwfKlX3rA6E)
* [nixos-infect/nixos-infect at master · elitak/nixos-infect](https://github.com/elitak/nixos-infect/blob/master/nixos-infect)
* [nixos-config/home-manager/programs/nvim/nvim.nix at main · LamprosPitsillos/nixos-config](https://github.com/LamprosPitsillos/nixos-config/blob/main/home-manager/programs/nvim/nvim.nix)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/development/intro)
* [nixos-and-flakes.thiscute.world](https://nixos-and-flakes.thiscute.world/)
* [NixOS vs Ubuntu | What are the differences?](https://stackshare.io/stackups/nixos-vs-ubuntu)
* [NixOS Setup Guide - Configuration / Home-Manager / Flakes - YouTube](https://www.youtube.com/watch?v%3DAGVXJ-TIv3Y)
* [NixOS Secrets Management | SOPS-NIX - YouTube](ghttps://www.youtube.com/watch?v%3DG5f6GC7SnhU)
* [NixOS on ARM/Raspberry Pi 4 - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4)
* [NixOS on ARM/Raspberry Pi - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi)
* [NixOS Live Coding: Using our Flake's Nixpkgs for Nix-Shell, Building Systems on GitHub Actions - YouTube](https://www.youtube.com/watch?v%3DTR0C76I59AI)
* [NixOS Generations Trimmer - NixOS Wiki](ghttps://nixos.wiki/wiki/NixOS_Generations_Trimmer)
* [nixos for the confused - part v](https://cola-gang.industries/nixos-for-the-confused-part-v)
* [Nixos Flakes with Home-Manager - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-flakes-with-home-manager/18476)
* [NixOS Explained - YouTube](https://www.youtube.com/watch?v%3DtQ446LjIv7k)
* [NixOS Discourse - NixOS community forum](https://discourse.nixos.org/)
* [NixOS Configuration File Organisation - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-configuration-file-organisation/19612/5)
* [NixOS can automatically run non-installed programs on typing their name : r/NixOS](https://www.reddit.com/r/NixOS/comments/6a1z7f/nixos_can_automatically_run_noninstalled_programs/)
* [Nixos and Hyprland - Best Match Ever - YouTube](https://www.youtube.com/watch?v%3D61wGzIv12Ds%26t%3D5s)

* [NixOS - Wikipedia](https://en.wikipedia.org/wiki/NixOS)
* [NixOS - Das Linux mit ganz eigenen Herangehensweisen. Grundkonzept vorgestellt - YouTube](https://www.youtube.com/watch?app%3Ddesktop%26v%3Dl3HnhX4tmZc)
* [NixNeovim/flake.nix at main · NixNeovim/NixNeovim](https://github.com/NixNeovim/NixNeovim/blob/main/flake.nix)
* [NixLang Wiki | NixLang.wiki](https://nixlang.wiki/)
* [nixhub](https://www.nixhub.io/)
* [nixcfg/mixins/nvidia.nix at cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332 · colemickens/nixcfg](https://github.com/colemickens/nixcfg/blob/cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332/mixins/nvidia.nix)
* [nix4noobs](https://nix4noobs.com/)
* [nix/pkgs/keyd/default.nix at 011bf23ba8bcf95c8cdd163ae746776ee4f7d00e · morphykuffour/nix](https://github.com/morphykuffour/nix/blob/011bf23ba8bcf95c8cdd163ae746776ee4f7d00e/pkgs/keyd/default.nix)
* [nix.dev concepts](https://nix.dev/concepts/%23concepts)
* [nix-store-gc-equivalent-to-delete-older-than](https://discourse.nixos.org/t/nix-store-gc-equivalent-to-delete-older-than/31767/2)
* [nix-shorts/posts/inspecting-values-with-repl.md at master · alper/nix-shorts](ghttps://github.com/alper/nix-shorts/blob/master/posts/inspecting-values-with-repl.md)
* [nix-shell](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [nix-release-schedule-and-roadmap](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
* [Nix-lite, or Nix without the store, for templating - NixOS Discourse](https://discourse.nixos.org/t/nix-lite-or-nix-without-the-store-for-templating/38577)
* [nix-examples/web/FastAPI/fastapi/app.nix at 0ebd762662c42270309e01b8f96161a3376f7ddf · vlktomas/nix-examples](https://github.com/vlktomas/nix-examples/blob/0ebd762662c42270309e01b8f96161a3376f7ddf/web/FastAPI/fastapi/app.nix%23L8)
* [Nix-darwin, home-manager, and flakes: how to set environment variables for the main user? - Stack Overflow](https://stackoverflow.com/questions/77296068/nix-darwin-home-manager-and-flakes-how-to-set-environment-variables-for-the-m)
* [nix-community/robotnix](https://discourse.nixos.org/t/nix-community/robotnix$2
* [nix-community/rnix-parser: A Nix parser written in Rust [maintainer=@oberblastmeister]](https://github.com/nix-community/rnix-parser)
* [nix-community/poetry2nix/blob/master/templates/app/flake.nix](https://discourse.nixos.org/t/nix-community/poetry2nix/blob/master/templates/app/flake.nix$2
* [nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix](https://discourse.nixos.org/t/nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix$2
* [nix-community/poetry2nix](https://discourse.nixos.org/t/nix-community/poetry2nix$2
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix%23how-to-guides)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix?tab%3Dreadme-ov-file%23mkpoetryeditablepackage)
* [nix-community/NUR](https://discourse.nixos.org/t/nix-community/NUR$2
* [nix-community/nixpkgs.lib: nixpkgs lib for cheap instantiation [maintainer=@github-action] (with initial help from @blaggacao)](ghttps://github.com/nix-community/nixpkgs.lib)
* [nix-community/nixpkgs-wayland: Automated, pre-built packages for Wayland (sway/wlroots) tools for NixOS. [maintainers=@colemickens, @Artturin]](https://github.com/nix-community/nixpkgs-wayland)
* [nix-community/nixos-anywhere: install nixos everywhere via ssh [maintainer=@numtide]](https://github.com/nix-community/nixos-anywhere)
* [nix-community/nixGL](https://discourse.nixos.org/t/nix-community/nixGL$2
* [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* [nix-community/haumea](https://discourse.nixos.org/t/nix-community/haumea$2
* [nix-community/dream2nix/tree/main/examples](https://discourse.nixos.org/t/nix-community/dream2nix/tree/main/examples$2
* [nix-community cachix](https://app.cachix.org/cache/nix-community) ***
* [nix-collect-garbage - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/nix-collect-garbage)
* [nix-authenticated-fetches-from-gitlab-reading-about-related-work](https://discourse.nixos.org/t/nix-authenticated-fetches-from-gitlab-reading-about-related-work/35708)
* [Nix to Debian phrasebook - NixOS Wiki](https://nixos.wiki/wiki/Nix_to_Debian_phrasebook)
* [Nix syntax for passing arguments to imported Modules - Help - NixOS Discourse](https://discourse.nixos.org/t/nix-syntax-for-passing-arguments-to-imported-modules/31547/2)
* [nix s3 store authentication](https://blog.eigenvalue.net/2023-nix-s3-store-authentication/)
* [Nix Reference Manual](https://nix.dev/manual/nix/2.19/)
* [nix ocaml](https://dimitrije.website/posts/2023-03-04-nix-ocaml.html)
* [Nix language — Dan's Cheat Sheets 1 documentation](https://cheat.readthedocs.io/en/latest/nixos/nix_lang.html)
* [nix journey part 1](https://daniel-siepmann.de/nix-journey-part-1.html%23howIFinallyStartedWithNixNotNixos)
* [nix journey part 1](https://daniel-siepmann.de/nix-journey-part-1.html)
* [nix journey part 1 - creating a flake](https://woile.dev/posts/nix-journey-part-1-creating-a-flake/)
* [Nix Hour Playlist](https://www.youtube.com/playlist?list%3DPLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in)
* [Nix Function to Validate Email Address - CodePal](https://codepal.ai/code-generator/query/5pPHhh0W/nix-function-validate-email)
* [Nix From Nothing #1 | Let's Learn Nix & NixOS! - YouTube](https://www.youtube.com/watch?v%3Dt8ydCYe9Y3M)
* [Nix from First Principles: Flake Edition - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/)
* [Nix for Startups (full course) - YouTube](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
* [Nix Flakes: Exposing and using NixOS Modules - Xe Iaso](https://xeiaso.net/blog/nix-flakes-3-2022-04-07/)
* [Nix flakes explained - YouTube](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
* [Nix Flakes Cheat Sheet - Vinícius Müller's blog](https://viniciusmuller.github.io/blog/nix-flakes-cheat-sheet.html)
* [Nix Flake Template for poetry2nix](https://gitlab.com/nobodyinperson/flakes/-/tree/main/poetry2nix)
* [nix flake lock - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake-lock)
* [nix flake - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
* [Nix Dev Environments | Declare Your Coding Projects - YouTube](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
* [Nix By Example · Nix Cookbook](ghttps://ops.functionalalgebra.com/nix-by-example/)
* [Nix Build / Develop - Emacs NG - A new approach to Emacs](https://emacs-ng.github.io/emacs-ng/build/nix-develop/)
* [nix als container-ersatz](https://www.golem.de/news/redis-cloud-ki-javascript-nginx-ersatz-in-rust-und-container-ersatz-mit-nix-2403-183524.html) 
* [Nix & NixOS CheatSheet](https://nixcademy.com/cheatsheet.html)
* [newsletter.ruder.io](https://newsletter.ruder.io/p/the-big-picture-of-ai-research)
* [network_inventory/flake.nix at dev · Nebucatnetzer/network_inventory](https://github.com/Nebucatnetzer/network_inventory/blob/dev/flake.nix)
* [netrc FileNotFoundError for private PyPI server · Issue #1244 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1244)
* [Neovim and Nix home-manager: Supercharge Your Development Environment - YouTube](https://www.youtube.com/watch?v%3DYZAnJ0rwREA)
* [mynixos.com](https://mynixos.com/search?q%3Dgtk)
* [mynixos.com](https://mynixos.com/pricing)
* [mynixos.com](https://mynixos.com/mynixos/demo-raspberry-transmission)
* [mynixos.com](https://mynixos.com/mynixos/demo-linode-nginx)
* [my-cheatsheet/nix/setup-nix.md at 802116b02deffdf33e1e4dc63dff56b0b8998b71 · nampdn/my-cheatsheet](https://github.com/nampdn/my-cheatsheet/blob/802116b02deffdf33e1e4dc63dff56b0b8998b71/nix/setup-nix.md?plain%3D1%23L490)
* [My NixOS Dotfiles Explained | Haseeb Majid](https://haseebmajid.dev/posts/2023-09-12-how-i-configure-nixos-as-part-of-my-development-workflow/)
* [mtlynch.io](https://mtlynch.io/notes/nix-dev-environment/)
* [mrzool/unix-as-ide: The ebook version of Tom Ryder's series on the Unix programming environment](https://github.com/mrzool/unix-as-ide)
* [monadplus/old-nixos-configuration](https://discourse.nixos.org/t/monadplus/old-nixos-configuration$2
* [Module system deep dive — nix.dev documentation](https://nix.dev/tutorials/module-system/module-system)
* [mkIf vs if / then - Help - NixOS Discourse](https://discourse.nixos.org/t/mkif-vs-if-then/28521)
* [mjones.network](https://mjones.network/articles/declarative-desktop-env-config-with-nix.html)
* [mjhart.netlify.app](https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html)
* [Misterio77/nix-starter-configs: Simple and documented config templates to help you get started with NixOS + home-manager + flakes. All the boilerplate you need!](https://github.com/Misterio77/nix-starter-configs)
* [minimal nix development environment](https://cbailey.co.uk/posts/a_minimal_nix_development_environment_on_wsl)
* [Mic92/nix-update](https://discourse.nixos.org/t/Mic92/nix-update$2
* [media.ccc.de](https://media.ccc.de/v/nixcon-2023-36022-daily-driving-nixos-on-the-librem-5)
* [MasterofNull/nixos/](https://discourse.nixos.org/t/MasterofNull/nixos/$2
* [Managing your NixOS configuration with Flakes and Home Manager!](https://josiahalenbrown.substack.com/p/managing-your-nixos-configuration)
* [Managing OS and home configurations using nixos-flake – nixos-flake](https://community.flake.parts/nixos-flake)
* [managing firefox on macos with nix](https://cmacr.ae/blog/managing-firefox-on-macos-with-nix/)
* [Manage Your Dotfiles with Home Manager! - YouTube](https://www.youtube.com/watch?v%3DIiyBeR-Guqw)
* [Manage Nix Flake Inputs Like a Pro - YouTube](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
* [LunNova/nixos-configs](https://discourse.nixos.org/t/LunNova/nixos-configs$2
* [lucernae/nixos-pi: How to install NixOS on raspberry PI](https://github.com/lucernae/nixos-pi/)
* [lorri intro](https://www.tweag.io/blog/2019-03-28-introducing-lorri/)
* [lokeshmohanty/nix-config/blob/main/nixos/desktop-environment.nix](https://discourse.nixos.org/t/lokeshmohanty/nix-config/blob/main/nixos/desktop-environment.nix$2
* [LnL7/vim-nix/](https://discourse.nixos.org/t/LnL7/vim-nix/$2
* [List and delete NixOS generations - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/list-and-delete-nixos-generations/29637)
* [linuxmobile/kaku](https://discourse.nixos.org/t/linuxmobile/kaku$2
* [Linux: What is Dash ( /bin/dash ) Shell? - nixCraft](https://www.cyberciti.biz/faq/debian-ubuntu-linux-binbash-vs-bindash-vs-binshshell/)
* [librephoenix/nixos-config](https://discourse.nixos.org/t/librephoenix/nixos-config$2
* [lib.options: NixOS / nixpkgs option handling | nixpkgs](https://ryantm.github.io/nixpkgs/functions/library/options/)
* [Learn nix in Y Minutes](https://learnxinyminutes.com/docs/nix/)
* [Learn how to use the Nix REPL effectively - Aldo Borrero](https://aldoborrero.com/posts/2022/12/02/learn-how-to-use-the-nix-repl-effectively/)
* [Latest Help topics - NixOS Discourse](https://discourse.nixos.org/c/learn/9)
* [Language Constructs - Nix Reference Manual](https://nixos.org/manual/nix/stable/language/constructs.html)
* [landscape.nixlang.wiki](https://landscape.nixlang.wiki/)
* [ksenia-portu/flake/blob/master/flake.nix](https://discourse.nixos.org/t/ksenia-portu/flake/blob/master/flake.nix$2
* [konradmalik.com](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
* [knoc-off/nixos](https://discourse.nixos.org/t/knoc-off/nixos$2
* [kbeerta/flake](https://discourse.nixos.org/t/kbeerta/flake$2
* [kanata - MyNixOS](https://mynixos.com/search?q%3Dkanata)
* [juspay/nix-dev-home: A](https://github.com/juspay/nix-dev-home) [home-manager](https://github.com/juspay/nix-dev-home) [template providing useful tools & settings for Nix-based development (macOS & Linux supported)](https://github.com/juspay/nix-dev-home)
* [juspay/hyperswitch](https://discourse.nixos.org/t/juspay/hyperswitch$2
* [JupyterWith Next - Tweag](https://www.tweag.io/blog/2022-11-17-jupyter-with-next/)
* [Julow/nix-workspaces: Reproducible workspaces using Nix modules.](ghttps://github.com/Julow/nix-workspaces)
* [Julia Evans](https://jvns.ca/) (Nix)
* [jpetazzo.github.io](https://jpetazzo.github.io/2020/04/01/quest-minimal-docker-images-part-3/)
* [journal.platonic.systems](https://journal.platonic.systems/nix-flake-architecture-in-practice/)
* [jdisaacs.com](https://jdisaacs.com/blog/nixos-config/)
* [jameswillia.ms](https://jameswillia.ms/posts/flake-line-by-line.html)
* [jakehamilton/config](https://discourse.nixos.org/t/jakehamilton/config$2
* [Is NixOS Overrated?](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
* [Is it possible to morph Debian into NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/)
* [Introducing Flake-Containers: A simple PoC](https://www.reddit.com/r/NixOS/s/7Ullw5lW4p)
* [intro to home manager - YouTube](https://www.youtube.com/results?search_query%3Dintro%2Bto%2Bhome%2Bmanager)
* [interview on nixos with industry](https://drakerossman.com/blog/interview-with-cto-of-listenfield-agtech-introducing-nixos-to-organization)
* [Installing NixOS with Full Disk Encryption](https://gist.github.com/mara-schulke/43e2632ce73d94028f50f438037c1578)
* [Installing NixOS on a Raspberry Pi | eipi.xyz](https://eipi.xyz/blog/installing-nixos-on-a-raspberry-pi-3/)
* [Installing NixOS on a Raspberry Pi — nix.dev documentation](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html)
* [install-nixos-from-existing-linux](https://discourse.nixos.org/t/install-nixos-from-existing-linux/6856/14)
* [install NIX package manager on Alpine Linux · GitHub](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
* [improving-flakes](https://discourse.nixos.org/t/improving-flakes/12831/56)
* [iharh/nixcfg/tree/6fab8a06850f47df37bd3cb0f027ecf11782cff4/hw](https://discourse.nixos.org/t/iharh/nixcfg/tree/6fab8a06850f47df37bd3cb0f027ecf11782cff4/hw$2
* [I Have Fallen In 💕 Love With ❄️ NixOS | A Basic Introduction To NixOS - YouTube](https://www.youtube.com/watch?v%3DuS8Bx8nQots)
* [http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/](https://www.google.com/url?q=http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* [http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png](https://www.google.com/url?q=http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png)
* [http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](https://www.google.com/url?q=http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
* [how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs/717169?noredirect%3D1%23comment1464428_717169)
* [how-to-create-a-poetry2nix-environment-with-a-flake](https://discourse.nixos.org/t/how-to-create-a-poetry2nix-environment-with-a-flake/23604/6)
* [how-are-you-keeping-devshell-dependencies-live-in-store](https://discourse.nixos.org/t/how-are-you-keeping-devshell-dependencies-live-in-store/16730/2)
* [How to remove old system generations? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/how-to-remove-old-system-generations/6648)
* [HOW to REALLY learn NixOS - YouTube](https://www.youtube.com/watch?v%3D1ED9b7ERTzI)
* [How to manually replicate/reproduce/obtain the sha256 hash specified in Nix with fetchgit or fetchFromGitHub? · Issue #191128 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/191128)
* [How to manage user configuration with flakes without home manager on nixos-21.05? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/how-to-manage-user-configuration-with-flakes-without-home-manager-on-nixos-21-05/16102/11)
* [How to manage computers in Landscape | Ubuntu](https://ubuntu.com/landscape/docs/managing-computers%23heading--access-information-about-computers)
* [How to fetchurl with credentials - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-fetchurl-with-credentials/11994)
* [How to Enable Wayland on NixOS, or: Confusion, Conquest, Triumph](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
* [How to (partially) compensate for the lack of static typing / type annotations? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
* [How do you delete old generations and gc them automatically? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/ejsdhb/how_do_you_delete_old_generations_and_gc_them/)
* [How do Nix builds work?](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)
* [home.stateVersion is not of type `one of "18.09", "19.03", "19.09", "20.03", "20.09", "21.03", "21.05", "21.11"' - Help - NixOS Discourse](https://discourse.nixos.org/t/home-stateversion-is-not-of-type-one-of-18-09-19-03-19-09-20-03-20-09-21-03-21-05-21-11/19691)
* [home-manager/modules/programs/neovim.nix at master · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/master/modules/programs/neovim.nix%23L47)
* [home-manager/modules · main · Nick Hiebert / dotfiles · GitLab](https://gitlab.com/BRBWaffles/dotfiles/-/tree/main/home-manager/modules?ref_type%3Dheads)
* [Home-manager: using hostname for host-specific settings : r/NixOS](https://www.reddit.com/r/NixOS/comments/15coxtr/homemanager_using_hostname_for_hostspecific/)
* [home-manager-shell-nix-shell-for-your-home-manager-config](https://discourse.nixos.org/t/home-manager-shell-nix-shell-for-your-home-manager-config/24632)
* [home-manager-doesnt-seem-to-recognize-sessionvariables](https://discourse.nixos.org/t/home-manager-doesnt-seem-to-recognize-sessionvariables/8488/9)
* [home-manager systemd service - Neuron Zettelkasten](https://neuron.zettel.page/install-systemd)
* [Home-manager installed apps don't show up in Applications Launcher - Help - NixOS Discourse](https://discourse.nixos.org/t/home-manager-installed-apps-dont-show-up-in-applications-launcher/8523)
* [Home-Manager - Dev Handbook](https://dev.jmgilman.com/environment/tools/nix/home-manager/)
* [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23ch-nix-flakes)
* [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23_why_are_the_session_variables_not_set)
* [Home Manager Manual](https://nix-community.github.io/home-manager/index.html%23ch-usage)
* [Home Manager Manual](https://nix-community.github.io/home-manager/)
* [Home Manager - Option Search](https://mipmip.github.io/home-manager-option-search/?query%3Dhyprland)
* [Home Manager - NixOS Wiki](ghttps://nixos.wiki/wiki/Home_Manager)
* [holochain advanced install](https://developer.holochain.org/get-started/install-advanced/)
* [hn thread](https://news.ycombinator.com/item?id%3D37105524)
* [hn thread](https://news.ycombinator.com/item?id%3D35208402)
* [hn thread](https://news.ycombinator.com/item?id%3D30917809)
* [hn thread](https://news.ycombinator.com/item?id%3D30057287) curse of nixos
* [hg.sr.ht](https://hg.sr.ht/~ab/)
* [Hexlet/awesome-lsp-servers](https://discourse.nixos.org/t/Hexlet/awesome-lsp-servers$2
* [henriquekirchheck/nixos-flake](https://discourse.nixos.org/t/henriquekirchheck/nixos-flake$2
* [haslersn](https://github.com/haslersn/any-nix-shell) - fish, xonsh, zsh support for nix-run
* [haseebmajid.dev](https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/)
* [hackernews userscript in rust wasm](https://drakerossman.com/blog/hackernews-userscript-in-rust-wasm)
* [gpu-enabled-docker-containers-in-nixos](https://discourse.nixos.org/t/gpu-enabled-docker-containers-in-nixos/23870)
* [github-numtide-system-manager-manage-system-config-using-nix-on-any-distro](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/13)
* [GitHub - numtide/system-manager: Manage system config using nix on any distro - Links - NixOS Discourse](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/8)
* [GitHub - numtide/system-manager: Manage system config using nix on any distro - Links - NixOS Discourse](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064)
* [GitHub - mikeroyal/NixOS-Guide: NixOS Guide. Learn all about the immutable Nix Operating System and the declarative Nix Expression Language.](https://github.com/mikeroyal/NixOS-Guide)
* [GitHub - cachix/nixpkgs-python: All Python versions, kept up-to-date on hourly basis using Nix.](https://github.com/cachix/nixpkgs-python)
* [Getting started with Nix Flakes and devshell](https://yuanwang.ca/posts/getting-started-with-flakes.html)
* [getting nixos to keep a secret](https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/)
* [Geoffrey Huntley](https://ghuntley.com/)
* [Garbage Collection - Nix Reference Manual](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
* [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* [Gabriella Gonzalez, "How to Write a Nix Derivation" - YouTube](https://www.youtube.com/watch?v%3DbbW6kgB5F2M)
* [Full Disk Encryption - NixOS Wiki](https://nixos.wiki/wiki/Full_Disk_Encryption)
* [Flakes video](https://www.youtube.com/watch?v%3DDXz3FJszfo0)
* [Flakes aren't real and cannot hurt you: a guide to using Nix flakes the non-flake way - jade's www site](https://jade.fyi/blog/flakes-arent-real/)
* [Flakes and Developer Environments (Nix From First Principles: Flake Edition #8) - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
* [flakehub](https://flakehub.com/)
* [flake.nix for poetry2nix](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
* [flake.lock: Update by github-actions[bot] · Pull Request #3 · io12/nix-snapd](ghttps://github.com/io12/nix-snapd/pull/3/commits)
* [flake parts](https://flake.parts/)
* [First Steps with Nix - Building emacs](https://www.heinrichhartmann.com/posts/2021-08-08-nix-emacs/)
* [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950/commits/4a9a41af7b33472c5d5c0dd443f350f4e9cb6599)
* [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950)
* [fetchFromGitLab: support for private repositories - Development - NixOS Discourse](https://discourse.nixos.org/t/fetchfromgitlab-support-for-private-repositories/22900)
* [fastapi-mvc/flake.nix at master · fastapi-mvc/fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc/blob/master/flake.nix)
* [exqisite custom-made nix designs](https://cybernews.com/editorial/the-sweet-fruits-of-hard-work-the-most-exquisite-custom-made-nix-designs/)
* [exploitoverload/PwNixOS](https://discourse.nixos.org/t/exploitoverload/PwNixOS$2
* [erikarvstedt/extra-container](https://discourse.nixos.org/t/erikarvstedt/extra-container$2
* [Enable private pypi repositories with credentials by rskew · Pull Request #390 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/pull/390/files%23diff-25f00f391a440414afdc84d7191b5892db3492e1c0b9a45f9063be83e21d75e4R154)
* [emmaboecker/dotfiles](https://discourse.nixos.org/t/emmaboecker/dotfiles$2
* [emergent mind (yt channel)](https://www.youtube.com/@Emergent_Mind)
* [emacs-twist/twist.nix](https://discourse.nixos.org/t/emacs-twist/twist.nix$2 (emacs twist)
* [Editable install with poetry · Issue #105593 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/105593)
* [Download Nix / NixOS | Nix & NixOS](ghttps://nixos.org/download)
* [dotfiles-nix/flake.nix at main · notusknot/dotfiles-nix](https://github.com/notusknot/dotfiles-nix/blob/main/flake.nix)
* [do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only](https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16)
* [divnix/std](https://github.com/divnix/std)
* [divnix/digga?](https://discourse.nixos.org/t/divnix/digga?$2)
* [divnix](https://github.com/divnix)
* [divnix book intro](https://book.divnix.com/ch02-00-introduction.html)
* [DistroWatch.com: NixOS](https://distrowatch.com/table.php?distribution%3Dnixos)
* [direnv/direnv/wiki/Nix](https://discourse.nixos.org/t/direnv/direnv/wiki/Nix$2
* [devshells nix4noobs](https://nix4noobs.com/flakes/devshells/)
* [devShells and poetry2nix - Development - NixOS Discourse](https://discourse.nixos.org/t/devshells-and-poetry2nix/26837)
* [devos $$$](https://devos.divnix.com/index.html)
* [devenv.sh](http://devenv.sh) 
* [devenv rewrite in rust](https://devenv.sh/blog/2024/03/20/devenv-10-rewrite-in-rust/%23whats-new)
* [Developing Python with Poetry & Poetry2nix: Reproducible flexible Python environments - Tweag](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [Deterministic systems with Nix](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
* [determinate systems](https://determinate.systems/)
* [Derivations (Nix From First Principles: Flake Edition #5) - Tony Finn](ghttps://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-5-derivation-intro/)
* [depreciate-the-use-of-nix-env-to-install-packages](https://discourse.nixos.org/t/depreciate-the-use-of-nix-env-to-install-packages/20139/22)
* [Deleting Old System Profiles - What am I Missing? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/unwip2/deleting_old_system_profiles_what_am_i_missing/)
* [DavidEGrayson/nixcrpkgs](https://discourse.nixos.org/t/DavidEGrayson/nixcrpkgs$2 - expressions for cross-compiling
* [DavHau/nix-portable: Nix - Static, Permissionless, Installation-free, Pre-configured](https://github.com/DavHau/nix-portable)
* [danth/stylix: System-wide colorscheming and typography for NixOS](https://github.com/danth/stylix/)
* [cuda-maintainers cachix](https://app.cachix.org/cache/cuda-maintainers)
* [CT NixOS Install Video](https://www.youtube.com/watch?v%3D_Z32SYFbxpw)
* [creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos](https://discourse.nixos.org/t/creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos/30637)
* [Creating NixOS iso for an older Laptop with i686 (32bit) - Help - NixOS Discourse](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002/2)
* [crane](https://crane.dev/)
* [corps/nix-kernel](https://discourse.nixos.org/t/corps/nix-kernel$2 - need to create
* [configure emacs on nixos at DuckDuckGo](https://duckduckgo.com/?q%3Dconfigure%2Bemacs%2Bon%2Bnixos%26ia%3Dweb)
* [Configuration | Documentation | Poetry - Python dependency management and packaging made easy](https://python-poetry.org/docs/configuration/)
* [community.flake.parts](https://community.flake.parts/)
* [cola-gang industries](https://cola-gang.industries/)
* [Code search results](https://github.com/search?q%3DmkPoetryApplication%26type%3Dcode)
* [Changes after updating home-manager - Today I Learned](ghttps://fnordig.de/til/nix/package-changes.html)
* [carlthome/poetry2nix-example: Playing around with poetry2nix to learn more about Nix for Python development](https://github.com/carlthome/poetry2nix-example)
* [Can't get rid of home-manager package - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/cant-get-rid-of-home-manager-package/8449/6)
* [Can someone show me how to manage $HOME without home-manager? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/j4uc0k/can_someone_show_me_how_to_manage_home_without/)
* [CallMeCaleb94/KyniFlakes](https://discourse.nixos.org/t/CallMeCaleb94/KyniFlakes$2
* [cachix/devenv: Fast, Declarative, Reproducible, and Composable Developer Environments](https://github.com/cachix/devenv)
* [Building a Rust service with Nix](ghttps://fasterthanli.me/series/building-a-rust-service-with-nix)
* [Building a highly optimized home environment with Nix](https://determinate.systems/posts/nix-home-env)
* [brainrake/nixos-tutorial](https://discourse.nixos.org/t/brainrake/nixos-tutorial$2
* [book/](https://www.nushell.sh/book/)
* [blitz_api/flake.nix at 6edad7ac48c80cd40f595b5eab99c0968b5d8b8a · fusion44/blitz_api](https://github.com/fusion44/blitz_api/blob/6edad7ac48c80cd40f595b5eab99c0968b5d8b8a/flake.nix%23L52)
* [Beginners Guide to Nix EP1: Flakes - YouTube](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
* [beautysh/flake.nix at 9845efc3ea3e86cc0d41465d720a47f521b2799c · lovesegfault/beautysh](https://github.com/lovesegfault/beautysh/blob/9845efc3ea3e86cc0d41465d720a47f521b2799c/flake.nix%23L63)
* [bbigras/nix-config](https://discourse.nixos.org/t/bbigras/nix-config$2- [ ]  declarative installation of docker images? 
* [b-src/lazy-nix-helper.nvim: Neovim plugin allowing a single neovim configuration with the Lazy plugin manager to be used on NixOS and other platforms](https://github.com/b-src/lazy-nix-helper.nvim)
* [Awan/nix](https://discourse.nixos.org/t/Awan/nix$2
* [avnibilgin/dotfiles](https://discourse.nixos.org/t/avnibilgin/dotfiles$2
* [argoproj/argo-workflows](https://discourse.nixos.org/t/argoproj/argo-workflows$2 
* [Appendix D. Release Notes](https://nix-community.github.io/home-manager/release-notes.xhtml%23sec-release-22.11-state-version-changes)
* [Appendix A. Home Manager Configuration Options](https://nix-community.github.io/home-manager/options.xhtml)
* [Appendix A. Configuration Options](https://rycee.gitlab.io/home-manager/options.html)
* [Anyone got poetry2nix working with a private PyPI server? : r/NixOS](https://www.reddit.com/r/NixOS/comments/15ivyr3/anyone_got_poetry2nix_working_with_a_private_pypi/)
* [Any documentation on keyd under NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/10ym1ed/any_documentation_on_keyd_under_nixos/)
* [an-incremental-strategy-for-stabilizing-flakes](https://discourse.nixos.org/t/an-incremental-strategy-for-stabilizing-flakes/16323/5)
* [amazing Nix videos (config and secrets)] https://www.youtube.com/@Emergent_Mind 
* [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218/10)
* [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218)
* [ahoneybun blog](https://ahoneybun.net/blog/)
* [Adding non-python dependencies to poetry2nix application - Help - NixOS Discourse](https://discourse.nixos.org/t/adding-non-python-dependencies-to-poetry2nix-application/26755/6)
* [Add missing 'nix profile' subcommands by edolstra · Pull Request #5249 · NixOS/nix](ghttps://github.com/NixOS/nix/pull/5249)
* [accessing-gpus-inside-a-nix-generated-docker-container](https://discourse.nixos.org/t/accessing-gpus-inside-a-nix-generated-docker-container/21122)
* [Accessing a private GitHub repo using builtins.fetchGit? - Help - NixOS Discourse](https://discourse.nixos.org/t/accessing-a-private-github-repo-using-builtins-fetchgit/29610)
* [a-proposal-for-replacing-the-nix-worker-protocol](https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5)
* [A Tour of Nix Flakes | Mattia Gheda](https://ghedam.at/a-tour-of-nix-flakes)
* [2023-nix-developer-dialogues-live-stream](https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386)
* [2022-nix-survey-results](https://discourse.nixos.org/t/2022-nix-survey-results/18983)
* [2022-10-07-nix-team-meeting-minutes-3](https://discourse.nixos.org/t/2022-10-07-nix-team-meeting-minutes-3/22369)
* [/user/matthew-croughan/](https://www.reddit.com/user/matthew-croughan/)
* [[RFC 0137] Nix language versioning by fricklerhandwerk · Pull Request #137 · NixOS/rfcs](https://github.com/NixOS/rfcs/pull/137)
* [[Feature Discussion] Declarative Flatpak Configuration? - Development - NixOS Discourse](https://discourse.nixos.org/t/feature-discussion-declarative-flatpak-configuration/26767/3)
* [(4) Manage Neovim plugins (and more!) with Nix and Home Manager : neovim](https://www.reddit.com/r/neovim/comments/106letr/manage_neovim_plugins_and_more_with_nix_and_home/)
* [(3) Neovim on NixOS? : neovim](https://www.reddit.com/r/neovim/comments/196fqno/neovim_on_nixos/)
->* [gpt4all](https://gpt4all.io/index.html)
-> tools * [NixOS Search - Packages - nix](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnix)
-> * [wiki.nikiv.dev](https://wiki.nikiv.dev/unix/shell/fish)
-> * [russia history](https://freedomlibrary.hillsdale.edu/programs/cca-i-russia/russia-from-1696-1917-an-overview)
-> * [elv.sh](https://elv.sh/learn/)

# Roadmap
* [ ]  stylix
* [ ]  poetry2nix source code
* [ ]  poetry2nix docs
* [ ]  nixCats source code
* [ ]  nix-colors
* [ ]  nix language source code implementation
* [ ]  my own lib
* [ ]  home-manager docs
* [ ]  home-manager code
