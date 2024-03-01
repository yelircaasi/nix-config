{pkgs, ...}: let
  writePython3BinSdtlib = binName: scriptPath:
    pkgs.writers.writePython3Bin binName {libraries = [pkgs.python311];}
    builtins.readFile
    scriptPath;
in {
  /*
  https://github.com/NixOS/nixpkgs/blob/fcba479b3379331077ab893e4129024474c553f5/pkgs/build-support/writers/scripts.nix
  https://github.com/NixOS/nixpkgs/blob/8fdcb826154d5aac4642a97a4b8c9241e2a16dc8/pkgs/build-support/trivial-builders/default.nix#L54
  makeScriptWriter { interpreter, check ? "" }: nameOrPath: content: ...

  writeBash = makeScriptWriter { interpreter = "${pkgs.bash}/bin/bash"; }
  makeScriptWriter { interpreter = "${pkgs.dash}/bin/dash"; } "hello" "echo hello world"

  writeSimpleC = makeBinWriter { compileScript = name: "gcc -o $out $contentPath"; }
  makeBinWriter = { compileScript, strip ? true }: nameOrPath: content:

  writeBash
  writeBashBin
  writeDash
  writeDashBin
  writeFish
  writeFishBin
  writeHaskell
  writeHaskellBin
  writeNu -> https://github.com/nushell/nu_scripts
  writeNuBin
  writeRuby
  writeRubyBin
  writeLua
  writeLuaBin
  writeRust
  writeRustBin
  writeJS
  writeJSBin
  writePerl
  writePerlBin
  writePython3
  writePython3Bin




  */

  home.packages = with pkgs; [
    (
      writers.writeBashBin
      "hm"
      ''
        __current=$PWD
        cd $HOME/nix-config
        git add .
        home-manager switch --flake .#${deviceConfig.name}
        cd $__current
      ''
    )
    (
      writers.writeBashBin
      "nrs"
      ''
        __current=$PWD
        cd $HOME/nix-config
        git add .
        sudo nixos-rebuild switch --flake .#${deviceConfig.name}
        cd $__current
      ''
    )

    (writePython311BinStdlib "viewhm" ./viewhm.py)
    (writers.writeRustBin "lspath" (builtins.readFile ./lspath.rs))
    (writers.writeBin "pysummary" (builtins.readFile ./pysummary.py))
    (writers.writeBin "gitsummary" (builtins.readFile ./gitsummary.lua))
    (writers.writeBin "ggs" (builtins.readFile ./ggs.lua))
    (writers.writeBin "ggsr" (builtins.readFile ./ggsr.lua))
    (writers.writeBin "mytree" (builtins.readFile ./mytree.rs))
    (writers.writeBin "fontsummary" (builtins.readFile ./fontsummary.nu))
    (writers.writeBin "iconsummary" (builtins.readFile ./iconsummary.nu))
    (writers.writeBin "astable" (builtins.readFile ./astable.go))
    (writers.writeBin "texclean" (builtins.readFile ./texclean.sh))
    (writers.writeBin "q2d" (builtins.readFile ./q2d.rs))
    (writers.writeBin "q2s" (builtins.readFile ./q2s.ts))
    (writers.writeBin "fprun" (builtins.readFile ./fprun.sh))
    (writers.writeBin "flakesummary" (builtins.readFile ./flakesummary.hs))
    (writers.writeBin "scriptdoc" (builtins.readFile ./scriptdoc.rs.))
    (writers.writeBin "dockersummary" (builtins.readFile ./dockersummary.nu))
    (writers.writeBin "colorsummary" (builtins.readFile ./colorsummary.nu))
    (writers.writeBin "envvarsummary" (builtins.readFile ./envvarsummary.nu))
    (writers.writeBin "devicesummary" (builtins.readFile ./devicesummary.nu))
    (writers.writeBin "audiosummary" (builtins.readFile ./audiosummary.nu))
    (writers.writeRustBin "nixfetch" (builtins.readFile ./nixfetch.rs))
    (writers.writeDashBin "runin" (builtins.readFile ./runin.sh))
    (writers.writeBin "fdenv" (builtins.readFile ./fdenv.sh))
    (writers.writeBin "hmtree" (builtins.readFile ./hmtree.hs))
    (writers.writeBin "nixtree" (builtins.readFile ./nixtree.hs))
    (writers.writeBin "cudatest" (builtins.readFile ./cudatest.py))
    (writers.writeBin "cudahelper" (builtins.readFile ./cudahelper.py))
    (writers.writeBin "langsummary" (builtins.readFile ./langsummary.hs))
    (writers.writeBin "flaketree" (builtins.readFile ./flaketree.hs))
  ];
}
