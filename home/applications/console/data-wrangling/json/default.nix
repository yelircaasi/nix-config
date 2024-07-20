{pkgs, ...}: {
  home.packages = with pkgs; [
    #mypkgs.crosshash
    #mypkgs.json-tui
    #mypkgs.groq-cli
    #mypkgs.enjoy-json
    fastgron
    jaq
    jc
    jd-diff-patch
    jj
    jless
    jnv
    jo
    jq
    gojq
    jql
    jqp
    zed #  also provides zq
    jid
  ];
}
