{
  # config,
  # inputs,
  pkgs,
  # mypkgs,
  g,
  deviceConfig,
  ...
}: let
  rustToolchain = pkgs.rust-bin.stable.latest.default.override {
    extensions = [
      "rust-src"
      "rustfmt"
      "rust-analyzer"
      "clippy"
    ];
  };
in {
  # TODO::prio1: make list of progLangs to import according to boolean switches in deviceConfig
  # use in specific environments only, to avoid clash?
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal =
      [rustToolchain]
      ++ (with pkgs; [
        # Rust development tools
        cargo-watch # Auto-rebuild on file changes # PLACEHOLDERLINK
        cargo-edit # cargo add, cargo rm commands # PLACEHOLDERLINK
        cargo-outdated # Check for outdated dependencies # PLACEHOLDERLINK
        cargo-audit # Security vulnerability scanner # PLACEHOLDERLINK
        cargo-flamegraph # PLACEHOLDERLINK
        cargo-modules # PLACEHOLDERLINK
        bacon # Background rust code checker # PLACEHOLDERLINK

        just # PLACEHOLDERLINK

        # Documentation
        mdbook # For writing documentation # PLACEHOLDERLINK

        # rustfmt # PLACEHOLDERLINK
        # rust-analyzer # PLACEHOLDERLINK
        gcc # PLACEHOLDERLINK
      ]);
  };
}
