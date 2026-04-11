{
  config,
  inputs,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: let
  rustToolchain = pkgs.rust-bin.stable.latest.default.override {
    extensions = ["rust-src" "rustfmt" "rust-analyzer" "clippy"];
  };
in {
  # TODO::prio1: make list of progLangs to import according to boolean switches in deviceConfig
  # use in specific environments only, to avoid clash?
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal =
      [rustToolchain]
      ++ (with pkgs; [
        # Rust development tools
        cargo-watch # Auto-rebuild on file changes
        cargo-edit # cargo add, cargo rm commands
        cargo-outdated # Check for outdated dependencies
        cargo-audit # Security vulnerability scanner
        cargo-flamegraph
        cargo-modules
        bacon # Background rust code checker

        just

        # Documentation
        mdbook # For writing documentation

        # rustfmt
        # rust-analyzer
        gcc
      ]);
  };
}
