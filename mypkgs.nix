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
  buildPythonPackage = pkgs.python3Packages.buildPythonPackage;
in {
  zet = buildRustPackage rec {
    pname = "zet";
    version = "2024-03-06";

    # nativeBuildInputs = with pkgs; [pkg-config];
    # buildInputs = with pkgs; [openssl];

    src = fetchFromGitHub {
      owner = "yarrow";
      repo = pname;
      rev = "b6a0c67f6ac76fb7bf8234951678b77fbac12d76";
      sha256 = "sha256-CgjcpFyKu1dFnqF1hd0D6h520dSWBX8zX0FusfOAv8Q=";
    };

    cargoSha256 = "sha256-BL5R6dYBmyWB3RO+NYmyw/papa6SUxhhkJEOJD/iwQk=";

    meta = with lib; {
      description = "CLI utility to find the union, intersection, set difference, etc of files considered as sets of lines";
      homepage = "https://github.com/yarrow/zet";
      license = licenses.mit;
    };
  };

  xan = buildRustPackage rec {
    pname = "xan";
    version = "0.15.0";

    src = fetchFromGitHub {
      owner = "medialab";
      repo = pname;
      rev = "1eff9aba37772d77ddbc8c0ff0a226955ad2168e";
      sha256 = "sha256-O+9Gc5TFUfT5J9YbeBn5FKrYl+wSfl8sVM2vCgNvU/A=";
    };

    cargoSha256 = "sha256-rQwGykK5Io5bzRfur4aAbuDPAuwEMJ4xjdjbRTECzXo=";

    meta = with lib; {
      description = "The CSV magician";
      homepage = "https://github.com/medialab/xan";
      license = licenses.unlicense;
    };
  };

  csvtk = buildGoModule rec {
    pname = "csvtk";
    version = "v0.30.1";

    src = fetchFromGitHub {
      owner = "shenwei356";
      repo = pname;
      rev = "af7e36c0b6e9a24867297b15a9c9ae3927891414";
      sha256 = "sha256-W8J9JPgyIrG2Mpifx7I1ipMQgPIODUYD8A1MFXvj23E=";
    };

    vendorHash = "sha256-HM6Ns+FOQ1pYsKaGHhYHB3Cnh01VIkDX9klYMSZB6jI=";
    doCheck = false;

    meta = with lib; {
      homepage = "https://github.com/shenwei356/csvtk/";
      description = "A cross-platform, efficient and practical CSV/TSV toolkit in Golang";
      platforms = platforms.all;
    };
  };

  tinycare-tui = buildGoModule rec {
    pname = "tinycare-tui";
    version = "v1.1";

    src = fetchFromGitHub {
      owner = "DMcP89";
      repo = pname;
      rev = "af53393fd914159131cb210eddd4383112035b8b";
      sha256 = "sha256-zPiTqgjvmH0Yfbj6OKB1yEz2s2tQmF2DgoZz586+s3Y=";
    };

    vendorHash = "sha256-8rufuxBThIdaTl6HfzbxHDx1Dk0fKNz9XVDlma1RU2Q=";
    doCheck = false;

    meta = with lib; {
      homepage = "https://github.com/DMcP89/tinycare-tui";
      description = "TUI application written in GO inspired by tiny-care-terminal";
      platforms = platforms.all;
    };
  };

  mdtt = buildGoModule rec {
    pname = "mdtt";
    version = "v0.2.1";

    src = fetchFromGitHub {
      owner = "szktkfm";
      repo = pname;
      rev = version;
      sha256 = "sha256-OFS/ZhXdvdmlpfCNutsvlhMv1krFlx4Xju8RSl3GS2s=";
    };

    vendorHash = "sha256-sEdDfQnBaqQ/pBubYT0sWMaC3tyi0g/dIfUsrHYrA+Q=";
    doCheck = false;

    meta = with lib; {
      homepage = "https://github.com/szktkfm/mdtt";
      description = "Markdown Table Editor TUI";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };

  reader = buildGoModule rec {
    pname = "reader";
    version = "v0.4.5";

    src = fetchFromGitHub {
      owner = "mrusme";
      repo = pname;
      rev = version;
      sha256 = "sha256-9hZ7ZS+p6PoLKcuHS2re537wxojN2SzhOm5gBuRX9Xc=";
    };

    vendorHash = "sha256-obYdifg3WrTyxgN/VtzgpL31ZOyPNtVT8UDQts0WodQ=";

    doCheck = false;

    meta = with lib; {
      homepage = "https://github.com/mrusme/reader";
      description = "reader is for your command line what the “readability” view is for modern browsers: A lightweight tool offering better readability of web pages on the CLI. ";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  matplotlib-backend-wezterm = buildPythonPackage rec {
    pname = "matplotlib-backend-wezterm";
    version = "2.1.2";
    format = "pyproject";

    src = fetchFromGitHub {
      owner = "yelircaasi";
      repo = pname;
      rev = "8ae1fad818e4d6d4f90d07ca336aa24bbe93971b"; # 2024-07-17
      hash = "sha256-hS8nwkIMavMjCJ1I3vXaT5NZVytsmC+teB2cnrsHX80=";
    };

    buildInputs = [
      pkgs.python311Packages.setuptools
    ];

    propagatedBuildInputs = with pkgs.python311Packages; [
      pkgs.python311Packages.matplotlib
    ];

    meta = with lib; {
      homepage = "https://github.com/lkhphuc/matplotlib-backend-wezterm";
      description = "Show matplotlib plots directly in your Wezterm terminal";
      license = licenses.cc0;
      platforms = platforms.all;
    };
  };
  ansiweather = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
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
    };
  };
  binary-clock = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  bsol = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  castero = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
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
  choose = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  conty = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  diary = buildRustPackage rec {
    # TODO: installs correctly, but needs work
    pname = "diary";
    version = "2021-06-16";

    # nativeBuildInputs = with pkgs; [pkg-config];
    # buildInputs = with pkgs; [openssl];

    src = fetchFromGitHub {
      owner = "actuday6418";
      repo = "Diary";
      rev = "4f705ff67cc813f6c018edba2984bd71f1b30e3f";
      sha256 = "sha256-Y6lUfu0Wj3kka9VXluAdnalM/KULkLXol4pSbEZ07KM=";
    };

    cargoSha256 = "sha256-UbZnmG+zRusEr1aJACvat/tlzHEZhLNaXPznD7L15Ao=";

    meta = with lib; {
      description = "Encrypted memories";
      homepage = "https://github.com/actuday6418/Diary";
      license = licenses.gpl3;
      # maintainers = [];
    };
  };
  dnote = buildGoModule rec {
    # TODO: fix bin names, fts5 error
    pname = "dnote";
    version = "v0.15.1";

    src = fetchFromGitHub {
      owner = pname;
      repo = pname;
      rev = "1ff4c075284055115d4b4f32c6b946dba13d5e95";
      sha256 = "sha256-80CT86YsLeAymnrtNQ5YHPbomKpGOgd7za51IqrILr4=";
    };

    vendorHash = "sha256-XCdzzlT3iYiaFlTljIlxIAYBxgN4jBp3yjetrTWBRfk=";

    doCheck = false;

    meta = with lib; {
      homepage = "https://github.com/dnote/dnote";
      description = "A simple command line notebook for programmers";
      license = licenses.gpl3;
      platforms = platforms.all;
      # maintainers = with maintainers; [  ];
    };
  };
  enhancer-for-youtube = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  enjoy-json = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
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
  forgit = mkDerivation rec {
    pname = "forgit";
    version = "2024-05-12"; # (2024-05-27)

    src = fetchFromGitHub {
      owner = "wfxr";
      repo = pname;
      rev = "17394d10569899eded337dec59ef461f8becea51";
      sha256 = "sha256-odxdySx3Bzxs5RMXJ4nivwltQYIaM/UrPb+A0/pnDSk=";
    };

    dontBuild = true;

    installPhase = ''
      mkdir -p $out/bin
      cp -r bin/* $out/bin/
      mkdir -p $out/completions
      cp -r completions/* $out/completions/
      mkdir -p $out/conf.d
      cp -r conf.d/* $out/conf.d/
      cp forgit.plugin.zsh $out/forgit.plugin.sh
      chmod +x $out/bin/git-forgit
      chmod +x $out/forgit.plugin.sh
    '';

    meta = with lib; {
      homepage = "https://github.com/wfxr/forgit";
      description = "A utility tool powered by fzf for using git interactively.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  git-fuzzy = mkDerivation rec {
    pname = "git-fuzzy";
    version = "2023-11-21"; # (2024-05-27)

    src = fetchFromGitHub {
      owner = "bigH";
      repo = pname;
      rev = "41b7691a837e23e36cec44e8ea2c071161727dfa";
      sha256 = "sha256-fexv5aesUakrgaz4HE9Nt954OoBEF06qZb6VSMvuZhw=";
    };

    dontBuild = true;

    installPhase = ''
      mkdir -p $out/bin
      cp -r bin/* $out/bin/
      mkdir -p $out/lib
      cp -r lib/* $out/lib/
      chmod +x $out/bin/git-fuzzy
    '';

    meta = with lib; {
      homepage = "https://github.com/bigH/git-fuzzy/tree/main";
      description = "Interactive `git` with the help of `fzf`";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  texel = buildPythonPackage rec {
    pname = "texel";
    version = "0.2.1";

    src = fetchFromGitHub {
      owner = "Lauriat";
      repo = pname;
      rev = "9dcfba163c66e9da5e9b0757c4e587f297b0cfcb"; # 2024-07-17
      hash = "sha256-tpCml5M/no+Uq7oOKgQT8yCW8L5RoRFxnxbrDVJxnZQ=";
    };

    buildInputs = [
    ];

    propagatedBuildInputs = with pkgs.python311Packages; [
      openpyxl
      odfpy
      pyperclip
      numpy
    ];

    meta = with lib; {
      homepage = "https://github.com/Lauriat/texel";
      description = "Command line interface for reading spreadsheets";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  git-plus = buildPythonPackage rec {
    pname = "git-plus";
    version = "0.4.0";

    format = "pyproject";

    src = fetchFromGitHub {
      owner = "yelircaasi";
      repo = pname;
      rev = "c048660216d583c1fe0ba15d0e1cf435893317ab"; # 2024-05-27
      hash = "sha256-HwWxJKyqa2A/Pn01NxgeeeuccTu1BS13ong4kJlbg8w=";
    };

    nativeBuildInputs = [
      pkgs.python311Packages.poetry-core
    ];

    propagatedBuildInputs = [
      pkgs.git
    ];

    meta = with lib; {
      homepage = "https://github.com/yelircaasi/git-plus";
      description = "a set of git utilities";
      license = licenses.asl20;
      platforms = platforms.all;
    };
  };
  guesswidth = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  harmonoid = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  lf-sh = {
    #TODO

    meta = with lib; {
      homepage = "https://github.com/suewonjp/lf.sh";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  lotus123 = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  loungy = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  lxroot = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  lyssa = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  multi-git-status = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  music-player-plus = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  neosurf = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  olivia = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
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
  pixelfx = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  rcz = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  rdict = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  rebound = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  refind = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  siren = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  squeeze = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  surf-wayland = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  tuido = buildGoModule rec {
    pname = "tuido";
    version = "0.0.9";

    src = fetchFromGitHub {
      owner = "NiloCK";
      repo = pname;
      rev = "v${version}";
      sha256 = "sha256-VEp5Wp69r7806t3XJ4AxS7pta4HktxFSFfLIYCq7Y+k=";
    };

    vendorHash = "sha256-+Jo5sv7jD4in4HoYGvpGumM9kXrfksUu/4sSjUP5HG8=";

    doCheck = false;

    meta = with lib; {
      homepage = "https://github.com/NiloCK/tuido";
      description = "a text user interface for navigating [x]it! spec todo across multiple files";
      license = licenses.gpl3;
      platforms = platforms.all;
      # maintainers = with maintainers; [  ];
    };
  };
  vmn = {
    #TODO

    meta = with lib; {
      #TODO
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  waybar-weather = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  whatsie = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  youtube-viewer = {
    #TODO

    meta = with lib; {
      homepage = "";
      description = "";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
}
