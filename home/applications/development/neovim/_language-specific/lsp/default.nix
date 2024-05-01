{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs.vimPlugins; [
      nvim-lspconfig
      lspkind-nvim
      efmls-configs-nvim # diagnosticls-configs-nvim
      nlsp-settings-nvim
      lspsaga-nvim
      lsp_signature-nvim
      vim-illuminate
    ])
    ++ (with custom; [
      custom.none-ls # installing, but not being found at runtime; try latest version
    ]);
  home.packages = with pkgs; [
    vscode-langservers-extracted
  ];
}
