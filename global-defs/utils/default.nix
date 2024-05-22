{lib}: let
  b = builtins;

  findAllPlaceholders = fileString: getMatches (splitFileString fileString);

  findAllPlaceholdersCQ = fileString: getMatches (splitFileStringConsumeQuotes fileString);

  getNewValues = globalSet: placeholderList: b.map (lookUpPlaceholder globalSet) placeholderList;

  getNewValuesCQ = globalSet: placeholderList: b.map (lookUpPlaceholderCQ globalSet) placeholderList;
  
  splitFileStringParametrized = regex: fileString: (b.split regex fileString);

  splitFileString= splitFileStringParametrized "(<[|] [[:alnum:]_\\.]* [|]>)" ;

  splitFileStringConsumeQuotes = splitFileStringParametrized "('<[|] [[:alnum:]_\\.]* [|]>')" ;

  getMatches = splitList: b.map b.head (filterMatches splitList);

  filterMatches = matchList: b.filter (item: (b.typeOf item) == "list") matchList;

  stripPlaceholder = phString: b.substring 3 ((b.stringLength phString) - 6) phString;

  stripPlaceholderCQ = phString: b.substring 4 ((b.stringLength phString) - 8) phString;

  splitPlaceholderBody = phBodyString: (b.filter (item: (b.typeOf item) == "string") (b.split "\\." phBodyString));

  lookUpPlaceholder = globalSet: placeholder: let
    attrName = stripPlaceholder placeholder;
    attrPath = splitPlaceholderBody attrName;
  in
    lib.attrsets.getAttrFromPath attrPath globalSet;

  lookUpPlaceholderCQ = globalSet: placeholder: let
    attrName = stripPlaceholderCQ placeholder;
    attrPath = splitPlaceholderBody attrName;
  in
    lib.attrsets.getAttrFromPath attrPath globalSet;
in
  (import ./color_utils.nix {inherit lib;})
  // rec {
    readAndInterpolate = globalSet: filePath: let
      fileString = b.readFile filePath;
      placeholders = findAllPlaceholders fileString;
    in
      b.replaceStrings
      placeholders
      (getNewValues globalSet placeholders)
      fileString;

    readAndInterpolateCQ = globalSet: filePath: let
      fileString = b.readFile filePath;
      placeholders = findAllPlaceholdersCQ fileString;
    in
      b.replaceStrings
      placeholders
      (getNewValuesCQ globalSet placeholders)
      fileString;

    interpolate = globalSet: fileString: let
      placeholders = findAllPlaceholders fileString;
    in
      b.replaceStrings
      placeholders
      (getNewValues globalSet placeholders)
      fileString;

    interpolateCQ = globalSet: fileString: let
      placeholders = findAllPlaceholdersCQ fileString;
    in
      b.replaceStrings
      placeholders
      (getNewValuesCQ globalSet placeholders)
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

    readAndInterpolateFilesCQ = globalSet: pathInfo: dotfileNameList:
    # pathInfo = { xdgAttrName = "..."; relativeDir = ./...; fileSuffix = "...";};
      builtins.foldl'
      (
        xdgConfigFileSet: dotfileName: let
          slashFullName = "/${dotfileName}${pathInfo.fileSuffix}";
          xdgAttrName = pathInfo.xdgAttrName + slashFullName;
          fullRelPath = pathInfo.relativeDir + slashFullName;
        in
          xdgConfigFileSet // {"${xdgAttrName}".text = readAndInterpolateCQ globalSet fullRelPath;}
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

    complexNixSetToJSON = attrSet: let
      evalValues = complexSet:
        lib.attrSets.mapAttrs
        (name: value:
          if (builtins.typeOf value) == "set"
          then evalValues
          else value)
        complexSet;
      evaluated = evalValues attrSet;
    in
      builtins.toJSON evaluated;
  }
