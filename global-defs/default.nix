{lib}: rec {
  utils = import ./utils {inherit lib;};
  key = import ./keybindings {inherit lib;};
  color = import ./colors {inherit lib;};

  removeElements = toRemove: originalList:
    builtins.filter (item: !(builtins.elem item toRemove)) originalList;

  buildList = setLevel: setOverrides @ {
    add,
    remove,
  }: _setLists: let
    setLists =
      {
        minimal = [];
        core = [];
        extended = [];
        maximal = [];
      }
      // _setLists;
  in
    removeElements setOverrides.remove
    (
      (
        if setLevel != "none"
        then setLists.minimal
        else []
      )
      ++ (
        if (builtins.elem setLevel ["none" "minimal"])
        then []
        else setLists.core
      )
      ++ (
        if (builtins.elem setLevel ["extended" "maximal"])
        then setLists.extended
        else []
      )
      ++ (
        if setLevel == "maximal"
        then setLists.maximal
        else []
      )
      ++ setOverrides.add
    );

  asListIf = nameBool: namePath:
    if nameBool
    then [namePath]
    else [];

  asListIfIn = nameString: nameList: namePath:
    if (builtins.elem nameString nameList)
    then [namePath]
    else [];

  asListFrom = nameList: interpolator: map interpolator nameList;

  asNonemptyString = stringOrNull:
    if (builtins.isNull stringOrNull)
    then "null"
    else stringOrNull;
}
