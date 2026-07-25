{lib}: let
  jinjaCommand = "TODO";
in {
  instantiateTemplate = filePath: opts: let
    optsWithDefaults =
      {
        name = "tmp";
        fileName = "tmp";
        formatter = null;
        postCommand = null;
        env = {};
      }
      // opts;
    result = lib.runCommand optsWithDefaults.name optsWithDefaults.env ''
      ${jinjaCommand} ${filePath} $out/${optsWithDefaults.fileName}
      ${optsWithDefaults.formatter or "#"} $out/${optsWithDefaults.fileName}
      ${optsWithDefaults.postCommand or "#"} $out/${optsWithDefaults.fileName}

    '';
  in "${result}/${optsWithDefaults.fileName}";

  interpolateTemplateDir = "TODO";
}
