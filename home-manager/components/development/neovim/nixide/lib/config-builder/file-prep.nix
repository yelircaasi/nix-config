{
  cfg,
  lib,
}: let
  strings = {
    requirePython = "pyls = require('python-ls')";
    requireRust = "rustls = require('rust-ls')";
    pylsSetup = ''
      pyls.setup({
        venv = true,
        version = 3.11,
        sqlite = true,
      })
    '';
    rustlsSetup = ''
    '';
  };
in rec {
  stringsToLua = stringsToFormattedFile luaFormat;

  stringsToFormattedFile = formatFunc: stringList:
    formatFunc (joinLines stringList);

  luaFormat = code:
    lib.trim (lib.runCommand "lua-format" {
      buildInputs = [luafmt];

      shellHook = ''
        echo "${code}" | luafmt --stdin
      '';
    });

  joinLines = lines: join lines; # TODO

  # example
  exampleFile = stringsToLua [
    "require('lsp')"
    (lib.mkIf cfg.languages.python strings.requirePython)
    (lib.mkIf cfg.languages.rust strings.requireRust)
    (lib.mkIf cfg.languages.python strings.pylsSetup)
    "return pyls, rustls"
  ];
}
