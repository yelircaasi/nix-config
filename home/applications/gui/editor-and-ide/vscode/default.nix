{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: let
  nix-vscode-extensions = inputs.nix-vscode-extensions;
in {
  home.packages = [
    # pkgs.vscode
    # (pkgs.vscode-with-extensions.override {
    #   package = pkgs.vscode.fhsWithPackages (ps: with ps; [nixd pyright ruff mypy]);
    #   vscodeExtensions = with pkgs.vscode-extensions;
    #     [
    #       # asvetliakov.vscode-neovim
    #       ms-python.python
    #       ms-python.debugpy
    #       ms-python.vscode-pylance
    #       # ms-python.vscode-python-envs
    #       # andrsdc.base16-themes
    #       nefrob.vscode-just-syntax
    #       tamasfe.even-better-toml
    #       bierner.markdown-mermaid
    #       mechatroner.rainbow-csv
    #       jnoortheen.nix-ide
    #       github.copilot
    #       github.copilot-chat
    #       mattn.lisp
    #       redhat.vscode-yaml
    #       ritwickdey.liveserver
    #       tamasfe.even-better-toml
    #       samuelcolvin.jinjahtml
    #       #  TODO nix-vscode-extensions.andrsdc.base16-themes

    #       # aaronduino.nix-lsp
    #       # mermaidchart.vscode-mermaid-chart
    #       # potatochowon9.darkpdf
    #       # raashida.fixthecode-vs
    #       # sclu1034.justfile
    #       # shahilkumar.docxreader
    #       # shrijaltamrakar.dark-oxygen
    #       # the0807.uv-toolkit
    #       # vcsala.xit-extended
    #       # wenyikun.dodo-reader
    #     ]
    #     ++ (
    #       pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    #         {
    #           name = "base16-themes";
    #           publisher = "andrsdc";
    #           version = "1.4.5";
    #           sha256 = "sha256-molx+cRKSB6os7pDr0U1v/Qbaklps+OvBkZCkSWEvWM=";
    #         }
    #       ]
    #     );
    # })
  ];
  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhsWithPackages (ps: with ps; [nodejs zlib openssl.dev pkg-config]);
    profiles = {
      default = {
        extensions = with pkgs.vscode-extensions;
          [
            # asvetliakov.vscode-neovim
            ms-python.python
            ms-python.debugpy
            ms-python.vscode-pylance
            # ms-python.vscode-python-envs
            # andrsdc.base16-themes
            nefrob.vscode-just-syntax
            tamasfe.even-better-toml
            bierner.markdown-mermaid
            mechatroner.rainbow-csv
            jnoortheen.nix-ide
            github.copilot
            github.copilot-chat
            mattn.lisp
            redhat.vscode-yaml
            ritwickdey.liveserver
            tamasfe.even-better-toml
            samuelcolvin.jinjahtml
            #  TODO nix-vscode-extensions.andrsdc.base16-themes

            # aaronduino.nix-lsp
            # mermaidchart.vscode-mermaid-chart
            # potatochowon9.darkpdf
            # raashida.fixthecode-vs
            # sclu1034.justfile
            # shahilkumar.docxreader
            # shrijaltamrakar.dark-oxygen
            # the0807.uv-toolkit
            # vcsala.xit-extended
            # wenyikun.dodo-reader
          ]
          ++ (
            pkgs.vscode-utils.extensionsFromVscodeMarketplace [
              {
                name = "base16-themes";
                publisher = "andrsdc";
                version = "1.4.5";
                sha256 = "sha256-molx+cRKSB6os7pDr0U1v/Qbaklps+OvBkZCkSWEvWM=";
              }
            ]
          );
      };
    };
  };
  xdg.configFile = {
    "./Code/User/settings.json".source = ./settings.json;
  };
}
