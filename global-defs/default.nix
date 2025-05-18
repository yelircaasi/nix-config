{lib}: let
  sortedUnique = _list: (lib.unique (builtins.sort (p: q: p < q) _list));
  concatSortedUnique = sep: _list: builtins.concatStringsSep sep (sortedUnique _list);
in rec {
  utils = import ./utils {inherit lib;};
  key = import ./keybindings {inherit lib;};
  color = import ./colors {inherit lib;};
  inherit (import ./setup {}) monitors setups;

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

  selectViaConsoleSet = devCfg: setLists_: buildList devCfg.consoleSet devCfg.setOverrides setLists_;

  selectViaGuiSet = devCfg: setLists_: buildList devCfg.guiSet devCfg.setOverrides setLists_;

  # TODO::prio1: write function buildAttrSet analogous to buildLists (and selectVia... --> selectAttrsVia...)

  constructFromList = nameFunc: valueFunc: _list:
    lib.listToAttrs (map
      (name: lib.nameValuePair (nameFunc name) (valueFunc name))
      _list);

  constructFromSet = nameFunc: valueFunc: _set:
    lib.mapAttrs'
    (name: value: lib.nameValuePair (nameFunc name value) (valueFunc name value))
    _set;

  crossMap = f: list1: list2:
    lib.flatten
    (
      map
      (a:
        map
        (b: f a b)
        list2)
      list1
    );

  filterAttrsFromList = _names: _set:
    lib.filterAttrs
    (name: _: builtins.elem name _names)
    _set;

  writeJSON = fileName: attrSet: builtins.toFile fileName (builtins.toJSON attrSet);

  inherit sortedUnique concatSortedUnique;
  concatListsSortedUnique = sep: _lists: concatSortedUnique sep (builtins.concatLists _lists);

  cumulativeSum = _list:
    lib.tail (lib.foldl'
      (acc: x: acc ++ [(lib.last acc + x)])
      [0]
      _list);
}
