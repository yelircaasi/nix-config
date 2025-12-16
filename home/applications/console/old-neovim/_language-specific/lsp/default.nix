{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  plugins =
    (with pkgs.vimPlugins; [
      {
        plugin = nvim-lspconfig;
        optional = true;
      }
      {
        plugin = lspkind-nvim;
        optional = true;
      }
      {
        plugin = efmls-configs-nvim;
        optional = true;
      } # diagnosticls-configs-nvim
      {
        plugin = nlsp-settings-nvim;
        optional = true;
      }
      {
        plugin = lspsaga-nvim;
        optional = true;
      }
      {
        plugin = lsp_signature-nvim;
        optional = true;
      }
      {
        plugin = vim-illuminate;
        optional = true;
      }
    ])
    ++ [
      {
        plugin = custom.none-ls;
        optional = true;
      } # installing, but not being found at runtime; try latest version
    ];
  home.packages = with pkgs; [
    vscode-langservers-extracted
  ];
}
