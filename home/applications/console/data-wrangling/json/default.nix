{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      #mypkgs.crosshash
      #mypkgs.json-tui
      #mypkgs.groq-cli
      #mypkgs.enjoy-json
      fastgron
      jaq
      jc
      jd-diff-patch
      # jj TODO: rename because of name conflict
      jless
      jnv
      jo
      jq
      gojq
      jql
      jqp
      super
      jid
    ];
    extended = with pkgs; [
      super # was: zed (provides zq)
    ];
  };
}
