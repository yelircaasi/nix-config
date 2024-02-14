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
  (import ./color_utils.nix)
  // rec {
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
  }
