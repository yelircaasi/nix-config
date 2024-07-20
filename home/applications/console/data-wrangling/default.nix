{pkgs, ...}: {
  imports = [
    ./calculator-conversion-date
    ./compression-decompression
    ./html
    ./json
    ./markdown
    ./plaintext
    ./pdf
    ./spreadsheet
  ];
}
