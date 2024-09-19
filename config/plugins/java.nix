{ pkgs, ... }: {
  plugins.lsp.servers.jdt-language-server = {
    enable = true;
    package = pkgs.jdt-language-server;
    cmd = [ "${pkgs.jdt-language-server}/bin/jdtls" ];
  };
}
