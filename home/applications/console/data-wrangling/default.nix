{pkgs, ...}: {
  imports = [
    ./calculator-conversion-date
    ./compression-decompression
    ./diff
    ./html-xml
    ./json
    ./markdown
    ./multi-conversion-other
    ./pdf
    ./plaintext-piping-etc
    ./regex
    ./tabular
    ./tex
    ./toml
    ./yaml
  ];
}
