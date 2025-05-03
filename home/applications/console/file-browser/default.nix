{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./nnn
    ./xplr
    ./yazi
  ];
}
/*
   TODO::prio1: implement following logic and then apply it to gui as well (guiSet in deviceConfig)


{
  imports = (
    includeIfCore deviceConfig.consoleSet [
      ./nnn
      ./xplr
      ./yazi
    ]
  ) ++ (
    includeIfExtended deviceConfig.consoleSet [
      ...
    ]
  ) ++ (
    includeIfMaximal deviceConfig.consoleSet [
      ...
    ]
  );
}

OR, even cleaner:

{
  imports = includeBySet deviceConfig.consoleSet {
    minimal = [];
    core = [];
    extended = [];
    maximal = [];
  };
}


includeBySet = setName: _setLists: let
  setLists = {
      minimal = [];
      core = [];
      extended = [];
      maximal = [];
    } // _setLists
  in
  (if setName != "none" then setLists.minimal else [])
  ++ (if (setName == "none") or (setName == "minimal") then [] else setLists.core)
  ++ (if setName == "extended" or setName == "maximal" then setLists.extended else [])
  ++ (if setName == "maximal" then setLists.maximal else [])
  ;
*/

