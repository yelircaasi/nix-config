{
  inputs,
  g,
}: let
  makePkgs = system:
    import inputs.nixpkgs {
      inherit system;
      overlays = with inputs;
        [(import rust-overlay)]
        ++ (
          if system == "x86_64-linux"
          then [nixgl.overlay]
          else []
        );
    };

  configWrapper = adHocFunction: {
    system,
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

  makeNixosConfig' = deviceConfig: let
    pkgs = makePkgs deviceConfig.system;
    mypkgs = import ./mypkgs.nix {inherit pkgs;};
  in
    inputs.nixpkgs.lib.nixosSystem {
      system = deviceConfig.system;
      specialArgs = {inherit inputs g deviceConfig mypkgs;};
      modules = [./system/configuration.nix] ++ deviceConfig.additionalModules;
    };

  makeHomeManagerConfig = deviceConfig: configWrapper makeHomeManagerConfig' deviceConfig;

  makeHomeManagerConfig' = deviceConfig: let
    pkgs = makePkgs deviceConfig.system;
    mypkgs = import ./mypkgs.nix {inherit pkgs;};
  in
    inputs.home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = {inherit inputs g deviceConfig mypkgs;};
      modules = [./home/common-from-device-config.nix] ++ deviceConfig.additionalModules;
    };

  deviceMapper = cfgMaker: devCfgs:
    builtins.mapAttrs
    (name: configSet: cfgMaker (configSet // {inherit name;}))
    devCfgs;

  makeNixosConfigurations = deviceDeclarationAttrSet:
    deviceMapper makeNixosConfig deviceDeclarationAttrSet;

  makeHomeManagerConfigurations = deviceDeclarationAttrSet:
    deviceMapper makeHomeManagerConfig deviceDeclarationAttrSet;

  makeDevShells = deviceDeclarationAttrSet: {};
}
