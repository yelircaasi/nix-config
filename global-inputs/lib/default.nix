let
  b = builtins;
  placeholderTypes = {
    C = "color";
    K = "key";
  };
  findAllPlaceholders = fileString: getMatches (splitFileString fileString);
  getNewValues = globalSet: placeholderList: b.map (lookUpPlaceholder globalSet) placeholderList;
  splitFileString = fileString: (b.split "([$][CK]_[[:alnum:]_]*[$])" fileString);
  getMatches = splitList: b.map b.head (filterMatches splitList);
  filterMatches = matchList: b.filter (item: (b.typeOf item) == "list") matchList;
  stripPlaceholder = phString: b.substring 3 (b.stringLength phString - 4) phString;
  lookUpPlaceholder = globalSet: placeholder: let
    setName = mapPlaceholderType placeholder;
    attrName = stripPlaceholder placeholder;
  in
    globalSet."${setName}"."${attrName}";
  mapPlaceholderType = phString: let
    typeName = b.substring 1 1 phString;
  in
    placeholderTypes."${typeName}";
in
  (import ./color_utils.nix)
  // rec {
    # interpolateColors = globals: filePath: "TO DO";
    # interpolateKeybinds = globals: filePath: "TO DO";
    readAndInterpolate = globalSet: filePath: let
      fileString = b.readFile filePath;
      placeholders = findAllPlaceholders fileString;
    in
      b.replaceStrings
      placeholders
      (getNewValues globalSet placeholders)
      fileString;
    colorsFromTOML = x: "TO DO";
    keybindingsFromJSON = x: "TO DO";
    #interpolateFile = attrSet: fileString: (interpolatePlaceholders (findAllPlaceholders fileString) fileString);
    #interpolatePlaceholders = placeholderList: fileString:
    #  b.replaceString
    #   (formatPlaceholders placeholderList)
    #   (retrieveFromGlobalAttrSet attrSet placeholderList)
    #   fileString;
    #formatPlaceholders = sep: placeholderList: b.map (formatPlaceholders sep) placeholderList;
  }
