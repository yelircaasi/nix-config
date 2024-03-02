{pkgs, ...}: let
in {
  inherit
    (pkgs.writers)
    writeBash
    writeBashBin
    writeDash
    writeDashBin
    writeFish
    writeFishBin
    writeHaskell
    writeHaskellBin
    writeNu # -> https://github.com/nushell/nu_scripts
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
    ;
  writePython3NoDepsBin = binName: scriptPath:
    pkgs.writers.writePython3Bin binName {libraries = [pkgs.python311];}
    (builtins.readFile
      scriptPath);
  /*
  https://github.com/NixOS/nixpkgs/blob/fcba479b3379331077ab893e4129024474c553f5/pkgs/build-support/writers/scripts.nix
  https://github.com/NixOS/nixpkgs/blob/8fdcb826154d5aac4642a97a4b8c9241e2a16dc8/pkgs/build-support/trivial-builders/default.nix#L54
  makeScriptWriter { interpreter, check ? "" }: nameOrPath: content: ...

  writeBash = makeScriptWriter { interpreter = "${pkgs.bash}/bin/bash"; }
  makeScriptWriter { interpreter = "${pkgs.dash}/bin/dash"; } "hello" "echo hello world"

  writeSimpleC = makeBinWriter { compileScript = name: "gcc -o $out $contentPath"; }
  makeBinWriter = { compileScript, strip ? true }: nameOrPath: content:





  writeGo = ;
  writeGoBin = ;

  writeFennel = ;
  writeFennelBin = ;
  writeCL = ;
  writeCLBin = ;
  writeCpp = ;
  writeCppBin = ;
  writePurescript = ;
  writePureScriptBin = ;
  writeCython = ;
  writeCythonBin = ;
  writeNim = ;
  writeNimBin = ;
  writeZig = ;
  writeZigBin = ;
  writeV = ;
  writeVBin = ;
  writeRaku = ;
  writeRakuBin = ;
  writeTS = ;
  writeTSBin  = ;
  writeIdris = ;
  writeIdrisBin = ;
  writeAgda = ;
  writeAgdaBin = ;
  writeAda = ;
  writeAdaBin = ;
  */
}
