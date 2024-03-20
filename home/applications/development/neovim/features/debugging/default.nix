{pkgs, ...}: {
  packages = [];
  plugins = with pkgs; [
    nvim-dap
    nvim-dap-ui # alt: telescope-dap-nvim
    #custom.nx-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
