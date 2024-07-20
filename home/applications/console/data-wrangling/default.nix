{pkgs, ...}: {
  imports = [
    ./calculator-conversion-date
    ./compression-decompression
    ./diff
    ./html
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
