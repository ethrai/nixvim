{ pkgs, ... }: {
  plugins.lsp.servers.jdt-language-server = {
    enable = true;
    package = pkgs.jdt-language-server;
    cmd = [ "${pkgs.jdt-language-server}/bin/jdtls" ];
  };
  plugins.nvim-jdtls = {
    enable = true;
    data = "~/.cache/jdtls/workspace";
    configuration = "~/.cache/jdtls/config";
  };
}
