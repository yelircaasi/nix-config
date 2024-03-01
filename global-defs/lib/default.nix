{lib}: let
  b = builtins;

  findAllPlaceholders = fileString: getMatches (splitFileString fileString);

  getNewValues = globalSet: placeholderList: b.map (lookUpPlaceholder globalSet) placeholderList;

  splitFileString = fileString: (b.split "(<[|] [[:alnum:]_\\.]* [|]>)" fileString);

  getMatches = splitList: b.map b.head (filterMatches splitList);

  filterMatches = matchList: b.filter (item: (b.typeOf item) == "list") matchList;

  stripPlaceholder = phString: b.substring 3 ((b.stringLength phString) - 6) phString;

  splitPlaceholderBody = phBodyString: (b.filter (item: (b.typeOf item) == "string") (b.split "\\." phBodyString));

  lookUpPlaceholder = globalSet: placeholder: let
    attrName = stripPlaceholder placeholder;
    attrPath = splitPlaceholderBody attrName;
  in
    lib.attrsets.getAttrFromPath attrPath globalSet;
in
  (import ./color_utils.nix lib)
  // rec {
    readAndInterpolate = globalSet: filePath: let
      fileString = b.readFile filePath;
      placeholders = findAllPlaceholders fileString;
    in
      b.replaceStrings
      placeholders
      (getNewValues globalSet placeholders)
      fileString;

    readAndInterpolateFiles = globalSet: pathInfo: dotfileNameList:
    # pathInfo = { xdgAttrName = "..."; relativeDir = ./...; fileSuffix = "...";};
      builtins.foldl'
      (
        xdgConfigFileSet: dotfileName: let
          slashFullName = "/${dotfileName}${pathInfo.fileSuffix}";
          xdgAttrName = pathInfo.xdgAttrName + slashFullName;
          fullRelPath = pathInfo.relativeDir + slashFullName;
        in
          xdgConfigFileSet // {"${xdgAttrName}".text = readAndInterpolate globalSet fullRelPath;}
      )
      {}
      dotfileNameList;

    colorsFromTOML = x: "TO DO";

    keybindingsFromJSON = x: "TO DO";

    listNeighboringImports = _:
      map
      (file: ./. + "/${file}")
      (
        lib.strings.filter
        (file: ! lib.strings.hasPrefix "." file && file != "default.nix")
        (builtins.attrNames (builtins.readDir ./.))
      );
  }
