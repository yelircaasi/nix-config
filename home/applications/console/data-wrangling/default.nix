{pkgs, ...}: {
  imports = [
    ./calculator-conversion-date
    ./compression-decompression
    ./html
    ./json
    ./markdown
    ./pdf
    ./spreadsheet
  ];
}
