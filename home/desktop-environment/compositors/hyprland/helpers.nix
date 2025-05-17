{
  pkgs,
  lib,
  g,
  deviceConfig,
}: {
  # create one hyprland config dir for each monitor setup
  # mkPerSetup = rawSet:
  #   lib.attrsets.concatMapAttrs
  #   (
  #   (g.constructFromList
  #     (setupName:
  #       builtins.replaceStrings
  #       ["__SETUP_DIR__"]
  #       ["hypr-setups/${setupName}"]
  #       setupName)
  #     (setupName: "")
  #   )
  #     deviceConfig.monitorSetups);

  # mkConfig =

  mkPerMonitorPerSetup = nameMaker: attrMaker: setupSet:
    lib.concatMapAttrs
    (
      setupName: setupInfo:
        g.constructFromList
        # (monitorName: configMaker setupName monitorName)
        (monitorName: nameMaker setupName monitorName)
        (monitorName: attrMaker setupName monitorName)
        (map (monitorSet: monitorSet.name) g.setups.${setupName}.monitors)
    )
    setupSet;

  mkPerSetup = nameMaker: attrMaker: _setupSet:
    g.constructFromSet
    (setupName: _: nameMaker setupName)
    (setupName: _: attrMaker setupName)
    _setupSet;

  # configMaker: setupSet':
  #   lib.foldlAttrs (
  #     setupName: acc:
  #       acc // (configMaker setupName)
  #   ) {}
  #   setupSet';23r
}
