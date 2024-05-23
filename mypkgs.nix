{pkgs}: let
  inherit
    (pkgs)
    lib
    stdenv
    fetchFromGitHub
    fetchFromGitLab
    fetchFromSourcehut
    buildGoModule
    buildNimPackage
    ;

  mkDerivation = pkgs.stdenv.mkDerivation;
  buildRustPackage = pkgs.rustPlatform.buildRustPackage;
  # buildNimPackage = pkgs.nimPackages.buildNimPackage;
in {
  organize-rt = buildRustPackage rec {
    pname = "organize-rt";
    version = "1.0.1";

    # nativeBuildInputs = with pkgs; [pkg-config];
    # buildInputs = with pkgs; [openssl];

    src = fetchFromGitLab {
      owner = "foxido";
      repo = "organize-rt";
      rev = "ec8185787f7f8accce983b1980c15bcf27edd169";
      sha256 = "sha256-jnSlRuotMsGn6DGoiZIqn5d7oq/svwCQ/lmg7SPoSeo=";
    };

    cargoSha256 = "sha256-jU+UdL20rGlf1/xH9mpDcibWb4FHDlkbQs/2BKQl6uY=";

    meta = with lib; {
      description = "Organize files based on regex rules, file extensions by default.";
      homepage = "https://gitlab.com/foxido/organize-rt";
      license = licenses.gpl3;
      # maintainers = [];
    };
  };
  antidot = buildGoModule rec {
    pname = "antidot";
    version = "0.6.3";

    src = fetchFromGitHub {
      owner = "doron-cohen";
      repo = pname;
      rev = "v${version}";
      sha256 = "02dsc8l7iqkss1fx3sawmzggqk0k04664hfhrc6f0cv0jajkzknf";
    };

    vendorHash = "sha256-JHSp0vkqP9tCrV6jviJR9G7t0a/RGtLNK3O7z5RBFFk=";

    doCheck = false;

    meta = with lib; {
      homepage = "https://github.com/doron-cohen/antidot";
      description = "Cleans up your $HOME from those pesky dotfiles";
      license = licenses.mit;
      platforms = platforms.all;
      # maintainers = with maintainers; [  ];
    };
  };

  filesort = buildRustPackage rec {
    pname = "filesort";
    version = "v1.2.2";

    nativeBuildInputs = with pkgs; [pkg-config];
    buildInputs = with pkgs; [openssl];

    src = fetchFromGitHub {
      owner = "yelircaasi";
      repo = "filesort";
      rev = "3eb3ddbfcc8003a6dfa36b95acaebc791287759c";
      sha256 = "sha256-3TNeLfI0DorsX44nI462R4zgonNRA12MYudsYqI7FDE=";
    };

    cargoSha256 = "sha256-gUVwWbWtA6wuGVQjNc6ItUOHZppMYBYe5X4LwBzC/JU=";

    meta = with lib; {
      description = "file-sorter-rs is an automatic file sorting application that sorts your files into folders based on their file extension. With FileSorterX, you can easily keep your files organized and find what you need quickly.";
      homepage = "https://github.com/yelircaasi/filesort";
      license = licenses.mit;
      # maintainers = [];
    };
  };

  # chawan = buildNimPackage rec {
  #   pname = "chawan";
  #   version = "2024-05-23";

  #   src = fetchFromSourcehut {
  #     owner = "~bptato";
  #     repo = pname;
  #     rev = "8c7a2a582baff30ccbf76f52b6b48cc979ea62e2";
  #     hash = "sha256-FarE55GjGeGEQf2k4ZKxHr4ZSwmFdeOWetUf1RwXJUI=";
  #   };

  #   meta = with lib; {
  #     description = "a web browser for your terminal";
  #     homepage = "https://sr.ht/~bptato/chawan/";
  #     license = licenses.mit;
  #     # maintainers = with maintainers; [ sikmir ];
  #   };
  # };
  chawan = mkDerivation rec {
    pname = "chawan";
    version = "unstable-2024-01-15";
    outputs = ["out" "man"];
    src = fetchFromSourcehut {
      owner = "~bptato";
      repo = pname;
      rev = "f637588d76627368bf7d82f6aa8f5596fe53bddf"; # DATE: 2024-01-15
      hash = "sha256-sfbDC6tcvmo2p5QX2REY9jrOUeoVKhpfJmiSlthBLgE=";
      # rev = "8c7a2a582baff30ccbf76f52b6b48cc979ea62e2"; # DATE: 2024-05-23
      # hash = "sha256-ScnQ1+cqYf55GknryoLMIXQo0I4UeObxhvYxB+pdW7Y=";
      fetchSubmodules = true;
    };

    nativeBuildInputs = with pkgs; [
      pkg-config
      nim2
      pandoc
    ];

    buildInputs = with pkgs; [
      zlib
      curl
    ];

    makeFlags = [
      "PREFIX=${builtins.placeholder "out"}"
    ];

    enableParallelBuilding = true;

    postBuild = ''
      make manpage
    '';

    # passthru.updateScript = writeScript "update-chawan" ''
    #   #!/usr/bin/env nix-shell
    #   #!nix-shell -i bash -p nix-prefetch-git jq common-updater-scripts coreutils

    #   set -euo pipefail

    #   info="$(
    #   	nix-prefetch-git --fetch-submodules --no-deepClone --branch-name master https://git.sr.ht/~bptato/chawan |
    #   		jq -r '(."date" | split("T"))[0], ."hash", ."rev"' |
    #   		tr '\n' ' '
    #   )"

    #   read -r date hash rev <<<$info

    #   update-source-version chawan "unstable-$date" "$hash" --rev="$rev"
    # '';

    meta = with lib; {
      description = "A text-mode web browser";
      longDescription = ''
        A text-mode web browser. It displays websites in your terminal and allows you to navigate on them.
        It can also be used as a terminal pager.
      '';
      homepage = "https://sr.ht/~bptato/chawan/";
      license = licenses.unlicense;
      mainProgram = "cha";
    };
  };
  lotus123 = {};
  enjoy-json = {};
  squeeze = {};
  choose = {};
  ansiweather = {};
  guesswidth = {};
  rebound = {};
  binary-clock = {};
  rdict = {};
  waybar-weather = {};
  loungy = {};
  conty = {};
  lxroot = {};
  neosurf = {};
  surf-wayland = {};
  enhancer-for-youtube = {};
  siren = {};
  harmonoid = {};
  music-player-plus = {};
  lyssa = {};
  olivia = {};
  castero = {};
  youtube-viewer = {};
  pixelfx = {};
  whatsie = {};
  bsol = {};
  refind = {};
  rcz = {};
  vmn = {};
  git-plus = {};
  multi-git-status = {};
  forgit = {};
  git-fuzzy = {};
}
