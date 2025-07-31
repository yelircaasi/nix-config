{
  inputs,
  g,
}: let
  pkgs = import inputs.nixpkgs {
    system = "x86_64-linux";
    overlays = [inputs.nixgl.overlay];
  };
  mypkgs = import ./mypkgs.nix {inherit pkgs;};
  configWrapper = adHocFunction: {
    #
    # basics
    name,
    description,
    userName,
    isWork,
    isGUI,
    isNixOS,
    #
    # concentric app sets and overrides
    consoleSet,
    guiSet,
    setOverrides,
    #
    # development tools
    defaultShell,
    otherShells,
    prompt,
    #
    # desktop environment
    wallpaper,
    monitorSetups,
    compositors,
    desktopShell,
    wayland,
    nvidia,
    pipewire,
    jack,
    networkmanager,
    #
    # specific guis
    terminalEmulators,
    browsers,
    readers,
    editors,
    messagers,
    #
    # containers
    docker,
    podman,
    distrobox,
    #
    # other
    sops,
    ssh-server,
    printing,
    extraGroups,
    extraSystemPackageNames,
    #
    # device-specific modules to include
    additionalModules,
  } @ deviceConfig:
    adHocFunction deviceConfig;
in rec {
  # updateAttrsWith = defaultSet: setOfSets:
  #   builtins.mapAttrs
  #   (name: configSet: defaultSet // configSet)
  #   setOfSets;

  makeNixosConfig = deviceConfig: configWrapper makeNixosConfig' deviceConfig;

  makeNixosConfig' = deviceConfig:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs g deviceConfig mypkgs;};
      modules =
        [
          ./system/configuration.nix
        ]
        ++ deviceConfig.additionalModules;
    };

  makeHomeManagerConfig = deviceConfig: configWrapper makeHomeManagerConfig' deviceConfig;

  makeHomeManagerConfig' = deviceConfig:
    inputs.home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = {inherit inputs g deviceConfig mypkgs;};
      modules = [./home/common-from-device-config.nix] ++ deviceConfig.additionalModules;
    };

  deviceMapper = cfgMaker: devCfgs:
    builtins.mapAttrs
    (name: configSet: cfgMaker configSet)
    devCfgs;

  makeNixosConfigurations = deviceDeclarationAttrSet:
    deviceMapper makeNixosConfig deviceDeclarationAttrSet;

  makeHomeManagerConfigurations = deviceDeclarationAttrSet:
    deviceMapper makeHomeManagerConfig deviceDeclarationAttrSet;

  makeDevShells = deviceDeclarationAttrSet: {};
}
