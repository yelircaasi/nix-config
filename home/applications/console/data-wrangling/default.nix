{pkgs, ...}: {
  imports = [
    ./calculator-conversion-date
    ./compression-decompression
    ./html
    ./json
    ./pdf
    ./spreadsheet
  ];
}
