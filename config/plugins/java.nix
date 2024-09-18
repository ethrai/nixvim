{ config, pkgs, inputs, ... }: {
  plugins.lsp.servers.jdt-language-server = {
    enable = true;
    package = pkgs.jdt-language-server;
    cmd = [ "${pkgs.jdt-language-server}/bin/jdtls" ];
  };
  plugins.nvim-jdtls = {
    enable = true;
    data = "${config.home.homeDirectory}/.cache/jdtls/workspace";
    configuration = "${config.home.homeDirectory}/.cache/jdtls/config";
  };
}
